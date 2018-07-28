# Argos
Argus Panoptes or Argos was a hundred-eyed giant in Greek mythology. He was a giant, the son of Arestor, whose name "Panoptes" meant "the all-seeing one". He was a servant of Hera; one of the tasks that were given to him was to slay the fearsome monster Echidna, wife of Typhon, which he successfully completed. However, his main task, at Hera's request, was to guard Io, a nymph that Zeus was involved with. Zeus, in his efforts to approach Io, told Hermes to disguise himself as a shepherd and make Argus go to sleep. As soon as he fell asleep, Hermes killed him with a stone.

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
