FROM ubuntu:latest
MAINTAINER rolroralra <rolroralra@naver.com>

RUN apt-get update && apt-get -y install fortune

COPY fortuneLoop.sh /bin/fortuneLoop.sh

ENV INTERVAL 10

ENTRYPOINT ["/bin/fortuneLoop.sh"]
