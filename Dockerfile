FROM ruby:2.3.1-slim
MAINTAINER Dylan Waits <dylan@waits.io>

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        build-essential postgresql postgresql-contrib libpq-dev \
        nodejs openjdk-7-jre zopfli && \
    rm -rf /var/lib/apt/lists/*
ADD pg_hba.conf /etc/postgresql/9.4/main/pg_hba.conf
