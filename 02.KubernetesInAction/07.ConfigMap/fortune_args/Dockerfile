FROM ubuntu:latest
MAINTAINER rolroralra <rolroralra@naver.com>

RUN apt-get update && apt-get -y install fortune

COPY fortuneLoop.sh /bin/fortuneLoop.sh

ENTRYPOINT ["/bin/fortuneLoop.sh"]
