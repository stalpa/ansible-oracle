#!/bin/bash
DATE=$(date +%F_%H-%M)
Path=/opt/db/oracle/product/11g
Path1=/opt/db/admin/{{ oracle_db_name }}/dpdump
Path2=/backup
Schemas="{{ oracle_db_name }} construct un4public"

export ORACLE_HOME=$Path
export ORACLE_SID={{ oracle_db_name }}

export GZIP=-9

for i in $Schemas
do
    /bin/rm -rf $Path1/${i}*
    $Path/bin/expdp \'sys/sys@$ORACLE_SID as sysdba\' schemas=${i} dumpfile=${i}_$DATE.dmp logfile=${i}_$DATE.log
    /bin/tar cvzf $Path2/${i}_$DATE.tgz $Path1/${i}_*
   echo "insert into un4public.un4dplog(dt, schema, filename) values(sysdate, '${i}', '${arch_name}/${i}_${DATE}.tgz');" | $ORACLE_HOME/bin/sqlplus "sys/sys@${ORACLE_SID} as sysdba" #| iconv -f WINDOWS-1251 -t UTF-8

done
