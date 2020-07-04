# Taken from https://medium.com/@stephanschrijver/sonarqube-pull-request-comments-within-bitbucket-cloud-126388f28ef9

FROM sonarqube:7.1

EXPOSE 9000

#Install the bitbucket-pull-request plugin
RUN cd $SONARQUBE_HOME/extensions/plugins \
    && curl -o sonar-bitbucket-plugin-1.3.0.jar -fSL https://github.com/Soyn/sonar-bitbucket-plugin/releases/download/v1.3.0/sonar-bitbucket-plugin-1.3.0.jar
