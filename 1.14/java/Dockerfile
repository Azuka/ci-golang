FROM azuka/ci-golang:1.14-extra

RUN set -ex && \
    echo 'deb http://deb.debian.org/debian buster-backports main' \
      > /etc/apt/sources.list.d/buster-backports.list && \

    apt-get update -y && \
    apt-get install -t \
      buster-backports \
      openjdk-8-jdk-headless \
      ca-certificates-java -y
