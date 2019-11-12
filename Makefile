IMAGE_NAME:=scottyhind/nflscrapr
IMAGE_TAG:=$$(git rev-parse HEAD)


.PHONY: build
build:
	@echo building ${IMAGE_TAG} image...
	docker build -t ${IMAGE_NAME}:${IMAGE_TAG} .
	docker tag ${IMAGE_NAME}:${IMAGE_TAG} ${IMAGE_NAME}:latest

.PHONY: push
push: build
	@echo "pushing ${IMAGE_NAME}:${IMAGE_TAG} to docker hub..."
	docker push $(IMAGE_NAME)

.PHONY: run
run: build
	docker run $(IMAGE_NAME) games --year=2014 --type=reg
