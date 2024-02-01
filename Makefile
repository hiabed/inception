all :
	docker-compose -f ./srcs/docker-compose.yaml build

run :
	docker-compose -f ./srcs/docker-compose.yaml up

re:
	docker system prune -af
	docker-compose ./srcs/ build

fclean:
	docker system prune -af