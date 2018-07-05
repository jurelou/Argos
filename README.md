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
-	secure connexion between loghost & log server (tls)
-	database for uploaded shelcodes, malwares (sqlite)
-	message queue // logrotates (rabbitMQ, redis ..)

Apps:
-	open SNMP
-	databases with weak passwords (sql, mongoDB, ...)
-	vulnerable web applications
	
