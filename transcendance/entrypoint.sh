#!/bin/ash
# exits if error happens
set -e


until psql -h postgres -U postgres -d postgres -c "select 1" > /dev/null 2>&1; do
  echo "Waiting for postgres server..."
  sleep 1
done

echo "Apply db migration"
python manage.py migrate

# execute additionnal cmd passed by parameter
exec "$@"