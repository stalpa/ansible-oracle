# Настраиваем VNC
vncpasswd
echo "VNCSERVERS=\"2:oracle\"" >> /etc/sysconfig/vncservers
echo "VNCSERVERARGS[2]=\"-geometry 1024x768\"" >> /etc/sysconfig/vncservers
/sbin/service vncserver start
/sbin/service vncserver stop
mkdir /home/oracle/.vnc
echo "#!/bin/sh" > /home/oracle/.vnc/xstartup
echo "# Add the following line to ensure you always have an xterm available." >> /home/oracle/.vnc/xstartup
echo "#( while true ; do xterm ; done ) &" >> /home/oracle/.vnc/xstartup
echo "" >> /home/oracle/.vnc/xstartup
echo "# Uncomment the following two lines for normal desktop:" >> /home/oracle/.vnc/xstartup
echo "unset SESSION_MANAGER" >> /home/oracle/.vnc/xstartup
echo "exec /etc/X11/xinit/xinitrc" >> /home/oracle/.vnc/xstartup
echo "" >> /home/oracle/.vnc/xstartup
echo "[ -x /etc/vnc/xstartup ] && exec /etc/vnc/xstartup" >> /home/oracle/.vnc/xstartup
echo "[ -r $HOME/.Xresources ] && xrdb $HOME/.Xresources" >> /home/oracle/.vnc/xstartup
echo "xsetroot -solid grey" >> /home/oracle/.vnc/xstartup
echo "vncconfig -iconic &" >> /home/oracle/.vnc/xstartup
echo "xterm -geometry 80x24+10+10 -ls -title "$VNCDESKTOP Desktop" &" >> /home/oracle/.vnc/xstartup
echo "twm &" >> /home/oracle/.vnc/xstartup
chown -R oracle:oinstall /home/oracle/
/sbin/service vncserver start
/sbin/chkconfig vncserver on