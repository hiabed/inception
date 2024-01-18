all :
	docker rm -f mariadb
	docker rm -f mariadb_img
	docker build -t mariadb_img srcs/requirements/mariadb
	docker run --name mariadb -d mariadb_img