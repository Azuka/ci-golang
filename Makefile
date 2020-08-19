IMAGE_NAME=azuka/ci-golang
GOLANG_CI_LINT_VERSION=1.30.0

.PHONY:all
all: 1.13 1.14 1.15

.PHONY: 1.13
1.13:
	docker build --build-arg GOLANG_CI_LINT_VERSION=$(GOLANG_CI_LINT_VERSION) --pull -t $(IMAGE_NAME):1.13 1.13/buster
	docker build -t $(IMAGE_NAME):1.13-extra 1.13/extra
	docker build -t $(IMAGE_NAME):1.13-node 1.13/node
	docker build --build-arg GOLANG_CI_LINT_VERSION=$(GOLANG_CI_LINT_VERSION) --pull -t $(IMAGE_NAME):1.13-alpine 1.13/alpine
	docker build -t $(IMAGE_NAME):1.13-alpine-extra 1.13/alpine/extra
	docker build -t $(IMAGE_NAME):1.13-alpine-node 1.13/alpine/node
	docker build -t $(IMAGE_NAME):1.13-java 1.13/java

.PHONY: 1.14
1.14:
	docker build --build-arg GOLANG_CI_LINT_VERSION=$(GOLANG_CI_LINT_VERSION) --pull -t $(IMAGE_NAME):latest -t $(IMAGE_NAME):1.14 1.14/buster
	docker build -t $(IMAGE_NAME):1.14-extra 1.14/extra
	docker build -t $(IMAGE_NAME):1.14-node 1.14/node
	docker build --build-arg GOLANG_CI_LINT_VERSION=$(GOLANG_CI_LINT_VERSION) --pull -t $(IMAGE_NAME):1.14-alpine 1.14/alpine
	docker build -t $(IMAGE_NAME):1.14-alpine-extra 1.14/alpine/extra
	docker build -t $(IMAGE_NAME):1.14-alpine-node 1.14/alpine/node
	docker build -t $(IMAGE_NAME):1.14-java 1.14/java

.PHONY: 1.15
1.15:
	docker build --build-arg GOLANG_CI_LINT_VERSION=$(GOLANG_CI_LINT_VERSION) --pull -t $(IMAGE_NAME):latest -t $(IMAGE_NAME):1.15 1.15/buster
	docker build -t $(IMAGE_NAME):1.15-extra 1.15/extra
	docker build -t $(IMAGE_NAME):1.15-node 1.15/node
	docker build --build-arg GOLANG_CI_LINT_VERSION=$(GOLANG_CI_LINT_VERSION) --pull -t $(IMAGE_NAME):1.15-alpine 1.15/alpine
	docker build -t $(IMAGE_NAME):1.15-alpine-extra 1.15/alpine/extra
	docker build -t $(IMAGE_NAME):1.15-alpine-node 1.15/alpine/node
	docker build -t $(IMAGE_NAME):1.15-java 1.15/java

.PHONY:push
push:
	docker push $(IMAGE_NAME)
