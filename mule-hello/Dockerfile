FROM centos:7

RUN yum -y update && yum -y install java-1.8.0 && yum -y install firewalld && yum -y install curl
RUN useradd mule && mkdir /opt/mule 

COPY src/mule/ /opt/mule/
COPY src/hello-world/ /opt/mule/apps/
COPY src/start-mule.sh .
RUN chown -R mule:mule /opt/mule && \
    yum clean all && \
    rm -rf /var/cache/yum 
   
ENTRYPOINT ["/bin/bash","./start-mule.sh"] 
HEALTHCHECK CMD curl -f http://localhost:8081/api/hello || exit 1
