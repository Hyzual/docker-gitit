## Dockerfile for gitit
FROM debian:wheezy
MAINTAINER Hyzual "hyzual@gmail.com"

ENV DEBIAN_FRONTEND noninteractive

# make the "en_US.UTF-8" locale
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* \
    && localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
ENV LANG en_US.utf8

## install gitit
RUN apt-get update \
        && apt-get install -y --no-install-recommends --no-install-suggests mime-support gitit=0.10.0.1-1+b1 \
        && apt-get clean

VOLUME ["/data"]

COPY docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]

WORKDIR /data
EXPOSE 5001
CMD ["gitit", "-f", "/data/gitit.conf"]
