FROM nginx:latest

#copy file index.html to nginx default path
COPY index.html /urs/share/nginx/html/index.html

EXPOSE 80

#start nginx server
CMD ["nginx", "-g", "daemon off;"]