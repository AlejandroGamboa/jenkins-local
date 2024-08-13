FROM jenkins/jenkins:lts-jdk17
USER root
RUN apt update && curl -fsSL https://get.docker.com | sh
ENV JAVA_OPTS=-Dhudson.plugins.git.GitSCM.ALLOW_LOCAL_CHECKOUT=true
USER jenkins