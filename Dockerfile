ARG TAG=latest
FROM rabbitmq:${TAG}

ENV RABBITMQ_SERVER_ADDITIONAL_ERL_ARGS="-rabbitmq_stream advertised_host localhost"

EXPOSE 5672 15672 5552

RUN rabbitmq-plugins enable rabbitmq_stream
RUN rabbitmq-plugins enable rabbitmq_stream_management

