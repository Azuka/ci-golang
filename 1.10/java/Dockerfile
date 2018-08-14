FROM azuka/ci-golang:1.10-extra

RUN set -ex && \
    echo 'deb http://deb.debian.org/debian stretch-backports main' \
      > /etc/apt/sources.list.d/stretch-backports.list && \

    apt-get update -y && \
    apt-get install -t \
      stretch-backports \
      openjdk-8-jdk-headless \
      ca-certificates-java -y
