FROM ubuntu:16.04

RUN apt-get update && \
	apt-get install -y -q --no-install-recommends \
	freeradius && \
	rm -rf /var/lib/apt/lists/*

WORKDIR /etc/freeradius/

ADD users .
ADD clients.conf .

ENTRYPOINT ["freeradius", "-X"]
