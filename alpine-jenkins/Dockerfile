FROM reangd/alpine-base:latest

ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre \
    PATH=$PATH:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin \
    JENKINS_HOME=/jenkins \
    JAVA_OPTS="" \
    JENKINS_OPTS=""

RUN JENKINS_VERSION=latest && \
    \
    mkdir -p ${JENKINS_HOME} && \
    addgroup jenkins && \
    adduser -D -g "" -G jenkins -s /bin/bash -h ${JENKINS_HOME} jenkins && \
    chown -R jenkins:jenkins ${JENKINS_HOME} && \
    \
    apk add --no-cache openjdk8-jre git openssh-client ttf-dejavu python3 && \
    \
    mkdir -p /usr/share/jenkins && \
    curl -sSL http://mirrors.jenkins-ci.org/war-stable/${JENKINS_VERSION}/jenkins.war -o /usr/share/jenkins/jenkins.war

EXPOSE 8080
VOLUME ["/jenkins"]
COPY root /
