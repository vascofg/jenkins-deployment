FROM jenkins:2.46.3-alpine

#copy logstash config file?

RUN install-plugins.sh logstash:1.2.0 mask-passwords:2.10.1
COPY logstash_config.xml /var/jenkins_home/jenkins.plugins.logstash.LogstashInstallation.xml
