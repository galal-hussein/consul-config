FROM rancher/confd:v0.12.0-alpha3

ADD ./run ./start_consul.sh ./tmp/

ENTRYPOINT ["/tmp/run"]
