# HoneyPy

1. Change ssh port on host

`sed -i 's/^#?Port .*/Port 2222/' /etc/ssh/sshd_config`

`service ssh restart`

2. Run SSH docker

`docker build -t honeySSHimg .`

`docker run -d -p 22:22  --name honeySSH  --log-driver=syslog --log-opt tag=container01  honeySSHimg`

3. test

`echo 'lkjhgfedrqw' | ssh root@localhost`


^_-
	
	
TODO:

Logging:
- [ ] forward container-local syslog messages to log server
- [ ] Deploy logstash on log server for logs aggregation
- [ ] log docker diffs for compromised machines
- [ ] secure connexion between loghost & log server (tls)
- [ ] database for uploaded shellcodes, malwares (sqlite)
- [ ] message queue // logrotates (rabbitMQ, redis ..)
- [ ] log host machine for self-compromised machine

Reporting:
- [ ] Web interface (kibana)
- [ ] automaticaly map IP addresses to region
- [ ] Attackers machine's signature
- [ ] elasticsearch for data indexing

Apps:
- [ ] ssh with scp feature
- [ ] open SNMP
- [ ] databases with weak passwords (sql, mongoDB, ...)
- [ ] vulnerable web applications
- [ ] port 502 for easy DOS
- [ ] FTP

Security:
- [ ] Dynamically spawn environments for each connections
- [ ] enable two factor authentication (ssh + google authenticator)
- [ ] container isolation
- [ ] rate limit
