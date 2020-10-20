# command: docker run --name ng-app -d -p 65001:80 ng-app
# 65001 is the port exposed on the host, 80 is the port exposed internally within the container

FROM nginx
COPY dist/docker-demo /usr/share/nginx/html