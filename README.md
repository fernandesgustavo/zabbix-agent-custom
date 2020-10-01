# Customized Zabbix Agent image for connection to Oracle 19.

### Build the image

$ docker build -t gustavodevops/zabbix-agent-custom .

### Send the image to DockerHub

$ docker push gustavodevops/zabbix-agent-custom

### Start the container with some parameters

$ docker run --name zabbix-agent-custom --restart always --memory 256m --cpu-shares 512 -p 20050: 10050 -e ZBX_HOSTNAME="ZBXCONTAINER" -e ZBX_SERVER_HOST="10.100.9.52" -e ZBX_TIMEOUT="30" -e ZBX_INCLUDE="/etc/zabbix/zabbix_agentd.d/*.conf" -v ~/docker/zabbix/zabbix_agentd.d/:/etc/zabbix/zabbix_agentd.d/ -d gustavodevops/zabbix-agent-custom