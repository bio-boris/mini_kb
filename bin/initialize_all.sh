#!/bin/bash
#
# sleep for another 5 seconds to give mysql and mongo more time to come up
# connect to mysql and load it with mysql data, do the same for mongodb
#

sleep 5 && \
echo "Loading mysql data..." && \
mysql -h ci-mysql -u root --max_allowed_packet=64M --init-command="SET SESSION wait_timeout=30" -e "source /tmp/mysqldump" && \
echo "Loading mongodb data..." && \
mongorestore --host ci-mongo /tmp/ws.mongodump