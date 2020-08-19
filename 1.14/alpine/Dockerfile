FROM golang:1.14-alpine

ARG GOLANG_CI_LINT_VERSION=1.17.1

RUN set -ex; \
    apk add --update git curl tzdata; \
    curl -L https://git.io/vp6lP | sh; \
    mv /go/bin/* /usr/local/go/bin/; \
    wget -O - -q https://install.goreleaser.com/github.com/golangci/golangci-lint.sh | sh -s v$GOLANG_CI_LINT_VERSION
