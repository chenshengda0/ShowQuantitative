FROM node
RUN apt -y update && apt -y upgrade && apt install -y man vim iproute2 xz-utils wget gcc git g++ sudo  inetutils-ping net-tools curl screen cron
RUN apt install -y nginx
WORKDIR /opt/build
COPY dex-node-consumer/init-start.sh /opt/init-start.sh
COPY dex-node-consumer/one_consumer.sh /opt/one_consumer.sh
COPY dex-node-consumer/restart.sh /opt/restart.sh
RUN sed -i -e "s/\r//" /opt/init-start.sh
RUN sed -i -e "s/\r//" /opt/one_consumer.sh
RUN sed -i -e "s/\r//" /opt/restart.sh
RUN chmod -R 777 /opt/init-start.sh
RUN chmod -R 777 /opt/one_consumer.sh
RUN chmod -R 777 /opt/restart.sh
CMD date >> /home/test.md && /opt/init-start.sh && while true;do sleep 3000;done
