FROM azuka/ci-golang:1.16-extra

RUN set -ex; \
    curl -sL https://deb.nodesource.com/setup_14.x | bash -; \
    apt-get install -y nodejs apt-transport-https; \
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -; \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list; \
    apt-get update; \
    apt-get -y install yarn
