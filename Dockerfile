# using alpine-glibc instead of alpine  is mainly because JDK relies on glibc
FROM docker.io/centos
# author
MAINTAINER windwithlife
# A streamlined jre
ADD jre8.tar.gz /usr/java/jdk/

RUN yum install -y bind-utils
# set env
ENV JAVA_HOME /usr/java/jdk
ENV PATH ${PATH}:${JAVA_HOME}/bin
# run container with base path:/opt
WORKDIR /opt
