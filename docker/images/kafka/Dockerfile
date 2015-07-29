FROM debian:jessie
MAINTAINER David Nies <nies.david@googlemail.com>


# ===== JAVA =====
RUN apt-get update && \
    apt-get install -y openjdk-7-jdk && \
    rm -rf /var/lib/apt/lists/*

# Install curl
RUN apt-get update && \
    apt-get install -y curl && \
    rm -rf /var/lib/apt/lists/*

# ===== KAFKA =====
ENV KAFKA_VERSION 0.8.1
ENV SCALA_VERSION 2.9.2

RUN curl -s -o /tmp/kafka_${SCALA_VERSION}-${KAFKA_VERSION}.tgz https://archive.apache.org/dist/kafka/${KAFKA_VERSION}/kafka_${SCALA_VERSION}-${KAFKA_VERSION}.tgz

# Extract kafka
RUN mkdir -p /opt/kafka && \
    tar xvzf /tmp/kafka_${SCALA_VERSION}-${KAFKA_VERSION}.tgz -C /opt/kafka --strip 1 && \
    rm /tmp/kafka_${SCALA_VERSION}-${KAFKA_VERSION}.tgz

ADD server.properties /opt/kafka/config/server.properties
ADD run.sh /run.sh

ENV ZOO_CONNECTION localhost

# TODO: rm the kafka .tgz

VOLUME ["/data"]

CMD ["/run.sh"]
