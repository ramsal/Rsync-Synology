#!/bin/bash
#ramsal
USER="myuser"
KEY="/home/user/.ssh/mykey"
PORT="22"
SERVER="domain.tld"
TARGET="/home/user/backup/database"
DB_USER="user"
DB_PASSWORD="pass"
DATABASE="db"
ssh -p ${PORT} -i ${KEY} ${USER}@${SERVER} "mysqldump -u ${DB_USER} -p${DB_PASSWORD} ${DATABASE}" > "${TARGET}/${DATABASE}.sql"
