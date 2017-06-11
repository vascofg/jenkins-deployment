docker-compose up -d || exit 1 #no sense running autoconf if docker failed
./autoconf.sh
printf 'Grafana running at: http://localhost:3000
Kibana running at: http://localhost:5601/app/kibana\n'
