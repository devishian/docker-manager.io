FROM mono:latest

RUN mkdir /usr/share/manager-server
RUN curl https://mngr.s3.amazonaws.com/18.1.21/ManagerServer.zip | tar xvz -C /usr/share/manager-server

CMD ["mono", "/usr/share/manager-server/ManagerServer.exe","-port","8080","-path","/data"]

VOLUME /data
EXPOSE 8080
