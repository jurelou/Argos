if [ "$EUID" -ne 0 ]
  then echo "use sudo :)"
  exit
fi

#create user
adduser louis
usermod -aG sudo louis
cat /dev/zero | ssh-keygen -q -N ""


#change ssh port
sed -i 's/^Port .*/Port 2242/' /etc/ssh/sshd_config
service ssh restart

#install docker
apt-get update
apt-get install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
apt-key fingerprint 0EBFCD88
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
apt-get update
apt-get install docker-ce
groupadd docker
usermod -aG docker louis

#####
# su - louis
####

#clone git repo
cd /opt && git clone https://github.com/jurelou/HoneyPy.git

#filebeat install
curl -L -O https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-6.3.1-amd64.deb
dpkg -i filebeat-6.3.1-amd64.deb

#filebeat config
cd HoneyPy
mkdir -p /var/log/beat
cat ./config/filebeat.yml > /etc/filebeat/filebeat.yml
service filebeat restart

#run ssh server
docker build -t honeysshimg ./ssh
docker run -d --rm --name honeySSH -p 22:2242 -v /var/log/beat:/var/ honeysshimg
