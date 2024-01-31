mariadb :
	docker rm -f mariadb
	docker rm -f mariadb_img
	docker build -t mariadb_img srcs/requirements/mariadb
	docker run --name mariadb --network=inception -d mariadb_img

wordpress :
	docker rm -f wordpress
	docker rm -f wordpress_img
	docker build -t wordpress_img srcs/requirements/wordpress
	docker run --name wordpress --network=inception -d wordpress_img