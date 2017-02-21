app=mytest
mv $app "$app"_bk
wget ftp://192.168.10.55/$app
RET=$?
chmod +x $app
sync
if [ 0 == $RET ];then
reboot
fi
