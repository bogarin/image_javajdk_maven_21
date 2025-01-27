FROM alpine:latest AS base

LABEL maintainer="Jose Ramon Bogarin bogarin.solteclog@gmail.com"
LABEL email="bogarin.solteclog@gmail.com"
LABEL repository="https://github.com/bogarin/image_javajdk_maven_21.git"
LABEL version="1.0"

RUN apk add --no-cache \
    openjdk21 \
    maven \
    bash \
    git \
    curl \
    tar \
    && mkdir -p /usr/share/maven /usr/lib/jvm \
    && ln -s /usr/lib/jvm/java-21-openjdk /usr/lib/jvm/java-21 \
    && rm -rf /var/cache/apk/*

ENV JAVA_HOME=/usr/lib/jvm/java-21
ENV PATH=$JAVA_HOME/bin:$PATH

WORKDIR /app

