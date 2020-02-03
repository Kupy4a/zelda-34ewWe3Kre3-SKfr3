#!/bin/sh
# while nc -z -v -w30 db 5432; do 
# echo "WAITFORYOURDESTINY"
# sleep 1; 
# done
knex migrate:latest 
echo "Starting server......."
knex seed:run
node server.js

