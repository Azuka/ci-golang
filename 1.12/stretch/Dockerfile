FROM golang:1.12-stretch

ARG GOLANG_CI_LINT_VERSION=1.15.0

RUN set -ex; \
    go get -u -v -t \
        github.com/Masterminds/glide \
        github.com/golang/dep/cmd/dep \
        github.com/jstemmer/go-junit-report \
        github.com/axw/gocov/gocov \
        github.com/AlekSi/gocov-xml \
    ; \
    curl -L https://git.io/vp6lP | sh; \
    mv /go/bin/* /usr/local/go/bin/; \
    curl -sfL https://install.goreleaser.com/github.com/golangci/golangci-lint.sh | sh -s -- -b /usr/local/bin v$GOLANG_CI_LINT_VERSION
