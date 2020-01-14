# Manager v19.12.13
FROM mono:latest

RUN apt install -y unzip

RUN mkdir /usr/share/manager-server
RUN curl https://github.com/Manager-io/Manager.zip/releases/latest/download/Manager.zip | unzip /usr/share/manager-server/Manager.zip -d /usr/share/manager-server

# Run instance of Manager
CMD ["mono", "/usr/share/manager-server/ManagerServer.exe","-port","8080","-path","/data"]

VOLUME /data
EXPOSE 8080
