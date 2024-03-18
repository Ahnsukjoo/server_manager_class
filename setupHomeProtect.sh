# ssh home protect
chmod 711 /
chmod 711 /home


#vsftpd home protect
yum -y install vsftpd

read -p "Find #chroot_local_user=YES\nDelete #"

sudo vi /etc/vsftpd/vsftpd.conf
systemctl restart vsftpd