FROM mono:latest

RUN mkdir /usr/share/manager-server
RUN wget https://github.com/Manager-io/Manager.zip/releases/latest/download/Manager.zip -O /usr/share/manager-server/Manager.zip
RUN unzip /usr/share/manager-server/Manager.zip -d /usr/share/manager-server

CMD ["mono", "/usr/share/manager-server/ManagerServer.exe","-port","8080","-path","/data"]

VOLUME /data
EXPOSE 8080
