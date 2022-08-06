FROM debian:bullseye-slim

RUN apt update && apt-get install curl ca-certificates gnupg zip -y

# install AWS CLI
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
    unzip awscliv2.zip && \
    ./aws/install

# Install postgres client
RUN curl https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add -
RUN sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt bullseye-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
RUN  apt update && apt install postgresql-client-12 -y

RUN mkdir /usr/src/app
COPY pgdump-s3.sh /usr/src/app

ENTRYPOINT [ "sh", "/usr/src/app/pgdump-s3.sh" ]