```
1	docker --version: # Check Docker version  
2	docker run hello-world: # run hello-world image to test Docker installation  
3	docker pull nginx # Pull nginx image from Docker Hub  
4	docker images # List all images on the local machine  
5	docker run -d nginx	# Run nginx in detached mode  
6	docker ps # List all running containers
7	docker ps -a # List all containers (running and stopped)
8	docker logs <container_id> # View logs of a specific container -> only 3 characters of the container  
9	docker exec -it <container_id> /bin/sh # Access the shell of a running container  
10	docker stop <container_id> # Stop a running container   
11	docker restart <container_id> # Restart a stopped container
12	docker rm <container_id> # Remove a stopped container
13	docker container prune	# Remove all stopped containers
14	docker rmi <image_id> # Remove a specific image
15	docker image prune -a # Remove all unused images
16	docker run -d -p 8080:80 nginx	# Run nginx and map port 8080 on the host to port 80 in the container
17	docker inspect <container_id> # Get detailed information about a container	
18	docker run -d -v mydata:/data nginx	 # Run nginx with a volume mounted to /data in the container  
19	docker volume ls # List all volumes on the local machine  
20	docker volume prune	# Remove all unused volumes  
21	docker run -d --name my_nginx nginx	 # Run nginx with a specific name  
22	docker stats # View resource usage statistics of running containers  
23	docker network ls # List all networks  
24	docker network create my_network # Create a new network  
25	docker run -d --network my_network --name my_container nginx # 	Run nginx in the new network  
26	docker network connect my_network my_nginx	# Connect an existing container to a network
27	docker run -d -e MY_ENV=hello_world nginx # Run nginx with an environment variable
28	docker logs -f my_nginx # Follow logs of a running container	
29	FROM nginx # Base image  
	COPY index.html /usr/share/nginx/html/index.html # Copy index.html to nginx html directory  	
30	docker build -t my_nginx_image .	# Build image from Dockerfile in the current directory  
31	docker run -d -p 8080:80 my_nginx_image	# Build container from the custom image  
```