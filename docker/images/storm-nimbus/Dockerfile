FROM debian:jessie
MAINTAINER David Nies <nies.david@googlemail.com>


# ===== JAVA =====
RUN apt-get update && \
    apt-get install -y openjdk-7-jdk && \
    rm -rf /var/lib/apt/lists/*

# ===== ZOOKEEPER =====
ENV STORM_VERSION 0.9.5

# Install curl & download zookeeper
RUN apt-get update && \
    apt-get install -y curl && \
    curl -s -o /tmp/apache-storm-${STORM_VERSION}.tar.gz http://www.apache.org/dyn/closer.cgi/storm/apache-storm-${STORM_VERSION}/apache-storm-${STORM_VERSION}.tar.gz
    rm -rf /var/lib/apt/lists/*

# Extract the .tar.gz
#RUN mkdir -p /opt/zookeeper && \
#    mkdir -p /data/logs && \
#    tar xvzf /tmp/zookeeper-${ZOOKEEPER_VERSION}.tar.gz -C /opt/zookeeper --strip 1 && \
#    rm /tmp/zookeeper-${ZOOKEEPER_VERSION}.tar.gz
#
#ADD zoo.cfg /opt/zookeeper/conf/zoo.cfg
#ADD run.sh /run.sh
#
#ENV ZOO_LOG_DIR /data/logs
#
#VOLUME ["/data"]
#
#CMD ["/run.sh"]
