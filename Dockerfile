FROM debian:stable
MAINTAINER Ross Savage <ross.savage@agrista.com>

RUN apt-get update
RUN apt-get install wget
RUN wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" https://download.oracle.com/otn/java/jdk/7u80-b15/jdk-7u80-linux-x64.rpm

RUN rpm -ivh jdk-7*-linux-x64.rpm && rm jdk-7*-linux-x64.rpm

ENV JAVA_HOME /usr/java/latest
