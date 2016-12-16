#!/bin/bash

mkdir -p /usr/local/java &&

cd /usr/local/java &&

wget --no-check-certificate --no-cookies --header "Cookie:oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u101-b13/jdk-8u101-linux-x64.tar.gz &&

tar xvzf jdk-8u101-linux-x64.tar.gz &&

echo "JAVA_HOME=/usr/local/java/jdk1.8.0_101" >> /etc/profile &&
echo "JRE_HOME=/usr/local/java/jre1.8.0_101/jre" >> /etc/profile &&

echo "export JAVA_HOME" >> /etc/profile &&
echo "export JRE_HOME" >> /etc/profile &&

update-alternatives --install "/usr/bin/java" "java" "/usr/local/java/jdk1.8.0_101/bin/java" 1 &&
update-alternatives --install "/usr/bin/javac" "javac" "/usr/local/java/jdk1.8.0_101/bin/javac" 1 &&
update-alternatives --install "/usr/bin/javaws" "javaws" "/usr/local/java/jdk1.8.0_101/bin/javaws" 1

java -version
