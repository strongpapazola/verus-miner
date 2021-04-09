FROM ubuntu:latest

COPY . /app
WORKDIR /app

ENTRYPOINT ["./start.sh"] 
#CMD ['/usr/bin/sh -c start.sh']
#CMD ['/app/start.sh']
