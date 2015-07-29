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

# ===== ZOOKEEPER =====
ENV ZOOKEEPER_VERSION 3.4.6

RUN curl -s -o /tmp/zookeeper-${ZOOKEEPER_VERSION}.tar.gz http://ftp.fau.de/apache/zookeeper/zookeeper-${ZOOKEEPER_VERSION}/zookeeper-${ZOOKEEPER_VERSION}.tar.gz

# Extract the .tar.gz
RUN mkdir -p /opt/zookeeper && \
    mkdir -p /data/logs && \
    tar xvzf /tmp/zookeeper-${ZOOKEEPER_VERSION}.tar.gz -C /opt/zookeeper --strip 1 && \
    rm /tmp/zookeeper-${ZOOKEEPER_VERSION}.tar.gz

ADD zoo.cfg /opt/zookeeper/conf/zoo.cfg
ADD run.sh /run.sh

ENV ZOO_LOG_DIR /data/logs

VOLUME ["/data"]

CMD ["/run.sh"]
