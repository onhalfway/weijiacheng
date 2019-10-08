# [ADW Practice](https://oracle.github.io/learning-library/workshops/journey4-adwc/?page=README.md)

- Created: 2019/10/04
- Region: Seoul
- DB Name: DBSeoul
- User: ADMIN
- Password: Mi.....
- CPU Core: 2

## [Lab1: Scaling and Performance in Autonomous Data Warehouse](https://oracle.github.io/learning-library/workshops/journey4-adwc/?page=LabGuide1.md)

DB Connection

- Download Client Credentials (Wallet)
- Connection Strings

| TNS Name       | Connection String                                                                       |
| -------------- | --------------------------------------------------------------------------------------- |
| DBSeoul_HIGH   | adb.ap-seoul-1.oraclecloud.com:1522/vzzqkvynnozckjp_dbseoul_high.adwc.oraclecloud.com   |
| DBSeoul_MEDIUM | adb.ap-seoul-1.oraclecloud.com:1522/vzzqkvynnozckjp_dbseoul_medium.adwc.oraclecloud.com |
| DBSeoul_LOW    | adb.ap-seoul-1.oraclecloud.com:1522/vzzqkvynnozckjp_dbseoul_low.adwc.oraclecloud.com    |

## [Lab 2: Getting Started and Provisioning a New Autonomous Data Warehouse](https://oracle.github.io/learning-library/workshops/journey4-adwc/?page=LabGuide2.md) 

queries on sample data sets provided out of the box with ADW.

You will run a basic query on the SSB data set which is a 1TB data set with one fact table with around 6 billion rows, and several dimension tables.

```SQL
select c_city,c_region,count(*) from ssb.customer c_high group by c_region, c_city order by count(*);

select sum(lo_extendedprice*lo_discount) as revenue
from ssb.lineorder, ssb.dwdate
where lo_orderdate = d_datekey
and d_yearmonthnum = 199401
and lo_discount between 4 and 6
and lo_quantity between 26 and 35;
```

## [Lab 3: Working with Data Warehouse Services and the Free Sample Data Sets](https://oracle.github.io/learning-library/workshops/journey4-adwc/?page=LabGuide3.md)

Configure OSS Classic in SQL Developer Connection
Service Base URL: https://[Service Name]-[Identity Domain].storage.oraclecloud.com

- [Loading Data from Files in the Cloud](https://www.oracle.com/pls/topic/lookup?ctx=en/cloud/paas/autonomous-data-warehouse-cloud&id=CSWHU-GUID-07900054-CB65-490A-AF3C-39EF45505802)
  - Note:Some tools like SQL*Plus and SQL Developer use the ampersand character (&) as a special character. If you have the ampersand character in your password use the SET DEFINE OFF command in those tools as shown in the example to disable the special character and get the credential created properly.
- [CREATE_CREDENTIAL Procedure](https://docs.oracle.com/en/cloud/paas/autonomous-data-warehouse-cloud/user/dbms-cloud.html#GUID-742FC365-AA09-48A8-922C-1987795CF36A)

- [OCI OSS URI](https://docs.oracle.com/en/cloud/paas/autonomous-data-warehouse-cloud/user/file-uri-formats.html#GUID-5D3E1614-ADF2-4DB5-B2B2-D5613F10E4FA)

https://objectstorage.<region_name>.oraclecloud.com/n/<tenant_name>/b/<bucket_name>/o/<filename>

Base URL: https://objectstorage.ap-seoul-1.oraclecloud.com/n/faworaclecloud02/b/ADWCLab/o

file URL Path (URI): https://objectstorage.ap-seoul-1.oraclecloud.com/n/faworaclecloud02/b/ADWCLab/o/channels.csv

OSS-admin-group-policy:
Allow group Object-Upload-Group to manage object-family in compartment fawgroup

ossadmin Auth Token: n>kL9fi<-gZpGArNw(B2

## [Lab4: Querying External Data](https://oracle.github.io/learning-library/workshops/journey4-adwc/?page=LabGuide4.md)

## [Lab5: Querying External Data](https://oracle.github.io/learning-library/workshops/journey4-adwc/?page=LabGuide5.md)

## [Lab6: Managing and Monitoring Autonomous Data Warehouse using the Cloud Service Console](https://oracle.github.io/learning-library/workshops/journey4-adwc/?page=LabGuide6.md)

## [Lab7: Managing and Monitoring Autonomous Data Warehouse using the Cloud Service Console](https://oracle.github.io/learning-library/workshops/journey4-adwc/?page=LabGuide7.md)

## [Lab8: Using Oracle Machine Learning SQL Notebooks](https://oracle.github.io/learning-library/workshops/journey4-adwc/?page=LabGuide8.md)

- [Sessionization with MATCH_RECOGNIZE and JSON](https://livesql.oracle.com/apex/livesql/file/tutorial_EWB8G5JBSHAGM9FB2GL4V5CAQ.html), on the free Oracle [livesql.oracle.com](http://livesql.oracle.com/) site.

## [Lab9: Using Oracle Machine Learning SQL Notebooks](https://oracle.github.io/learning-library/workshops/journey4-adwc/?page=LabGuide9.md)

- [Machine Learning notebook using DBMS_DATA_MINING PL/SQL package](https://docs.oracle.com/cd/E18283_01/appdev.112/e16760/d_datmin.htm)
- [Review the Oracle Database Data Mining documentation](https://docs.oracle.com/en/database/oracle/oracle-database/18/dmapi/introduction-to-oracle-data-mining.html)

## [Lab10: Using Data Integration Tools with Autonomous Data Warehouse](https://oracle.github.io/learning-library/workshops/journey4-adwc/?page=LabGuide10.md)

TODO

- [Getting Started with Oracle Data Integration Platform Cloud.](https://docs.oracle.com/en/cloud/paas/data-integration-platform-cloud/using/getting-started-data-integration-platform-cloud.html#GUID-72E6BAA9-260B-4098-90A8-D42B95FC9010)
- [Follow these instructions to provision the DIPC and DBCS services](https://docs.oracle.com/en/cloud/paas/data-integration-platform-cloud/tutorial-create-dipc-instance-oci-classic/)
  - DIPC Governance Edition to include ODI, OGG, and EDQ in the deployment.
  - the default CDB name of ORCL and the default PDB name of PDB1.
  - [connect to your DIPC service using your SSH key](https://docs.oracle.com/en/cloud/paas/data-integration-platform-cloud/using/accessing-virtual-machine-secure-shell.html)

## Learn More About Autonomous Data Warehouse...

Use these links to get more information about Oracle Autonomous Data Warehouse

1. [Oracle Autonomous Data Warehouse website](https://www.oracle.com/database/data-warehouse/index.html)
2. [Oracle Autonomous Data Warehouse ipaper](http://www.oracle.com/us/products/database/autonomous-dw-cloud-ipaper-3938921.pdf)
3. [Oracle Autonomous Data Warehouse Documentation](https://docs.oracle.com/en/cloud/paas/autonomous-data-warehouse-cloud/index.html)
4. [Additional Autonomous Data Warehouse Tutorials](https://docs.oracle.com/en/cloud/paas/autonomous-data-warehouse-cloud/tutorials.html)
