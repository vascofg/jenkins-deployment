# Jenkins deployment

  - Jenkins: http://localhost (user: admin / pw: \<check start script\>)
  - Grafana: http://localhost:3000 (user: grafana / pw: feedzai)
  - Kibana: http://localhost:5601/app/kibana (user: elastic / pw: feedzai)

### Running the scenario
```
./start.sh
```
Initial jenkins password will be echoed on console.

### Stopping
```
./stop.sh
```
Containers will be removed but data volumes will be kept

### Cleanup
```
./purge.sh
```
Containers and data volumes will be removed
