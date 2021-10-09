FROM azuka/ci-golang:1.17

RUN set -ex; \
    apt-get update && apt-get install -y jq ruby-full; \
    gem install bundler
