FROM golang:1.16-alpine

ARG GOLANG_CI_LINT_VERSION=1.30.0

RUN set -ex; \
    apk add --update git curl tzdata; \
    echo \
        github.com/jstemmer/go-junit-report@latest \
        github.com/axw/gocov/gocov@latest \
        gotest.tools/gotestsum@latest \
        github.com/AlekSi/gocov-xml@latest | \
        xargs -n1 go install -v \
    && \
    mv /go/bin/* /usr/local/go/bin/; \
    wget -O - -q https://install.goreleaser.com/github.com/golangci/golangci-lint.sh | sh -s v$GOLANG_CI_LINT_VERSION
