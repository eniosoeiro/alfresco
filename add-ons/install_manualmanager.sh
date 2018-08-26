#!/bin/bash
set -e

# variáveis
ALF_HOME=/alfresco

# Download Loftux Manual Manager installer
cd /tmp
git clone git://github.com/loftuxab/manual-manager.git ManualManager

# Gerando JAR file
pushd ManualManager
ant package

cp /tmp/ManualManager/build/dist/loftux-manual-manager.jar $ALF_HOME/tomcat/webapps/alfresco/WEB-INF/lib/
cp /tmp/ManualManager/build/dist/loftux-manual-manager.jar $ALF_HOME/tomcat/webapps/share/WEB-INF/lib/

popd

rm -rf /tmp/ManualManager