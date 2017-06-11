printf 'Waiting for elastic API to be up'
until $(curl --output /dev/null --silent --head --fail http://elastic:changeme@127.0.0.1:9200); do
    printf '.'
    sleep 1
done
printf ' OK\n'

#change kibana access PW
curl --output /dev/null --silent --fail -XPUT 'elastic:changeme@localhost:9200/_xpack/security/user/kibana/_password?pretty' -H 'Content-Type: application/json' -d'
{
  "password": "feedzai"
}
' && echo "Changed Kibana access password"

#disable logstash_system user (not using logstash)
curl --output /dev/null --silent --fail -XPUT 'elastic:changeme@localhost:9200/_xpack/security/user/logstash_system/_disable?pretty' && echo "Disabled logstash_system user"

#change elastic PW
curl --output /dev/null --silent --fail -XPUT 'elastic:changeme@localhost:9200/_xpack/security/user/elastic/_password?pretty' -H 'Content-Type: application/json' -d'
{
  "password": "feedzai"
}
' && echo "Changed Elastic access password"
