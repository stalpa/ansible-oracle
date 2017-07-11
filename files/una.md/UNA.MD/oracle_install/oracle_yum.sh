#/bin/bash
LIST="
binutils-2.17.50.0.6
compat-libstdc++-33-3.2.3
elfutils-libelf-0.125
elfutils-libelf-devel-0.125
elfutils-libelf-devel-static-0.125
gcc-4.1.2
gcc-c++-4.1.2
glibc-2.5-24
glibc-common-2.5
glibc-devel-2.5
glibc-headers-2.5
kernel-headers-2.6.18
ksh-20060214
libaio-0.3.106
libaio-devel-0.3.106 
libgcc-4.1.2
libgomp-4.1.2
libstdc++-4.1.2 
libstdc++-devel-4.1.2
make-3.81
numactl-devel-0.9.8.i386
sysstat-7.0.2
unixODBC-2.2.11
unixODBC-devel-2.2.11"
for i in $LIST;do yum -y install $i;done
echo "Installation completed"
logger $(date) 
logger "Install Compleeted"

