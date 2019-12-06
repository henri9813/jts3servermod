FROM debian:buster

WORKDIR /app

RUN apt update \
	&& apt install --yes wget zip openjdk-11-jdk \
	&& apt clean && rm -rf /var/lib/apt

RUN wget -N "https://www.stefan1200.de/dlrequest.php?file=jts3servermod&type=.zip" -O "jts3servermod.zip" \
	&& unzip jts3servermod.zip \
	&& mv JTS3ServerMod/* . \
	&& rm -rf JTS3ServerMod

ENTRYPOINT tail -f /dev/null
