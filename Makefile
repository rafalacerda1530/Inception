DOMAIN := $(shell awk '/rarodrig.42.fr/{print $$2}' /etc/hosts)

all: hosts
	@sudo mkdir -p ~/rarodrig/data/wordpress && sudo mkdir -p ~/rarodrig/data/mariadb
	@cd srcs/ && docker-compose up --build -d

hosts:
	@if [ "$(DOMAIN)" != "rarodrig.42.fr" ]; then \
		sudo touch /etc/hosts; \
		sudo cp /etc/hosts ./host_backup; \
		sudo touch /etc/hosts; \
		sudo rm /etc/hosts; \
		sudo cp ./srcs/requirements/tools/hosts /etc/; \
	fi

down:
	@cd srcs/ && docker-compose down

clean:
	@docker rmi wordpress mariadb nginx -f
	@docker image prune -f

fclean: clean
	@docker system prune -a --volumes --force
	sudo rm -rf /etc/hosts
	sudo mv ./host_backup /etc/hosts

.PHONY: all down clean fclean hosts
