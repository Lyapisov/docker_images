FROM alvrme/alpine-android:android-31

ENV FLUTTER_HOME=${HOME}/sdks/flutter \
    FLUTTER_VERSION=2.5.3
ENV FLUTTER_ROOT=$FLUTTER_HOME

RUN apk add --no-cache curl sudo

ENV PATH ${PATH}:${FLUTTER_HOME}/bin:${FLUTTER_HOME}/bin/cache/dart-sdk/bin

RUN git clone --depth 1 --branch ${FLUTTER_VERSION} https://github.com/flutter/flutter.git ${FLUTTER_HOME}

RUN yes | flutter doctor --android-licenses \
    && flutter doctor \
    && chown -R root:root ${FLUTTER_HOME}
