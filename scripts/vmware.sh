cd /home/vagrant
wget http://192.168.0.110:8000/linux.iso
cd /tmp
mkdir -p /mnt/cdrom
mount -o loop /home/vagrant/linux.iso /mnt/cdrom
tar zxvf /mnt/cdrom/VMwareTools-*.tar.gz -C /tmp/
/tmp/vmware-tools-distrib/vmware-install.pl -d
umount /mnt/cdrom
rm /home/vagrant/linux.iso
