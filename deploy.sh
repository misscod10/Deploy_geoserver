#/bin/bash
yum update -y
yum install -y java-1.8.0-openjdk-devel wget unzip
cp geoserver.service /usr/lib/systemd/system/geoserver.service
cd /tmp
wget http://sourceforge.net/projects/geoserver/files/GeoServer/2.19.2/geoserver-2.19.2-bin.zip
mkdir /usr/share/geoserver
unzip -d /usr/share/geoserver/ geoserver-2.19.2-bin.zip
useradd -m -U -d /usr/share/geoserver -s /bin/false geoserver
chown -R geoserver:geoserver /usr/share/geoserver
systemctl daemon-reload
systemctl enable --now geoserver.service
