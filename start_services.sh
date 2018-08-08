#!/bin/bash
#

cd /home/user/example.com/
git --git-dir=/home/user/example.com/.git pull origin master
chown -R user:user /home/user/example.com/
sleep 60
sudo /home/user/example.com/containthedocs-build.sh

cd /home/user/example.com/images
sudo /home/user/example.com/images/doit.sh
