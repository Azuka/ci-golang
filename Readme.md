# ci-golang

Golang images with common dependencies for CI.

## Variants
- `<version>`: plain golang with dependencies:
  - gometalinter
  - glide
  - dep
  - go-junit-report
  - gocov
  - gocov-xml
- `<version>-alpine`: above, but slimmer build based on alpine
- `-extra`: extra dependencies including
  - ruby and bundler (e.g. if you run [Danger](https://github.com/danger/danger))
  - jq

## Tags
- `1.9`, `latest` [Dockerfile](1.9/stretch/Dockerfile)
- `1.9-extra` [Dockerfile](1.9/extra/Dockerfile)
- `1.9-alpine` [Dockerfile](1.9/alpine/Dockerfile)
- `1.9-alpine-extra` [Dockerfile](1.9/alpine/extra/Dockerfile)
- `1.8` [Dockerfile](1.8/stretch/Dockerfile)
- `1.8-extra` [Dockerfile](1.8/extra/Dockerfile)
- `1.8-alpine` [Dockerfile](1.8/alpine/Dockerfile)
- `1.8-alpine-extra` [Dockerfile](1.8/alpine/extra/Dockerfile)
