# HoneyPy

1. Change ssh port on host
- vim /etc/ssh/sshd_config
- service ssh restart

2. Run SSH docker
- docker build -t honeySSHimg .
- docker run -d -p 22:22  --name honeySSH  --log-driver=syslog --log-opt tag=container01  honeySSHimg

3. test
	echo 'lkjhgfedrqw' | ssh root@localhost

	^_-
	
	
TODO:

Logging:
- [ ] forward container-local syslog messages to host syslog
- [ ] forward host syslogs to log server
- [ ] Deploy logstash on log server for logs aggregation
- [ ] secure connexion between loghost & log server (tls)
- [ ] database for uploaded shellcodes, malwares (sqlite)
- [ ] message queue // logrotates (rabbitMQ, redis ..)

Reporting:
- [ ] Web interface (kibana)
- [ ] automaticaly map IP addresses
- [ ] elasticsearch for data analytics

Apps:
- [ ] ssh with scp feature
- [ ] open SNMP
- [ ] databases with weak passwords (sql, mongoDB, ...)
- [ ] vulnerable web applications
- [ ] port 502 for easy DOS
- [ ] FTP

Security:
- [ ] enable two factor authentication (ssh + google authenticator)
- [ ] container isolation
- [ ] rate limit
