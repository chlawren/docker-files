FROM jenkins/jenkins:latest
ENV CASC_JENKINS_CONFIG /var/jenkins_home/casc_configs
ENV JAVA_OPTS="-Djenkins.install.runSetupWizard=false"
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt
COPY jenkins.yaml ${CASC_JENKINS_CONFIG}/jenkins.yaml
WORKDIR /var/jenkins_home/files
USER root
RUN apt-get update \
 && curl -sSL https://get.docker.com/ | sh \
 && wget http://localhost:8080/jnlpJars/jenkins-cli.jar . \
 && java -jar jenkins-cli.jar -s list-jobs All

