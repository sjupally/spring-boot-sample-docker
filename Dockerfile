FROM dashaun/centos6java8

MAINTAINER Srikanth Jupally <srikanth.jupaly825@gmail.com>

RUN mkdir /usr/local/srikanth
RUN mkdir /var/log/srikanth

# copy over jar (this is injected by go-cd from an upstream pipeline as an artifact into 'pkg' directory)
ADD pkg /usr/local/srikanth/

# expose port
EXPOSE 8098

CMD java -jar /usr/local/srikanth/*.jar --spring.profiles.active=dockerized -Xms64m -Xmx256m -XX:+HeapDumpOnOutOfMemoryError



