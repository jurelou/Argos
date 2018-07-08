# HoneyPy
^_-
	
TODO:

Deployment:

- [ ] use ansible
- [ ] update slaves config from master (smtp ?)

Logging:

- [x] forward container syslog messages to log server
- [ ] kernel module keylogger
- [ ] hook syscalls
- [ ] Deploy logstash on log server for logs aggregation
- [ ] log docker diffs for compromised machines ( and hosts?)
- [ ] database for uploaded shellcodes, malwares (sqlite)
- [ ] message queue // logrotates (rabbitMQ, redis ..)

Reporting:
- [x] Web interface (kibana)
- [ ] automaticaly map IP addresses to region
- [ ] Attackers machine's signature
- [x] elasticsearch for data indexing

Apps:
- [x] ssh server
- [ ] scp, sftp,   
- [ ] MDNS, DropBox, lansync ?
- [ ] open SNMP
- [ ] databases with weak passwords (sql, mongoDB, ...)
- [ ] vulnerable web applications
- [ ] port 502 for easy DOS
- [ ] FTP

Core:
- [ ] supervisord for multiple services
- [ ] Dynamically spawn containers for each connections
- [ ] rsyslog secure connection  with machine-certificates
- [ ] container isolation
- [ ] rate limit
