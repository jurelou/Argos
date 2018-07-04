FROM centos:centos7
RUN yum -y update && yum clean all &&\
	yum -y install openssh-server passwd sudo rsyslog && yum clean all && \
	yum -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm &&\
	yum clean all

#net
RUN echo 'HOSTNAME=docker' >>/etc/sysconfig/network

# rsyslogd
ADD rsyslog.d/remote.conf /etc/rsyslog.d/remote.conf
RUN sed -i 's/^\$ModLoad imjournal/#\$ModLoad imjournal/' /etc/rsyslog.conf
RUN sed -i 's/^\$OmitLocalLogging on/\$OmitLocalLogging off/' /etc/rsyslog.conf
RUN sed -i 's/^\$IMJournalStateFile imjournal.state/#\$IMJournalStateFile imjournal.state/' /etc/rsyslog.conf
RUN sed -i 's/^\$SystemLogSocketName/#\$SystemLogSocketName/' /etc/rsyslog.d/listen.conf

# sshd
ADD ssh.d/docker_id_rsa.pub /var/preserve/id_rsa.pub
RUN mkdir /var/run/sshd
RUN ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key -N '' 
RUN echo 'root:lkjhgfedrqw' | chpasswd
RUN sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

# init
RUN mkdir -p /opt/bin
RUN mkdir -p /opt/run
ADD init/init.sh /opt/bin/init.sh
RUN chmod 755 /opt/bin/*
RUN chmod 755 /opt/run/*

ENTRYPOINT ["/opt/bin/init.sh"]
