autoServerSettings = false

yum -y install vsftpd

# anonymous_enable=YES
# chroot_list_enable=YES
# chroot_list_file=/etc/vsftpd/chroot_list
# listen=YES

if [autoServerSettings == true]; then
    mv ./confs/vsftpd/vsftpd.conf /etc/vsftpd/vsftpd.conf
    mv ./confs/vsftpd/chroot_list /etc/vsftpd/chroot_list
else
    nano /etc/vsftpd/vsftpd.conf
    nano /etc/vsftpd/chroot_list
fi


firewall-cmd --permanent --add-service=ftp
firewall-cmd --permanent --add-port=20/tcp
firewall-cmd --permanent --add-port=21/tcp
firewall-cmd --reload

# SELINUX=disabled
if [autoServerSettings == true]; then
    mv ./confs/vsftpd/config /etc/selinux/config
else
    nano /etc/selinux/config
fi

setsebool -P ftpd_full_access on

systemctl enable vsftpd
systemctl restart vsftpd

# optional del root
# nano /etc/vsftpd/ftpusers
# nano /etc/vsftpd/user_list

# optional 
# sudo chown -R sabrina /home/sabrina/


if [autoServerSettings == true]; then
    mv ./confs/vsftpd/ftpusers /etc/vsftpd/ftpusers
    mv ./confs/vsftpd/user_list /etc/vsftpd/user_list
    sudo chown -R sabrina /home/sabrina/
fi