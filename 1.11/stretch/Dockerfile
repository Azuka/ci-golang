FROM golang:1.11-stretch

RUN set -ex; \
    go get -u -v -t \
        github.com/Masterminds/glide \
        github.com/golang/dep/cmd/dep \
        github.com/jstemmer/go-junit-report \
        github.com/axw/gocov/gocov \
        github.com/AlekSi/gocov-xml \
    ; \
    curl -L https://git.io/vp6lP | sh; \
    mv /go/bin/* /usr/local/go/bin/
