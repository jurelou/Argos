# HoneyPy
![Argos](https://static.comicvine.com/uploads/scale_small/11/117763/3094291-mightyherc13807.jpg)

# Architecture
!
![Architecture](https://github.com/jurelou/HoneyPy/blob/master/img/arch.png)

Install new poller:
```shell
./add_poller 127.0.0.1 my-super-slave
```

# TODO

## Deployment:

- [x] ansible pollers deployment / patch
- [ ] ansible in docker

## Logging:

- [x] forward container syslog messages to log server
- [ ] kernel module keylogger
- [ ] hook syscalls
- [x] Deploy logstash on log server for logs aggregation
- [x] log docker diffs for compromised machines ( and hosts?)
- [ ] database for uploaded shellcodes, malwares (sqlite)
- [ ] message queue // logrotates (rabbitMQ, redis ..)

## Reporting:
- [x] Web interface (kibana)
- [x] automaticaly map IP addresses to region
- [ ] Attackers machine's signature
- [x] elasticsearch for data indexing

## Apps:
- [ ] SMB
- [x] ssh server
- [ ] scp, sftp,   
- [ ] MDNS, DropBox, lansync ?
- [ ] SNMP (v1, v2)
- [ ] databases with weak passwords (sql, mongoDB, ...)
- [ ] vulnerable web applications
- [ ] port 502 for easy DOS

## Core:
- [x] HTTPS / pki
- [ ] supervisord for multiple services inside docker nor docker-compose
- [ ] Dynamically spawn containers for each connections
- [ ] rsyslog secure connection  with machine-certificates
- [ ] container isolation
- [ ] rate limit
- [ ] dedicated storage server
