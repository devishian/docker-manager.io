FROM mono:latest

RUN mkdir /usr/share/manager-server
RUN curl https://d2ap5zrlkavzl7.cloudfront.net/$(curl -s http://www.manager.io/version.txt)/ManagerServer.tar.gz | tar xvz -C /usr/share/manager-server

CMD ["mono", "/usr/share/manager-server/ManagerServer.exe","-port","8080","-path","/data"]

VOLUME /data
EXPOSE 8080
