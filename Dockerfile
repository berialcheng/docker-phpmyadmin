FROM ubuntu:14.04

MAINTAINER Cheng "berialcheng@gmail.com"

ENV http_proxy http://web-proxy.rose.hp.com:8080
ENV https_proxy http://web-proxy.rose.hp.com:8080
RUN apt-get update && apt-get -y install apache2 && apt-get -y install php5 && apt-get -y install php5-mysql && apt-get -y install unzip && apt-get -y install vim && apt-get clean

COPY phpMyAdmin-4.4.12-all-languages.zip /tmp/phpMyAdmin-4.4.12-all-languages.zip
RUN unzip /tmp/phpMyAdmin-4.4.12-all-languages.zip -d /tmp/ && mv /tmp/phpMyAdmin-4.4.12-all-languages /var/www/html/phpMyAdmin && rm -rf /tmp/phpMyAdmin*

COPY config.inc.php /var/www/html/phpMyAdmin/

EXPOSE 80

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]

#docker build -t adrian/apache .
#docker run -itd -P --name apache adrian/apache
#docker exec -it apache bash
#docker run --name mysql -e MYSQL_ROOT_PASSWORD=root -d -p 3306:3306 mysql:5.6