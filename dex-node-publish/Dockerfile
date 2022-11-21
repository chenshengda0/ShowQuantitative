FROM node
RUN apt -y update && apt -y upgrade && apt install -y man vim iproute2 xz-utils wget gcc git g++ sudo  inetutils-ping net-tools curl screen cron
RUN apt install -y nginx
WORKDIR /opt/build
COPY dex-node-publish/init-start.sh /opt/init-start.sh
COPY dex-node-publish/one_publish.sh /opt/one_publish.sh
COPY dex-node-publish/five_publish.sh /opt/five_publish.sh
COPY dex-node-publish/restart.sh /opt/restart.sh
RUN sed -i -e "s/\r//" /opt/init-start.sh
RUN sed -i -e "s/\r//" /opt/one_publish.sh
RUN sed -i -e "s/\r//" /opt/five_publish.sh
RUN sed -i -e "s/\r//" /opt/restart.sh
RUN chmod -R 777 /opt/init-start.sh
RUN chmod -R 777 /opt/one_publish.sh
RUN chmod -R 777 /opt/five_publish.sh
RUN chmod -R 777 /opt/restart.sh
EXPOSE 9527
CMD date >> /home/test.md && /opt/init-start.sh && while true;do sleep 3000;done
