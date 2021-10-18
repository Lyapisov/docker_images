.DEFAULT_GOAL := help
help:
	@grep -E '^[a-zA-Z-]+:.*?## .*$$' Makefile | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "[32m%-17s[0m %s\n", $$1, $$2}'
.PHONY: help

build-image:
	docker build --file=docker/Dockerfile --tag lyapisov/android-flutter .

push-image:
	docker push lyapisov/android-flutter
