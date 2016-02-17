FROM java:8
MAINTAINER jir@ikratochvil.eu

WORKDIR /

RUN curl -O download.elasticsearch.org/stream2es/stream2es; chmod +x stream2es

CMD /stream2es wiki --target http://$ELASTICSEARCH_PORT_9200_TCP_ADDR:$ELASTICSEARCH_PORT_9200_TCP_PORT/tmp --log debug