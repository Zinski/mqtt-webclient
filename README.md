# mqtt-webclient
 hiveqm-webclient including docker run script with nginx

# How to use this?
## Running on a pi - RaspberryOS
Having all files in the location `/home/pi/mqtt-webclient` simply run [run_nginx_docker_container_mqtt_client.sh](https://github.com/Zinski/mqtt-webclient/blob/master/run_nginx_docker_container_mqtt_client.sh)

## Running on other OS
You will have to manipulate the script in order to mount the correct path for persistence.

There are 5 volumes to map:
Necessary:
`--volume /home/pi/mqtt-webclient/nginx/nginx.conf:/etc/nginx/nginx.conf:ro` <-- nginx configuration, found [here](https://github.com/Zinski/mqtt-webclient/blob/master/nginx/nginx.conf)
`--volume /home/pi/mqtt-webclient/nginx/conf.d/:/etc/nginx/conf.d/:ro` <-- nginx additional configuration, found [here](https://github.com/Zinski/mqtt-webclient/blob/master/nginx/conf.d/default.conf)
`--volume /home/pi/mqtt-webclient/app:/usr/share/nginx/html:ro` <-- the actual app mapping into the container

Optional:
`--volume /home/pi/mqtt-webclient/logs/error.log:/var/log/nginx/error.log` <-- error log of nginx, useful to troubleshoot
`--volume /home/pi/mqtt-webclient/logs/access.log:/var/log/nginx/access.log` <-- access log of nginx, also useful to troubleshoot
