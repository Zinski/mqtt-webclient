docker stop mqtt-webclient
docker rm mqtt-webclient
docker run -d -p 81:80 \
--volume /home/pi/mqtt-webclient/logs/error.log:/var/log/nginx/error.log \
--volume /home/pi/mqtt-webclient/logs/access.log:/var/log/nginx/access.log \
--volume /home/pi/mqtt-webclient/nginx/nginx.conf:/etc/nginx/nginx.conf:ro \
--volume /home/pi/mqtt-webclient/nginx/conf.d/:/etc/nginx/conf.d/:ro \
--volume /home/pi/mqtt-webclient/app:/usr/share/nginx/html:ro \
--restart unless-stopped \
--name mqtt-webclient nginx:latest

