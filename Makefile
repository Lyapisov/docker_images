.DEFAULT_GOAL := help
help:
	@grep -E '^[a-zA-Z-]+:.*?## .*$$' Makefile | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "[32m%-17s[0m %s\n", $$1, $$2}'
.PHONY: help

update-flutter-with-firebase-image: build-image-flutter-android-firebase push-image-flutter-android-firebase
update-flutter-image: build-image-flutter push-image-flutter

build-image-flutter-android-firebase:
	docker build --file=docker/flutterWithFirebase/Dockerfile --tag lyapisov/flutter-android-firebase:1.0 .

push-image-flutter-android-firebase:
	docker push lyapisov/flutter-android-firebase:1.0

build-image-flutter:
	docker build --file=docker/flutter/Dockerfile --tag lyapisov/flutter:1.0 .

push-image-flutter:
	docker push lyapisov/flutter:1.0
