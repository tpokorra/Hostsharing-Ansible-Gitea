#!/bin/bash
export HOME=/home/pacs/{{pac}}/users/{{user}}
export PATH=$HOME/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games
export PID=$HOME/var/run/gitea.pid
cd $HOME
exec $HOME/gitea web >$HOME/var/log/gitea.log 2>&1 &
echo $! > $PID
