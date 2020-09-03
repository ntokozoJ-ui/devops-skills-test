#!/bin/bash


db_pass="/workdir/secret"

yum remove docker docker-common docker-selinux docker-engine
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
yum install docker-ce

 

docker ps -q --filter "name=ALFRED" | grep -q . && docker stop ALFRED && docker rm -fv ALFRED

docker build -t mariadb -f Dockerfile  .
docker run --name ALFRED -v /BATCAVE:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=$db_pass -d mariadb:tag


mysql --user=root -p $db_pass
use test_db;
CREATE SCHEMA wayneindustries;
CREATE TABLE wayneindustries.fox
( ID int NOT NULL,
  NAME char(50) NOT NULL);

  INSERT INTO fox (ID, NAME)
  VALUES('50','BATMOBILE');

