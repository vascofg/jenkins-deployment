printf 'Waiting for grafana API to be up'
until $(curl --output /dev/null --silent --head --fail http://127.0.0.1:3000); do
    printf '.'
    sleep 1
done
printf ' OK\n'

curl -H "Content-Type: application/json" -X POST -d @grafana/autoconf_datasource.json http://admin:admin@127.0.0.1:3000/api/datasources
printf '\n'
curl -H "Content-Type: application/json" -X POST -d @grafana/autoconf_docker_containers.json http://admin:admin@127.0.0.1:3000/api/dashboards/db
printf '\n'
curl -H "Content-Type: application/json" -X POST -d @grafana/autoconf_docker_host.json http://admin:admin@127.0.0.1:3000/api/dashboards/db
printf '\n'
curl -H "Content-Type: application/json" -X POST -d @grafana/autoconf_monitor_services.json http://admin:admin@127.0.0.1:3000/api/dashboards/db
printf '\n'
