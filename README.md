# Argos
Argus Panoptes or Argos (Ancient Greek: Ἄργος) is a many-eyed giant in Greek mythology. The figure is known for having spawned the saying "the eyes of Argus", as in to be "followed by", "trailed by", "watched by", et cetera the eyes; the saying is used to describe being subject to strict scrutiny in one's actions to an invasive, distressing degree.

![Argos](https://static.comicvine.com/uploads/scale_small/11/117763/3094291-mightyherc13807.jpg)

# Architecture
!
![Architecture](https://github.com/jurelou/HoneyPy/blob/master/img/arch.png)

# Kibana visualisation

![Architecture](https://github.com/jurelou/HoneyPy/blob/master/img/kibana_1.png)
![Architecture](https://github.com/jurelou/HoneyPy/blob/master/img/kibana_2.png)
![Architecture](https://github.com/jurelou/HoneyPy/blob/master/img/kibana_3.png)

Install new poller:
```shell
./add_poller 127.0.0.1 my-super-slave
```

# TODO

## Deployment:

- [x] forward container syslog messages to log server
- [x] hook syscalls
- [x] Deploy logstash
- [x] log docker diffs for compromised machines ( and hosts?)
- [x] database for uploaded shellcodes, malwares (sqlite)
- [ ] message queue // logrotates (rabbitMQ, redis ..)

## Events:
- [x] SMB
- [x] ssh server
- [ ] scp, sftp,   
- [ ] MDNS, DropBox, lansync ?
- [ ] databases with weak passwords (sql, mongoDB, ...)
- [ ] NFqueue 
- [ ] TOR website
- [ ]  cuckoo (malware analysis)

## Core:
- [x] tls / pki
- [ ] container isolation
- [ ] dedicated storage server
