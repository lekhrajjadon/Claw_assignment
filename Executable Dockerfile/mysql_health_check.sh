#!/bin/bash
TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')
DB_CONTAINER_NAME="mysql-db"

# Check if MySQL is running inside the Docker container
if docker exec $DB_CONTAINER_NAME mysqladmin ping -h localhost --silent; then
    echo "$TIMESTAMP: MySQL is up" >> /var/log/mysql_health.log
else
    echo "$TIMESTAMP: MySQL is down" >> /var/log/mysql_health.log
fi




LOG_FILE="/home/azureuser/mysql_health.log"

if docker exec $DB_CONTAINER_NAME mysqladmin ping -h localhost --silent; then
    echo "$TIMESTAMP: MySQL is up" >> $LOG_FILE
else
    echo "$TIMESTAMP: MySQL is down" >> $LOG_FILE
fi
