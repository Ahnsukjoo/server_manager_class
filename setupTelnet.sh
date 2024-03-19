yum -y install telnet
yum -y install telnet-server

systemctl enable telnet.socket
systemctl start telnet.socket

firewall-cmd --permenant --zone=public --add-port=23/tcp
firewall-cmd --reload

# if you want to change telnet.socket's port
# go /usr/lib/systemd/system/telnet.socket and change port