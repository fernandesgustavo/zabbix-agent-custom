FROM zabbix/zabbix-agent:centos-3.4.11

LABEL developer="Gustavo Fernandes"

#COPY . /etc/zabbix/zabbix-agent.d/

# Dependências necessárias para o cx_Oracle
# Instala o Python3.6 e adiciona como default para o ambiente
RUN yum install -y python3 && \
ln -fs /usr/bin/python3.6 /usr/bin/python

#CMD python /app/app.py