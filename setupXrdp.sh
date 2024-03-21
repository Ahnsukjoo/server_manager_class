yum -y install epel-release xrdp tigervnc-server
systemctl enable xrdp.service

firewall-cmd --permanent --zone=public --add-port=3389/tcp

reboot