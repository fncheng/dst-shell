#!/bin/bash
#$1:输出压缩包名称,日期格式如:0821
Minecraft=/home/cheng/minecraft
DATE=`date '+%m%d'`

rm -rf $Minecraft/mcbackup
mkdir $Minecraft/mcbackup
cp -af $Minecraft/worlds/  $Minecraft/mcbackup
#判断$1是否存在,$1为shell传入的第一个变量,存在即手动备份,不存在自动备份
if [ $1 ]; then zip -r /home/cheng/Backup/mcbackup$1.zip $Minecraft/mcbackup/worlds/
else zip -r /home/cheng/Backup/mcbackup$DATE.zip $Minecraft/mcbackup/worlds; fi
