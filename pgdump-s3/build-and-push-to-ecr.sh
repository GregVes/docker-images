#!/bin/sh

TAG=$1

aws ecr-public get-login-password --region us-east-1 --profile perso | docker login --username AWS --password-stdin public.ecr.aws/u0e6y9i3

docker build -t pg-s3-backup .

docker tag pg-s3-backup public.ecr.aws/u0e6y9i3/pg-s3-backup:$TAG

docker push public.ecr.aws/u0e6y9i3/pg-s3-backup:$TAG