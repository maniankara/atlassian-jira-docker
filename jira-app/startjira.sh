#!/bin/bash

echo "Waiting for connecting: jira-db:3306";
while ! nc -z jira-db 3306; do sleep 3; done;

echo "Connection passed, executing mysql scripts";

mysql -h jira-db -uroot -p$MYSQL_ROOT_PASSWORD -e "drop database $MYSQL_DATABASE; CREATE DATABASE $MYSQL_DATABASE CHARACTER SET utf8 COLLATE utf8_bin;"

/docker-entrypoint.sh jira
