# [DBCS DBA OCI](https://oracle.github.io/learning-library/workshops/dbcs-dba-oci/)

- [Github Repository](https://github.com/oracle/learning-library/tree/master/workshops/dbcs-dba-oci)
- [DBCS for DBA's Workshop](https://launch.oracle.com/?dbcs_dba)

## API Key Pair

Generate the api private and public keys (PEM format) for the api user. Also change permissions of the private key.

```shellscript
openssl genrsa -out d:/tf/keys/oci_api_key.pem 2048
chmod go-rwx d:/tf/keys/oci_api_key.pem
openssl rsa -pubout -in d:/tf/keys/oci_api_key.pem -out d:/tf/keys/oci_api_key_public.pem
```

## Lab 100 Introduction

- [Oracle Backup Module](http://www.oracle.com/technetwork/database/availability/oracle-cloud-backup-2162729.html)
- [Adobe Yum Repository](https://get.adobe.com/flashplayer/)
- [Public yum ol6 repository](https://public-yum.oracle.com/public-yum-ol6.repo)

ssh -o StrictHostKeyChecking=no -i /tmp/ws/privateKey opc@<Alpha01A-DBCS IP>

### Set up CDB Connection in SQL Developer

u01/app/oracle/product/12.2.0.1/dbhome_1/sqldeveloper/sqldeveloper/bin/sqldeveloper

Add a Local Port Forward via SSH connection in view panel of SQL Developer

### Access Enterprise Manager DB Express

We will use tunneling to access the Enterprise M Express Console on DBCS, which is running EM Express on port 5500. We will tunnel using 5555 (an arbitrary open port). Open a terminal window and enter the following. Note - do NOT close the window after the tunnel is opened. Note you are entering BOTH the private and public IPs.

ssh -o StrictHostKeyChecking=no -i /tmp/ws/privateKey -L 5555:<Private IP of Alpha01A-DBCS>:5500 opc@<Alpha01A-DBCS IP>

http://localhost:5555/em

You may encounter a bug whereby the browser fails to fully open the web page. This is due to an adobe-flash bug with certain browsers. To resolve this go (while the browser is locked opening the page) to tools (top menu in the browser) and select tools > Web Developer > Debugger. You may need to first right click on the top of the page and select menu to view the menu.

## Lab 200 Database Migration

- [Migration Strategies Document](http://www.oracle.com/technetwork/database/database-appliance/documentation/oda-migration-strategies-1676870.pdf)

### use cases

- To use SQL Developer and command line tools to clone and move a pluggable database from your on-premises database (your Virtual Machine) to your cloud database.
- To use standard Oracle Data Pump tools to export a schema from the on-premises database, and then import that data to your cloud database in a new schema.
- To use RMAN to move a tablespace to the cloud.

### Objectives

1. Hot clone a pluggable database from on-premise to the Cloud.
2. Migrate a schema using Oracle Data Pump.
3. Migrate data using a Transportable Tablespace.
4. Copy data using Database Links.
