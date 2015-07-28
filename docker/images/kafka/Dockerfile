FROM debian:jessie
MAINTAINER David Nies <nies.david@googlemail.com>

ENV KAFKA_VERSION 0.8.1

# Install Java
RUN apt-get update && \
    apt-get install -y openjdk-7-jdk && \
    rm -rf /var/lib/apt/lists/*

# Install curl & download kafka
RUN apt-get update && \
    apt-get install -y curl && \
    curl -s -o /tmp/kafka_2.9.2-${KAFKA_VERSION}.tgz https://archive.apache.org/dist/kafka/${KAFKA_VERSION}/kafka_2.9.2-${KAFKA_VERSION}.tgz && \
    rm -rf /var/lib/apt/lists/*

# Extract kafka
RUN mkdir -p /opt/kafka && \
    tar xvzf /tmp/kafka_2.9.2-${KAFKA_VERSION}.tgz -C /opt/kafka --strip 1 && \
    rm /tmp/kafka_2.9.2-${KAFKA_VERSION}.tgz

ADD server.properties /opt/kafka/config/server.properties

# TODO: rm the kafka .tgz

VOLUME ["/data"]
