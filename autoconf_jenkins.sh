printf 'Waiting for jenkins to be up'
until $(docker exec jenkins [ -f /var/jenkins_home/secrets/initialAdminPassword ]); do
    printf '.'
    sleep 1
done
printf ' OK\n'

PW="$(docker exec jenkins cat /var/jenkins_home/secrets/initialAdminPassword)"
printf "Jenkins initial admin PW: %s\n" "$PW"
