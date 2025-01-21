# export $(grep -v '^#' /usr/src/app/.env | xargs)
#! /bin/bash
. /usr/src/app/.env
/usr/local/bin/python /usr/src/app/manage.py testing
