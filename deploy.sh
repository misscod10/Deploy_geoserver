#/bin/bash
yum install -y java-1.8.0-openjdk-devel wget unzip tomcat

wget https://sourceforge.net/projects/geoserver/files/GeoServer/2.21.0/geoserver-2.21.0-war.zip --no-check-certificate
unzip -d /var/lib/tomcat/webapps/ geoserver-2.21.0-war.zip
cd $CATALINA_HOME 
mkdir -p ./lib/org/apache/catalina/util/
cat > ./lib/org/apache/catalina/util/ServerInfo.properties <<EOF
server.info=
server.number=
server.built=
EOF
sed -i 127i'<Valve className="org.apache.catalina.valves.ErrorReportValve" showReport="false" showServerInfo="false" />' /usr/share/tomcat/conf/server.xml
systemctl restart tomcat