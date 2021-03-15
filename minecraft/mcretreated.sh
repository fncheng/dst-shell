#!/bin/bash
Minecraft=/home/cheng/minecraft

rm -rf $Minecraft/mcbackup
if [ $1 ];then unzip /home/cheng/Bakcup/mcbackup$1 $Minecraft
#解压之后将worlds文件夹复制到minecraft目录下
cp -af $Minectaft/mcbackup/worlds $Minecraft
