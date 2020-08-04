FROM zabbix/zabbix-agent:centos-3.4.11
LABEL developer="Gustavo Fernandes"
#COPY . /etc/zabbix/zabbix-agent.d/
RUN yum update -y && \
yum install -y python3 && \
alias python="/usr/bin/python3"
#CMD python /app/app.py