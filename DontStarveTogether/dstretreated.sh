#!/bin/bash
#DST:dst directory
DST=~/.klei/DoNotStarveTogether

#删除存档,解压备份存档至dstbackup,复制dstbackup至存档目录
rm -rf $DST/MyDediServer/{Caves,Master}
if [ $1 ]; then tar -zxvf /www/wwwroot/cheng/dst/dstbackup$1.tar.gz -C $DST/dstbackup/ && cp -af $DST/dstbackup/{Caves,Master} $DST/MyDediServer
else cp -af $DST/dstbackup/{Caves,Master} $DST/MyDediServer; fi
