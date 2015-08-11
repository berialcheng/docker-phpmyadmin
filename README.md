# PhpMyAdmin

##How to use
#### Start the MySQL service
	//Using Docker mysql image for example: 
	docker run --name mysql -e MYSQL_ROOT_PASSWORD=root -d -p 3306:3306 mysql:5.6

#### Start the container
	docker run -idt -P -e MYSQL_HOST=<YOUR_MYSQL_HOST> -e MYSQL_USER=<MYSQL_USER> -e MYSQL_PASSWORD=<MYSQL_USER_PASSWORD> --name phpmyadmin berialcheng/phpmyadmin
#### Access the phpMyAdmin portal using 
	http://<docker_url>:<container_port>/phpMyAdmin

## Build in your local environment
	docker build -t berialcheng/phpmyadmin .
