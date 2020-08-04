FROM zabbix/zabbix-agent:centos-3.4.11

LABEL developer="Gustavo Fernandes"

#COPY . /etc/zabbix/zabbix-agent.d/

# Dependencias necessarias para o cx_Oracle
# Repositorio para o pip
RUN yum install -y epel-release && \
# Instala o Python3.6
yum install -y python3 && \
# Instala o pip
yum install -y python-pip && \
# Instala as dependencias do script
pip3 install -r requirements.txt

#CMD python /app/app.py