# Docker-images

A collection of Docker images

## Pgdump s3

A Debian image - loaded with the AWS CLI and the PostgreSQL client - running a bash script backing up a DB to an AWS S3 bucket.

The script expects the following env vars:

* AWS_ACCESS_KEY_ID
* AWS_SECRET_ACCESS_KEY
* AWS_S3_BUCKET
* AWS_S3_OBJECT
* DB_HOST
* DB_USER
* DB_PASSWORD
* DB_NAME

If you wish to run the container in a k8s environment: `public.ecr.aws/u0e6y9i3/pg-s3-backup:v1`
