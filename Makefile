IMAGE_NAME=azuka/ci-golang
GOLANG_CI_LINT_VERSION=1.40.1

.PHONY:all
all: 1.15 1.16

.PHONY: 1.15
1.15:
	docker build --build-arg GOLANG_CI_LINT_VERSION=$(GOLANG_CI_LINT_VERSION) --pull -t $(IMAGE_NAME):1.15 1.15/buster
	docker build -t $(IMAGE_NAME):1.15-extra 1.15/extra
	docker build -t $(IMAGE_NAME):1.15-node 1.15/node
	docker build --build-arg GOLANG_CI_LINT_VERSION=$(GOLANG_CI_LINT_VERSION) --pull -t $(IMAGE_NAME):1.15-alpine 1.15/alpine
	docker build -t $(IMAGE_NAME):1.15-alpine-extra 1.15/alpine/extra
	docker build -t $(IMAGE_NAME):1.15-alpine-node 1.15/alpine/node

.PHONY: 1.16
1.16:
	docker build --build-arg GOLANG_CI_LINT_VERSION=$(GOLANG_CI_LINT_VERSION) --pull -t $(IMAGE_NAME):latest -t $(IMAGE_NAME):1.16 1.16/buster
	docker build -t $(IMAGE_NAME):1.16-extra 1.16/extra
	docker build -t $(IMAGE_NAME):1.16-node 1.16/node
	docker build --build-arg GOLANG_CI_LINT_VERSION=$(GOLANG_CI_LINT_VERSION) --pull -t $(IMAGE_NAME):1.16-alpine 1.16/alpine
	docker build -t $(IMAGE_NAME):1.16-alpine-extra 1.16/alpine/extra
	docker build -t $(IMAGE_NAME):1.16-alpine-node 1.16/alpine/node

.PHONY: push
push:
	docker image ls --format '{{.Repository }}:{{.Tag}}'| grep $(IMAGE_NAME) | \
	cut -d' ' -f1 | xargs -n1 docker push
