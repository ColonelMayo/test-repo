#!/bin/bash

#setup directory
mkdir -p /usr/local/es &&
cd /usr/local/es &&
wget https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-1.7.5.tar.gz &&
tar xvfz elasticsearch-1.7.5.tar.gz &&

#setup es in the global path
echo "ES_HOME=/usr/local/es/elasticsearch-1.7.5" >> /etc/profile &&

#setup the installation
update-alternatives --install "/usr/bin/es" "es" "/usr/local/es/elasticsearch-1.7.5/bin/elasticsearch" 1 &&

#setup a test command
echo "alias estest=\"curl 'http://localhost:9200/?pretty'\"" >> ~/.bashrc &&
source ~/.bashrc &&

echo "run es with -d for daemon/background mode"
