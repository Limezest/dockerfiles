FROM ubuntu:16.04

RUN rm /etc/localtime && ln -s /usr/share/zoneinfo/Europe/Paris /etc/localtime

RUN apt-get update && \
	apt-get install -y -q --no-install-recommends \
	freeradius \
	wget \
	devscripts \
	gcc
	#&& rm -rf /var/lib/apt/lists/*

WORKDIR /root
RUN wget https://github.com/coova/coova-chilli/archive/1.3.1.4.tar.gz
RUN tar xzf 1.3.1.4.tar.gz
RUN cd coova-chilli-1.3.1.4/
#RUN debuild -b

WORKDIR /etc/freeradius/

ADD users .
ADD clients.conf .

ENTRYPOINT ["freeradius", "-X"]
