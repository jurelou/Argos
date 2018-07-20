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

## Logging:

- [x] forward container syslog messages to log server
- [x] hook syscalls
- [x] Deploy logstash on log server for logs aggregation
- [x] log docker diffs for compromised machines ( and hosts?)
- [x] database for uploaded shellcodes, malwares (sqlite)
- [ ] message queue // logrotates (rabbitMQ, redis ..)

## Reporting:
- [x] Web interface (kibana)
- [x] automaticaly map IP addresses to region
- [ ] Attackers machine's signature
- [x] elasticsearch

## Events:
- [x] SMB
- [x] ssh server
- [ ] scp, sftp,   
- [ ] MDNS, DropBox, lansync ?
- [ ] databases with weak passwords (sql, mongoDB, ...)
- [ ] NFqueue 
- [ ] TOR website

## Core:
- [x] HTTPS / pki
- [ ] container isolation
- [ ] dedicated storage server
