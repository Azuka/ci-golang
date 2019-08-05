IMAGE_NAME=azuka/ci-golang
GOLANG_CI_LINT_VERSION=1.17.1

.PHONY:all
all: 1.10 1.11 1.12
	docker build -t $(IMAGE_NAME):1.8-alpine 1.8/alpine
	docker build --pull -t $(IMAGE_NAME):1.8 1.8/jessie
	docker build -t $(IMAGE_NAME):1.8-extra 1.8/extra
	docker build -t $(IMAGE_NAME):1.8-node 1.8/node
	docker build -t $(IMAGE_NAME):1.8-alpine-extra 1.8/alpine/extra
	docker build -t $(IMAGE_NAME):1.8-alpine-node 1.8/alpine/node
	docker build -t $(IMAGE_NAME):1.9-alpine 1.9/alpine
	docker build -t $(IMAGE_NAME):1.9-alpine-extra 1.9/alpine/extra
	docker build -t $(IMAGE_NAME):1.9-alpine-node 1.9/alpine/node
	docker build --pull -t $(IMAGE_NAME):1.9 1.9/stretch
	docker build -t $(IMAGE_NAME):1.9-extra 1.9/extra
	docker build -t $(IMAGE_NAME):1.9-node 1.9/node
	docker build -t $(IMAGE_NAME):1.9-java 1.9/java

.PHONY: 1.10
1.10:
	docker build -t $(IMAGE_NAME):1.10-alpine 1.10/alpine
	docker build --pull -t $(IMAGE_NAME):1.10 1.10/stretch
	docker build -t $(IMAGE_NAME):1.10-extra 1.10/extra
	docker build -t $(IMAGE_NAME):1.10-node 1.10/node
	docker build -t $(IMAGE_NAME):1.10-alpine-extra 1.10/alpine/extra
	docker build -t $(IMAGE_NAME):1.10-alpine-node 1.10/alpine/node
	docker build -t $(IMAGE_NAME):1.10-java 1.10/java

.PHONY: 1.11
1.11:
	docker build --build-arg GOLANG_CI_LINT_VERSION=$(GOLANG_CI_LINT_VERSION) --pull -t $(IMAGE_NAME):latest -t $(IMAGE_NAME):1.11 1.11/stretch
	docker build -t $(IMAGE_NAME):1.11-extra 1.11/extra
	docker build -t $(IMAGE_NAME):1.11-node 1.11/node
	docker build --build-arg GOLANG_CI_LINT_VERSION=$(GOLANG_CI_LINT_VERSION) --pull -t $(IMAGE_NAME):1.11-alpine 1.11/alpine
	docker build -t $(IMAGE_NAME):1.11-alpine-extra 1.11/alpine/extra
	docker build -t $(IMAGE_NAME):1.11-alpine-node 1.11/alpine/node
	docker build -t $(IMAGE_NAME):1.11-java 1.11/java

.PHONY: 1.12
1.12:
	docker build --build-arg GOLANG_CI_LINT_VERSION=$(GOLANG_CI_LINT_VERSION) --pull -t $(IMAGE_NAME):latest -t $(IMAGE_NAME):1.12 1.12/stretch
	docker build -t $(IMAGE_NAME):1.12-extra 1.12/extra
	docker build -t $(IMAGE_NAME):1.12-node 1.12/node
	docker build --build-arg GOLANG_CI_LINT_VERSION=$(GOLANG_CI_LINT_VERSION) --pull -t $(IMAGE_NAME):1.12-alpine 1.12/alpine
	docker build -t $(IMAGE_NAME):1.12-alpine-extra 1.12/alpine/extra
	docker build -t $(IMAGE_NAME):1.12-alpine-node 1.12/alpine/node
	docker build -t $(IMAGE_NAME):1.12-java 1.12/java

.PHONY:push
push:
	docker push $(IMAGE_NAME)
