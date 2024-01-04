#!/bin/ash
# exits if error happens
set -e

while ! nc -z pgdb $POSTGRES_PORT
do
  echo 'Waiting for postgres...'
  sleep 1
done;


echo "Apply db migration"
python manage.py migrate

# execute additionnal cmd passed by parameter
exec "$@"