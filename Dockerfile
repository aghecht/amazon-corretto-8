FROM buildpack-deps:xenial-curl

RUN apt-get -y update; \
    apt-get -y install java-common python; \
    wget https://d2znqt9b1bc64u.cloudfront.net/java-1.8.0-amazon-corretto-jdk_8.202.08-2_amd64.deb; \
    dpkg --install ./java-1.8.0-amazon-corretto-jdk_8.212.04-2_amd64.deb; \
    rm java-1.8.0-amazon-corretto-jdk_8.202.08-2_amd64.deb; \
    rm -rf /var/lib/apt/lists/*

ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto