FROM golang:1.12-alpine3.9

ARG GOLANG_CI_LINT_VERSION=1.15.0

RUN set -ex; \
    apk add --update git; \
    curl -L https://git.io/vp6lP | sh; \
    mv /go/bin/* /usr/local/go/bin/; \
    wget -O - -q https://install.goreleaser.com/github.com/golangci/golangci-lint.sh | sh -s v$GOLANG_CI_LINT_VERSION
