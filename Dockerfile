FROM adoptopenjdk/openjdk11:x86_64-alpine-jre-11.0.18_10

WORKDIR /opt

RUN apk add wget
RUN wget https://github.com/krlvm/PowerTunnel/releases/latest/download/PowerTunnel.jar

# Link all config
COPY entry.sh /usr/local/bin/entry.sh

ENTRYPOINT [ "entry.sh" ]