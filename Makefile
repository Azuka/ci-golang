IMAGE_NAME=azuka/ci-golang

.PHONY:all
all:
	docker build -t $(IMAGE_NAME):1.8-alpine 1.8/alpine
	docker build -t $(IMAGE_NAME):1.8 1.8/jessie
	docker build -t $(IMAGE_NAME):1.8-extra 1.8/extra
	docker build -t $(IMAGE_NAME):1.8-node 1.8/node
	docker build -t $(IMAGE_NAME):1.8-alpine-extra 1.8/alpine/extra
	docker build -t $(IMAGE_NAME):1.8-alpine-node 1.8/alpine/node
	docker build -t $(IMAGE_NAME):1.9-alpine 1.9/alpine
	docker build -t $(IMAGE_NAME):1.9 1.9/stretch
	docker build -t $(IMAGE_NAME):latest 1.9/stretch
	docker build -t $(IMAGE_NAME):1.9-extra 1.9/extra
	docker build -t $(IMAGE_NAME):1.9-node 1.9/node
	docker build -t $(IMAGE_NAME):1.9-alpine-extra 1.9/alpine/extra
	docker build -t $(IMAGE_NAME):1.9-alpine-node 1.9/alpine/node

.PHONY:push
push:
	docker push $(IMAGE_NAME)
