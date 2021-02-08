#!/bin/bash
#$1:输出压缩包名称,日期格式如:0821
DST=~/.klei/DoNotStarveTogether
DATE=`date '+%m%d'`

#删除dstbackup目录,再新建该目录,复制存档至该目录,打包压缩该目录
rm -rf $DST/dstbackup
mkdir $DST/dstbackup
cp -af $DST/MyDediServer/{Caves,Master}  $DST/dstbackup
#判断$1是否存在,$1为shell传入的第一个变量,存在即手动备份,不存在自动备份
if [ $1 ]; then tar -zcvf /www/wwwroot/cheng/dst/dstbackup$1.tar.gz -C $DST/dstbackup/ {Caves,Master}
else tar -zcvf /www/wwwroot/cheng/dst/dstbackup$DATE.tar.gz -C $DST/dstbackup/ {Caves,Master}; fi
#zip -qr /www/wwwroot/cheng/dst/dstbackup$DATE.zip $DST/dstbackup
