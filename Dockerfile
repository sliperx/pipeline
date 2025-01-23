FROM nginx:1.27

COPY index.html elastic.jpg Figma.jpg google.jpg jenkins.jpg jira.jpg logo.jpg pgadmin.jpg /usr/share/nginx/html
COPY nginx.conf .htpasswd /etc/nginx
COPY default.conf /etc/nginx/conf.d
COPY infoPageDeploymentProd.yaml /
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
