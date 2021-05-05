FROM jboss/wildfly:23.0.1.Final

LABEL maintainer="tobi.erdle@gmail.com"
LABEL description="Extended Image for using WildFly with MariaDB"

ENV DB_POOL_NAME="default-pool"
ENV DB_JNDI_NAME="java:/jdbc/datasource"
ENV DB_URI="jdbc:mariadb://localhost:3306"
ENV DB_USER="mariadb"
ENV DB_PASSWORD="mariadbPw"
ENV MIN_POOL_SIZE=2
ENV MAX_POOL_SIZE=10

ADD wildfly-configs/modules /opt/jboss/wildfly/modules/
ADD wildfly-configs/standalone.xml /opt/jboss/wildfly/standalone/configuration/
