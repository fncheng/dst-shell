#!/bin/bash
#quit master dst server and update server
screen -dr master -X quit
screen_name="master"
/home/steamcmd/steamcmd.sh +login anonymous +force_install_dir /home/dstserver +app_update 343050 +quit
sleep 10
screen -dmS $screen_name
cmd="./run_dedicated_servers.sh"
#向screen发送$cmd命令
screen -X -S $screen_name -p 0 -X stuff $cmd
screen -x -S $screen_name -p 0 -X stuff $'\n'