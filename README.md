# HoneyPy

1. Change ssh port on host
- vim /etc/ssh/sshd_config
- service ssh restart

2. Run SSH docker
- docker build -t honeySSHimg .
- docker run -d -p 22:22 --name honeySSH honeySSHimg

3. test
	echo 'lkjhgfedrqw' | ssh root@localhost

	^_-
