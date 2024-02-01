all :
	docker-compose -f ./srcs/docker-compose.yaml build

run :
	docker-compose -f ./srcs/docker-compose.yaml up

re:
	docker-compose -f ./srcs/docker-compose.yaml down
	docker-compose -f ./srcs/docker-compose.yaml up

stop:
	docker-compose -f ./srcs/docker-compose.yaml down -v

fclean:
	docker system prune -af