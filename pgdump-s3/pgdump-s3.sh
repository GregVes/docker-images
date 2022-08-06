#!/bin/sh

FILE=${PG_DB}-$(date '+%Y-%m-%d').psql

echo "Creating backup of ${PG_DB} database"
PGPASSWORD=$PG_PASSWORD pg_dump -U $PG_USER -h $PG_HOST $PG_DB > $FILE
echo "Backup created"

echo "Storing backup to AWS S3"
aws s3 cp $FILE s3://$AWS_S3_BUCKET/$FILE
echo "Backup stored to AWS S3"

exit 0