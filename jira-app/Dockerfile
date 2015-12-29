FROM nkatsaros/atlassian-jira:7.0

MAINTAINER Anoop Vijayan Maniankara<maniankara@gmail.com>

# SYSTEM 
RUN apt-get update \
  && apt-get install -y mysql-client netcat

RUN wget -O myssql-connector-java.tar.gz 'http://dev.mysql.com/get/Downloads/Connector-J/mysql-connector-java-5.1.38.tar.gz' \
  && tar xf myssql-connector-java.tar.gz -C /tmp \
  && mv /tmp/mysql-connector-java-5.1.38/mysql-connector-java-5.1.38-bin.jar /opt/atlassian/lib/mysql-connector-java-5.1.38.jar \
  && chown atlassian:atlassian -R /opt/atlassian/lib/mysql-connector-java-5.1.38.jar 

COPY dbconfig.xml /var/atlassian/jira/
COPY startjira.sh /startjira.sh

CMD ["/startjira.sh"]

