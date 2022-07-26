#/bin/bash

yum update -y

yum install -y java-1.8.0-openjdk-devel wget unzip tomcat

wget https://sourceforge.net/projects/geoserver/files/GeoServer/2.21.0/geoserver-2.21.0-war.zip

unzip -d /var/lib/tomcat/webapps/ geoserver-2.21.0-war.zip

systemctl restart tomcat
