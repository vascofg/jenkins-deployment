docker-compose up -d || exit 1 #no sense running autoconf if docker failed
./autoconf_grafana.sh
./autoconf_jenkins.sh
