# ci-golang

Golang images with common dependencies for CI.

Built automatically every week with GitHub Actions.

## Variants
- `<version>`: plain golang with dependencies:
  - gotestsum
  - golangci-lint
  - go-junit-report
  - gocov
  - gocov-xml
- `<version>-alpine`: above, but slimmer build based on alpine
- `-extra`: extra dependencies including
  - ruby and bundler (e.g. if you run [Danger](https://github.com/danger/danger))
  - jq

## Tags
- `1.16`, `latest` [Dockerfile](1.16/stretch/Dockerfile)
- `1.16-extra` [Dockerfile](1.16/extra/Dockerfile)
- `1.16-node` [Dockerfile](1.16/node/Dockerfile)
- `1.16-alpine` [Dockerfile](1.16/alpine/Dockerfile)
- `1.16-alpine-extra` [Dockerfile](1.16/alpine/extra/Dockerfile)
- `1.16-alpine-node` [Dockerfile](1.16/alpine/node/Dockerfile)
- `1.15` [Dockerfile](1.15/stretch/Dockerfile)
- `1.15-extra` [Dockerfile](1.15/extra/Dockerfile)
- `1.15-node` [Dockerfile](1.15/node/Dockerfile)
- `1.15-alpine` [Dockerfile](1.15/alpine/Dockerfile)
- `1.15-alpine-extra` [Dockerfile](1.15/alpine/extra/Dockerfile)
- `1.15-alpine-node` [Dockerfile](1.15/alpine/node/Dockerfile)
