FROM mono:latest

RUN mkdir /usr/share/manager-server
RUN curl https://github.com/Manager-io/Manager.zip/releases/latest/download/Manager.zip | tar xvz -C /usr/share/manager-server

CMD ["mono", "/usr/share/manager-server/ManagerServer.exe","-port","8080","-path","/data"]

VOLUME /data
EXPOSE 8080
