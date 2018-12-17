#!/bin/bash
export PATH=$PATH:/usr/bin:/usr/local/go/bin
export JAVA_HOME=/usr
export MULE_HOME=/opt/mule
export PATH=$PATH:$MULE_HOME/bin:$JAVA_HOME/bin
firewall-offline-cmd --add-port 8081/tcp
/opt/mule/bin/mule start
while [ 1 ]; do sleep 15; done
