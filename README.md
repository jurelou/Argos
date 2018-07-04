# HoneyPy

1. Change ssh port on host
	vim /etc/ssh/sshd_config
	service ssh restart

2. Run SSH docker
	docker build -t honeySSH .
	docker run -d -p 22:22 honeySSH
