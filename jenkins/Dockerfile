FROM jenkins:alpine

#copy logstash config file?

RUN install-plugins.sh logstash mask-passwords
COPY logstash_config.xml /var/jenkins_home/jenkins.plugins.logstash.LogstashInstallation.xml
