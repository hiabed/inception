all :
	docker-compose -f ./srcs/docker-compose.yaml build

run :
	docker-compose -f ./srcs/docker-compose.yaml up -d

re:
	docker-compose -f ./srcs/docker-compose.yaml down
	docker-compose -f ./srcs/docker-compose.yaml up -d

clean:
	docker-compose -f ./srcs/docker-compose.yaml down -v

stop:
	docker-compose -f ./srcs/docker-compose.yaml stop

start:
	docker-compose -f ./srcs/docker-compose.yaml start

fclean:
	docker system prune -af