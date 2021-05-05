# Docker Image for WildFly + MariaDB

This Docker Image creates a WildFly Server including the MariaDB JDBC Driver as module.
Additionally it adds a custom `standalone.xml` which contains a simple, customziable definition of
a single MariaDB datasource.

## Used software versions

- WildFly: 23.0.1.Final
- MariaDB JDBC Connector: 2.7.2

The image tag represents both versions without the dots or any suffixes. So tag `2301-272` means that `WildFly 23.0.1.Final` and `MariaDB JDBC Connector 2.7.2` used.

## Environment variables

|Name|Default|Description|
|----|-------|-----------|
|DB_JNDI_NAME|java:/jdbc/datasource|The JNDI name of this datasource for using it withing `@Resource`|
|DB_POOL_NAME|default-pool|The name of the JDBC connection pool used by the datasource|
|DB_URI|jdbc:mariadb://localhost:3306|The URI of this datasource|
|DB_USER|mariadb|The name of the database user which is used to access the MariaDB instance|
|DB_PASSWORD|mariadbPw|The password of the database user|
|MIN_POOL_SIZE|2|The minimum size of the connection pool|
|MAX_POOL_SIZE|10|The maximum size of the connection pool|

In case there is more configuration necessary, one can easy use their own `standalone.xml` by 
adding `ADD standalone.xml /opt/jboss/wildfly/standalone/configuration/` in their extending image.

