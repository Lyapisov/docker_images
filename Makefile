.DEFAULT_GOAL := help
help:
	@grep -E '^[a-zA-Z-]+:.*?## .*$$' Makefile | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "[32m%-17s[0m %s\n", $$1, $$2}'
.PHONY: help

update-flutter-with-firebase-image: build-image-flutter-firebase push-image-flutter-firebase
update-flutter-image: build-image-flutter push-image-flutter

build-image-flutter-firebase:
	docker build --file=docker/flutterWithFirebase/Dockerfile --tag lyapisov/android-flutter .

push-image-flutter-firebase:
	docker push lyapisov/android-flutter:latest

build-image-flutter:
	docker build --file=docker/flutter/Dockerfile --tag lyapisov/flutter .

push-image-flutter:
	docker push lyapisov/flutter:latest
