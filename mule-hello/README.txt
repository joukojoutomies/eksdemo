#
# mule hello is very simple mule web server to prove the point running mule app in docker container
@ and deployed with Kubernetes
#
# Quick and dirty !! don't try if you don't know what you are doing and what ever you do, do not use this as an example for production use
# 
# Tested with  
#   centos 7.5 minimal installation ( for heavens sake, do not do this in production, start with alpine for Linux or nanoserver for Windows )
#   curl - package installed ( for healthcheck, can be done many different ways without curl )
#   open JDK 1.8.0 - package installed ( java required for Mule, but does not require Orackle java )
#   net-tools - package installed ( helps for troubleshooting )
#   Docker-ce 18.09 installed 
#
#   Docker hub account (or you have other docker registry somewhere other than docker.io) available.
#     replace "lindstedt" with your docker hub account name or may not be even needed for some other container registries
#
#   minimal changes required to run in windows container - figure it out, start with nanoserver
@
# to build Docker container (NOTE the "." dot which states that Dockerfile is in current working directory :
# docker build <container name:version> .
#
# for exampler: 
#   docker build -t lindstedt/mule-hello:1 .
#
# to test run:
#   docker run -d -p 8081:8081 lindstedt/mule-hello:1
@
@   curl localhost:8081/api/hello
#
#
# to push to docker.io
#
#  docker push docker.io/lindstedt/mule-hello:1
#
# to pull from docker.io
#
#  docker pull docker.io/lindstedt/mule-hello:1 
#
# If deployed with Kubernetes, remember to change version number every time. Kubernetes is caching container images based on name and version number
#
