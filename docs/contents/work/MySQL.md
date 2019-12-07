# MySQL

- [MySQL](#mysql)
  - [install](#install)
- [re-initialize MySQL](#re-initialize-mysql)

## install

- [download mysql from Oracle Software Delivery Cloud](https://edelivery.oracle.com/osdc/faces/Home.jspx)
- V984050-01.zip MySQL Database 5.7.28 ZIP for Windows x86 (64bit)
- [mysql tutorial](https://www.runoob.com/mysql/mysql-tutorial.html)
- [Option Files](https://dev.mysql.com/doc/refman/5.7/en/option-files.html)
- CMD run as Administrator

```cmd
c:\mysql-advanced-5.7.28-winx64>type my.ini
[client]
# set default character set
default-character-set=utf8

[mysqld]
port = 3306
character-set-server=utf8
max_connections=20
default-storage-engine=INNODB
# set basedir to your installation path
basedir=C:/mysql-advanced-5.7.28-winx64
# set datadir to the location of your data directory
datadir=C:/mysql-advanced-5.7.28-winx64/data

c:\mysql-advanced-5.7.28-winx64>

c:\mysql-advanced-5.7.28-winx64>mysqladmin -uroot -p
mysqladmin  Ver 8.42 Distrib 5.7.28, for Win64 on x86_64
Copyright (c) 2000, 2019, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Administration program for the mysqld daemon.
Usage: mysqladmin [OPTIONS] command command....

Default options are read from the following files in the given order:
C:\Windows\my.ini C:\Windows\my.cnf C:\my.ini C:\my.cnf C:\mysql-advanced-5.7.28-winx64\my.ini C:\mysql-advanced-5.7.28-winx64\my.cnf

c:\mysql-advanced-5.7.28-winx64>mysqladmin -uroot -p status
Enter password: ****
mysqladmin: connect to server at 'localhost' failed
error: 'Can't connect to MySQL server on 'localhost' (10061)'
Check that mysqld is running on localhost and that the port is 3306.
You can check this by doing 'telnet localhost 3306'

c:\mysql-advanced-5.7.28-winx64>

c:\mysql-advanced-5.7.28-winx64\bin>mysqld --defaults-file=C:\mysql-advanced-5.7.28-winx64\my.ini --initialize --console
2019-12-07T13:03:30.953850Z 0 [Warning] TIMESTAMP with implicit DEFAULT value is deprecated. Please use --explicit_defaults_for_timestamp server option (see documentation for more details).
2019-12-07T13:03:31.452986Z 0 [Warning] InnoDB: New log files created, LSN=45790
2019-12-07T13:03:31.560614Z 0 [Warning] InnoDB: Creating foreign key constraint system tables.
2019-12-07T13:03:31.656473Z 0 [Warning] No existing UUID has been found, so we assume that this is the first time that this server has been started. Generating a new UUID: f8157336-18f1-11ea-8ce9-02001700b379.
2019-12-07T13:03:31.665266Z 0 [Warning] Gtid table is not ready to be used. Table 'mysql.gtid_executed' cannot be opened.
2019-12-07T13:03:33.948596Z 0 [Warning] CA certificate ca.pem is self signed.
2019-12-07T13:03:34.941072Z 1 [Note] A temporary password is generated for root@localhost: MXe&CimJg2gD

c:\mysql-advanced-5.7.28-winx64\bin>
c:\mysql-advanced-5.7.28-winx64>mysqld install
Service successfully installed.

c:\mysql-advanced-5.7.28-winx64>mysqlshow
mysqlshow: Can't connect to MySQL server on 'localhost' (10061)

c:\mysql-advanced-5.7.28-winx64>net start mysql
The MySQL service is starting.
The MySQL service was started successfully.


c:\mysql-advanced-5.7.28-winx64>mysqlshow
mysqlshow: Access denied for user 'ODBC'@'localhost' (using password: NO)

c:\mysql-advanced-5.7.28-winx64>mysqladmin version
mysqladmin: connect to server at 'localhost' failed
error: 'Access denied for user 'ODBC'@'localhost' (using password: NO)'

c:\mysql-advanced-5.7.28-winx64>
c:\mysql-advanced-5.7.28-winx64>mysql -u root -p
Enter password: ************
Welcome to the MySQL monitor.  Commands end with ; or \g.

c:\mysql-advanced-5.7.28-winx64>mysqladmin -u root -p version
Enter password: ************
mysqladmin: connect to server at 'localhost' failed
error: 'Your password has expired. To log in you must change it using a client that supports expired passwords.'

c:\mysql-advanced-5.7.28-winx64>ALTER USER 'root'@'localhost' IDENTIFIED BY 'root';
'ALTER' is not recognized as an internal or external command,
operable program or batch file.

c:\mysql-advanced-5.7.28-winx64>mysql -u root -p
Enter password: ************
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 6
Server version: 5.7.28-enterprise-commercial-advanced

Copyright (c) 2000, 2019, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> ALTER USER 'root'@'localhost' IDENTIFIED BY 'root';
Query OK, 0 rows affected (0.00 sec)

mysql> exit
Bye

c:\mysql-advanced-5.7.28-winx64>mysql -u root -p
Enter password: ****
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 7
Server version: 5.7.28-enterprise-commercial-advanced MySQL Enterprise Server - Advanced Edition (Commercial)

Copyright (c) 2000, 2019, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> exit
Bye

c:\mysql-advanced-5.7.28-winx64>mysqladmin -u root -p version
Enter password: ****
mysqladmin  Ver 8.42 Distrib 5.7.28, for Win64 on x86_64
Copyright (c) 2000, 2019, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Server version          5.7.28-enterprise-commercial-advanced
Protocol version        10
Connection              localhost via TCP/IP
TCP port                3306
Uptime:                 10 min 53 sec

Threads: 1  Questions: 10  Slow queries: 0  Opens: 106  Flush tables: 1  Open tables: 99  Queries per second avg: 0.015

c:\mysql-advanced-5.7.28-winx64>
c:\mysql-advanced-5.7.28-winx64>mysqlshow version
mysqlshow: Access denied for user 'ODBC'@'localhost' (using password: NO)

c:\mysql-advanced-5.7.28-winx64>
c:\mysql-advanced-5.7.28-winx64>mysqlshow -u root
mysqlshow: Access denied for user 'root'@'localhost' (using password: NO)

c:\mysql-advanced-5.7.28-winx64>mysqlshow -u root -p
Enter password: ****
+--------------------+
|     Databases      |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+

c:\mysql-advanced-5.7.28-winx64>mysqlshow -u root -p mysql

c:\mysql-advanced-5.7.28-winx64>mysql -u root -p -e "SELECT User, Host, plugin FROM mysql.user" mysql
Enter password: ****
+---------------+-----------+-----------------------+
| User          | Host      | plugin                |
+---------------+-----------+-----------------------+
| root          | localhost | mysql_native_password |
| mysql.session | localhost | mysql_native_password |
| mysql.sys     | localhost | mysql_native_password |
+---------------+-----------+-----------------------+

c:\mysql-advanced-5.7.28-winx64>
c:\mysql-advanced-5.7.28-winx64>mysql -u root -p
Enter password: ****
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 17
Server version: 5.7.28-enterprise-commercial-advanced MySQL Enterprise Server - Advanced Edition (Commercial)

Copyright (c) 2000, 2019, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
4 rows in set (0.00 sec)

mysql>
mysql> SELECT User, Host, plugin FROM mysql.user;
+---------------+-----------+-----------------------+
| User          | Host      | plugin                |
+---------------+-----------+-----------------------+
| root          | localhost | mysql_native_password |
| mysql.session | localhost | mysql_native_password |
| mysql.sys     | localhost | mysql_native_password |
+---------------+-----------+-----------------------+
3 rows in set (0.00 sec)

mysql>exit
c:\mysql-advanced-5.7.28-winx64>mysqladmin -uroot -p shutdown
Enter password: ****

c:\mysql-advanced-5.7.28-winx64>
c:\mysql-advanced-5.7.28-winx64>net start mysql
The MySQL service is starting.
The MySQL service was started successfully.


c:\mysql-advanced-5.7.28-winx64>mysql -uroot -p

mysql> create database mydb default character set=utf8;
mysql> create DATABASE mydb;
Query OK, 1 row affected (0.00 sec)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mydb               |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
5 rows in set (0.00 sec)

mysql>
mysql> show variables like '%character%';
+--------------------------+-------------------------------------------------+
| Variable_name            | Value                                           |
+--------------------------+-------------------------------------------------+
| character_set_client     | gbk                                             |
| character_set_connection | gbk                                             |
| character_set_database   | latin1                                          |
| character_set_filesystem | binary                                          |
| character_set_results    | gbk                                             |
| character_set_server     | latin1                                          |
| character_set_system     | utf8                                            |
| character_sets_dir       | C:\mysql-advanced-5.7.28-winx64\share\charsets\ |
+--------------------------+-------------------------------------------------+
8 rows in set (0.00 sec)

mysql>
mysql> CREATE TABLE IF NOT EXISTS `user`(
    ->    `id` INT UNSIGNED AUTO_INCREMENT,
    ->    `username` VARCHAR(100) NOT NULL,
    ->    `password` VARCHAR(40) NOT NULL,
    ->    `nickname` VARCHAR(40) NOT NULL,
    ->    `submission_date` DATE,
    ->    PRIMARY KEY ( `id` )
    -> )ENGINE=InnoDB DEFAULT CHARSET=utf8;
ERROR 1046 (3D000): No database selected
mysql> use mydb;
Database changed
mysql> CREATE TABLE IF NOT EXISTS `user`(
    ->    `id` INT UNSIGNED AUTO_INCREMENT,
    ->    `username` VARCHAR(100) NOT NULL,
    ->    `password` VARCHAR(40) NOT NULL,
    ->    `nickname` VARCHAR(40) NOT NULL,
    ->    `submission_date` DATE,
    ->    PRIMARY KEY ( `id` )
    -> )ENGINE=InnoDB DEFAULT CHARSET=utf8;
Query OK, 0 rows affected (0.06 sec)

mysql> show tables;
+----------------+
| Tables_in_mydb |
+----------------+
| user           |
+----------------+
1 row in set (0.00 sec)

mysql> exit
```

# re-initialize MySQL

```cmd run as administrator
mysqladmin -uroot -p shutdown
delete ${mysql-basedir}/data
update my.ini
mysqld --defaults-file=C:\mysql-advanced-5.7.28-winx64\my.ini --initialize --console
c:\mysql-advanced-5.7.28-winx64>mysqld --defaults-file=C:\mysql-advanced-5.7.28-winx64\my.ini --initialize --console
2019-12-07T14:51:22.516039Z 0 [Warning] TIMESTAMP with implicit DEFAULT value is deprecated. Please use --explicit_defaults_for_timestamp server option (see documentation for more details).
2019-12-07T14:51:23.004421Z 0 [Warning] InnoDB: New log files created, LSN=45790
2019-12-07T14:51:23.121320Z 0 [Warning] InnoDB: Creating foreign key constraint system tables.
2019-12-07T14:51:23.218633Z 0 [Warning] No existing UUID has been found, so we assume that this is the first time that this server has been started. Generating a new UUID: 096f7d71-1901-11ea-8c29-02001700b379.
2019-12-07T14:51:23.227709Z 0 [Warning] Gtid table is not ready to be used. Table 'mysql.gtid_executed' cannot be opened.
2019-12-07T14:51:24.693644Z 0 [Warning] CA certificate ca.pem is self signed.
2019-12-07T14:51:25.311478Z 1 [Note] A temporary password is generated for root@localhost: 21,1goofymkZ

# TODO: TIMESTAMP
date(yyyy-mm-dd)
datetime(yyyy-mm-dd hh:mm:ss)
timestamp(yyyymmddhhmmss)
time(hh:mm:ss)

append below into my.ini
explicit_defaults_for_timestamp = 1

c:\mysql-advanced-5.7.28-winx64>bin/mysqld install
net start mysql
mysql -uroot -p
mysql> ALTER USER 'root'@'localhost' IDENTIFIED BY 'root';
mysql> show variables like '%character%';
+--------------------------+-------------------------------------------------+
| Variable_name            | Value                                           |
+--------------------------+-------------------------------------------------+
| character_set_client     | utf8                                            |
| character_set_connection | utf8                                            |
| character_set_database   | utf8                                            |
| character_set_filesystem | binary                                          |
| character_set_results    | utf8                                            |
| character_set_server     | utf8                                            |
| character_set_system     | utf8                                            |
| character_sets_dir       | C:\mysql-advanced-5.7.28-winx64\share\charsets\ |
+--------------------------+-------------------------------------------------+
8 rows in set (0.00 sec)

mysql> show global variables like '%timestamp%';
+---------------------------------+-------+
| Variable_name                   | Value |
+---------------------------------+-------+
| explicit_defaults_for_timestamp | OFF   |
| log_timestamps                  | UTC   |
+---------------------------------+-------+
2 rows in set (0.00 sec)

mysql> set global explicit_defaults-for_timestamp=1;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '-for_timestamp=1' at line 1

mysql> set global explicit_defaults_for_timestamp=1;
Query OK, 0 rows affected (0.00 sec)

mysql> show global variables like '%timestamp%';
+---------------------------------+-------+
| Variable_name                   | Value |
+---------------------------------+-------+
| explicit_defaults_for_timestamp | ON    |
| log_timestamps                  | UTC   |
+---------------------------------+-------+
2 rows in set (0.00 sec)

mysql>
mysql> show databases;
mysql> create database mydb default character set=utf8;
mysql> use mydb;

CREATE TABLE IF NOT EXISTS `user`(
   `id` INT UNSIGNED AUTO_INCREMENT,
   `username` VARCHAR(100) NOT NULL,
   `password` VARCHAR(40) NOT NULL,
   `nickname` VARCHAR(40) NOT NULL,
   `submission_date` DATE,
   PRIMARY KEY ( `id` )
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `blog`(
   `id` INT UNSIGNED AUTO_INCREMENT,
   `founder` VARCHAR(100) NOT NULL,
   `title` VARCHAR(40) NOT NULL,
   `label` VARCHAR(40) NOT NULL,
   `submission_date` DATE,
   PRIMARY KEY ( `id` )
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

mysql> show tables;
+----------------+
| Tables_in_mydb |
+----------------+
| blog           |
| user           |
+----------------+
2 rows in set (0.00 sec)

mysql>


c:\mysql-advanced-5.7.28-winx64\bin>sc start|stop|delete mysql
c:\mysql-advanced-5.7.28-winx64\bin>net start|stop mysql
c:\mysql-advanced-5.7.28-winx64>mysqld --console

mysqladmin -u root shutdown
ALTER USER 'root'@'localhost' IDENTIFIED BY 'root-password';
CREATE USER 'root'@'127.0.0.1' IDENTIFIED BY 'root-password';
CREATE USER 'root'@'::1' IDENTIFIED BY 'root-password';

mysqladmin -u root password "new_password";
```
