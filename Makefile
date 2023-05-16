all:
	@sudo mkdir -p ~/rarodrig/data/wordpress && sudo mkdir -p ~/rarodrig/data/mariadb
	@cd srcs/ && docker-compose up --build -d

down:
	@cd srcs/ && docker-compose down

clean:
	docker rmi wordpress mariadb nginx -f
	docker image prune -f

fclean: clean
	docker system prune -a --force

.PHONY: all down fclean