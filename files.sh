#!/bin/bash
#ramsal

USER="myuser"
KEY="/home/user/.ssh/mykey"
PORT="22"
SERVER="domain.tld"
SOURCE="/home/service/"
TARGET="/home/user/backup/data"
LOG="/home/user/backup/$current_date.log"

rsync -avz -L --progress -e "ssh -i ${KEY} -p $PORT" $USER@$SERVER:$SOURCE $TARGET >> $LOG 2>&1 
