#!/bin/bash
#$1:输出压缩包名称,日期格式如:0821
DST=~/.klei/DoNotStarveTogether
DATE=`date '+%m%d'`
#备份存储的目录
BACKUP=~/www/wwwroot/cheng/dst

#删除dstbackup目录,再新建该目录,复制存档至该目录,打包压缩该目录
rm -rf $DST/dstbackup
mkdir $DST/dstbackup
cp -af $DST/MyDediServer/{Caves,Master}  $DST/dstbackup
#判断$1是否存在,$1为shell传入的第一个变量,存在即手动备份,不存在自动备份
if [ $1 ]; then tar -zcvf $BACKUP/dstbackup$1.tar.gz -C $DST/dstbackup/ {Caves,Master}
else tar -zcvf $BACKUP/dstbackup$DATE.tar.gz -C $DST/dstbackup/ {Caves,Master}; fi
#zip -qr $BACKUP/dstbackup$DATE.zip $DST/dstbackup
