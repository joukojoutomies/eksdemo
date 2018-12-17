#
# mule hello is very simple mule web server to prove the point running mule app in docker container
@ and deployed with Kubernetes
#
# Quick and dirty !! don't try if you don't know what you are doing
# 
# Tested with  
#   centos 7.5 minimal installation
#   curl - package installed
#   open JDK 1.8.0 - package installed (does not require Orackle java)
#   Docker-ce 18.09 installed 
#   Docker hub account (or you have other docker registry somewhere other than docker.io) available.
#     replace "lindstedt" with your docker hub account name
#
#   minimal changes required to run in Windows 10 docker CE on windows container - figure it out
@
# to build Docker container :
# docker build <container name:version> .
#
# for exampler: 
#   docker build lindstedt/mule-hello:1 .
#
# to test run:
#   docker run -d -p 8081:8081 lindstedt/mule-hello:1
@
@   curl localhost:8081/api/hello
#
#
# to push to docker.io
#
#  docker push https://docker.io/lindstedt/mule-hello:1
#
# to pull from docker.io
#
#  docker pull https://docker.io/lindstedt/mule-hello:1 

