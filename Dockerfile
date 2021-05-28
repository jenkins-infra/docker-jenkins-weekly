FROM jenkins/jenkins:2.295-jdk11

COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN jenkins-plugin-cli -f /usr/share/jenkins/ref/plugins.txt --verbose

COPY ./groovy-scripts/weather.groovy /usr/share/jenkins/ref/init.groovy.d/executors.groovy
