FROM zabbix/zabbix-agent:centos-3.4.11

LABEL developer="Gustavo Fernandes"

# Copia os arquivos para o diretorio temporario
COPY ./oracle/ /tmp
COPY ./requirements.txt /tmp

# Variaveis utilizadas
ENV TZ=America/Sao_Paulo

# Dependencias necessarias para o cx_Oracle
# Repositorio para o pip
RUN yum install -y epel-release && \
# Instala o Python3.6
yum install -y python3 && \
# Instala o pip
yum install -y python-pip && \
# Configura o timezone
ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone && \
# Instala as dependencias do script
pip3 install -r /tmp/requirements.txt && \
# Instala o Instant Client 19
yum install -y /tmp/oracle-instantclient19.8-basic-19.8.0.0.0-1.x86_64.rpm && \
# Remove o pacote Instant client 19 e o arquivo requirements.txt
rm -rf /tmp/oracle* && \
rm -rf /tmp/requirements.txt && \
# Limpa o cache do yum
yum clean all