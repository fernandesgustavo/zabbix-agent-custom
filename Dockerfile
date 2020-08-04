FROM zabbix/zabbix-agent:centos-3.4.11

LABEL developer="Gustavo Fernandes"

#COPY . /etc/zabbix/zabbix-agent.d/

# Dependências necessárias para o cx_Oracle
# Instala o Python3.6
RUN yum install -y python3 &&

#CMD python /app/app.py