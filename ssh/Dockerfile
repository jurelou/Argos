FROM centos:latest

MAINTAINER redteam

RUN yum update -y && yum upgrade -y
RUN yum install -y unzip wget curl git
RUN yum install -y epel-release
RUN yum clean all
RUN yum -y install gcc
RUN yum install -y python-devel
RUN yum install -y libffi-devel
RUN yum install -y openssl-devel
RUN yum install -y python-pip
RUN pip install paramiko
RUN pip install --upgrade setuptools
RUN pip install python-gssapi==0.6.0

ENV HOME /root

ADD ./server.py /root
ADD ./test_rsa.key /root

WORKDIR /root

CMD ["/bin/python", "/root/server.py", "/root/test_rsa.key"]
