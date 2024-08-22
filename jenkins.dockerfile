FROM jenkins/jenkins:lts-jdk17

USER root

RUN apt-get update && apt-get install -Y docker.io

RUN usermod -aG docker jenkins

USER jenkins