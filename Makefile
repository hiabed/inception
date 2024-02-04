all :
	docker-compose -f ./srcs/docker-compose.yml build

run :
	docker-compose -f ./srcs/docker-compose.yml up -d --build

re:
	docker-compose -f ./srcs/docker-compose.yml down
	docker-compose -f ./srcs/docker-compose.yml up -d

clean:
	docker-compose -f ./srcs/docker-compose.yml down -v

stop:
	docker-compose -f ./srcs/docker-compose.yml stop

start:
	docker-compose -f ./srcs/docker-compose.yml start

fclean:
	docker system prune -af

rm:
	sudo rm -rf /home/mhassani/data/wordpress/*
	sudo rm -rf /home/mhassani/data/mariadb/*