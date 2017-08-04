FROM node:latest

RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai  /etc/localtime
RUN apt-get update && apt-get -y install curl && apt-get -y install git && apt-get -y intall vim
WORKDIR /opt

RUN git clone https://github.com/billhu422/oauth2-example-client.git && \
        cd oauth2-example-client && \
        git checkout wso2is && \
        npm install

expose 9000

CMD  node /oauth2-example-client/server.js