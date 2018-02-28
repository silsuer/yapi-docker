FROM ubuntu:16.04
MAINTAINER silsuer

RUN apt-get update
RUN apt-get install curl -y
RUN apt-get install sudo -y
RUN curl -sL https://deb.nodesource.com/setup_9.x | sudo -E bash -
RUN apt-get install -y nodejs

RUN npm install -g yapi-cli --registry https://registry.npm.taobao.org

RUN sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5

RUN echo "deb [ arch=amd64 ] https://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.6 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.6.list

RUN sudo apt-get update

RUN sudo apt-get purge mongodb-org* 

RUN sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 0C49F3730359A14518585931BC711F9BA15703C6
RUN echo "deb [ arch=amd64,arm64 ] http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.4.list


RUN sudo apt-get update

RUN sudo apt-get install mongodb -y

RUN sudo apt-get install -y mongodb-org 

RUN sudo service mongodb start







