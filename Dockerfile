FROM debian:stretch

RUN apt-get update && apt-get install -y gnupg software-properties-common xvfb time

RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys AA716FC2

RUN apt-add-repository "deb http://www.ap-i.net/apt stable main"

RUN apt-get update && apt-get install -y skychart

COPY skychart.ini /root/.skychart/
COPY start.sh /root/
RUN chmod +x /root/start.sh

WORKDIR /root

EXPOSE 3292

CMD [ "/root/start.sh" ]
