# This project from 42 school aims to broaden your knowledge of system administration by using Docker. IIn this project You will virtualize several Docker images, creating them in your new personal virtual machine,



# Clone this project
git clone https://github.com/rafalacerda1530/Inception

# Access
cd Inception

# Run the project
make

# The server will initialize in the <https://rarodrig.42.fr>, (you can access through a browser in your virtual machine)

# To stop the project
make down

# To clean images and volumes
make clean

# To prune volumes, remove local data volume and restore the /etc/hosts
make fclean

# This project contains 3 containers,

1. NGINX - Nginx is a webserver which stores hmtl, js, images files and use http request to display a website. Nginx conf documents will be used to config our server and the right proxy connexion.
2. WORDPRESS - O WordPress é um sistema de gerenciamento de conteúdo (CMS) popular e de código aberto usado para criar e administrar sites
3. MARIADB - Database to store all the website stuff

![image](https://github.com/rafalacerda1530/Inception/assets/69651347/6be6b6a1-8a2c-479a-ac5f-c54f4c7594e8)

![image](https://github.com/rafalacerda1530/Inception/assets/69651347/b922d0a1-c427-427a-b5fe-a5625b1b319d)
