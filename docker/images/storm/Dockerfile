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

# ===== STORM =====
ENV STORM_VERSION 0.9.5

RUN curl -s -o /tmp/apache-storm-${STORM_VERSION}.tar.gz http://mirror.arcor-online.net/www.apache.org/storm/apache-storm-${STORM_VERSION}/apache-storm-${STORM_VERSION}.tar.gz

# Extract the .tar.gz
RUN mkdir -p /opt/storm && \
    tar xvzf /tmp/apache-storm-${STORM_VERSION}.tar.gz -C /opt/storm --strip 1 && \
    rm /tmp/apache-storm-${STORM_VERSION}.tar.gz

#ADD zoo.cfg /opt/zookeeper/conf/zoo.cfg
#ADD run.sh /run.sh
#
#ENV ZOO_LOG_DIR /data/logs
#
#VOLUME ["/data"]
#
#CMD ["/run.sh"]
