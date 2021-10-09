FROM azuka/ci-golang:1.17-alpine

RUN set -ex; \
  apk update && apk upgrade && apk --update add \
  ruby ruby-irb ruby-rake ruby-io-console ruby-bigdecimal ruby-json ruby-bundler \
  libstdc++ tzdata ca-certificates jq make \
  &&  echo 'gem: --no-document' > /etc/gemrc \
  && gem install bundler
