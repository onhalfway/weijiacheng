# ADW Practice

- Created: 2019/10/04
- Region: Seoul
- DB Name: DBSeoul
- User: ADMIN
- Password: Mi.....
- CPU Core: 2

## DB Connection

- Download Client Credentials (Wallet)
- Connection Strings

| TNS Name       | Connection String                                                                       |
| -------------- | --------------------------------------------------------------------------------------- |
| DBSeoul_HIGH   | adb.ap-seoul-1.oraclecloud.com:1522/vzzqkvynnozckjp_dbseoul_high.adwc.oraclecloud.com   |
| DBSeoul_MEDIUM | adb.ap-seoul-1.oraclecloud.com:1522/vzzqkvynnozckjp_dbseoul_medium.adwc.oraclecloud.com |
| DBSeoul_LOW    | adb.ap-seoul-1.oraclecloud.com:1522/vzzqkvynnozckjp_dbseoul_low.adwc.oraclecloud.com    |

## Lab 2 queries on sample data sets provided out of the box with ADW.

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

## Lab 3

Configure OSS Classic in SQL Developer Connection
Service Base URL: https://[Service Name]-[Identity Domain].storage.oraclecloud.com

- [Loading Data from Files in the Cloud](https://www.oracle.com/pls/topic/lookup?ctx=en/cloud/paas/autonomous-data-warehouse-cloud&id=CSWHU-GUID-07900054-CB65-490A-AF3C-39EF45505802)
  - Note:Some tools like SQL*Plus and SQL Developer use the ampersand character (&) as a special character. If you have the ampersand character in your password use the SET DEFINE OFF command in those tools as shown in the example to disable the special character and get the credential created properly.
- [CREATE_CREDENTIAL Procedure](https://docs.oracle.com/en/cloud/paas/autonomous-data-warehouse-cloud/user/dbms-cloud.html#GUID-742FC365-AA09-48A8-922C-1987795CF36A)

- [OCI OSS URI](https://docs.oracle.com/en/cloud/paas/autonomous-data-warehouse-cloud/user/file-uri-formats.html#GUID-5D3E1614-ADF2-4DB5-B2B2-D5613F10E4FA)

https://objectstorage.<region_name>.oraclecloud.com/n/<tenant_name>/b/<bucket_name>/o/<filename>

Base URL: https://objectstorage.ap-seoul-1.oraclecloud.com/n/faworaclecloud02/b/ADWCLab/o

URL Path (URI): https://objectstorage.ap-seoul-1.oraclecloud.com/n/faworaclecloud02/b/ADWCLab/o/channels.csv

OSS-admin-group-policy:
Allow group Object-Upload-Group to manage object-family in compartment fawgroup

ossadmin Auth Token: n>kL9fi<-gZpGArNw(B2

## [Lab4](https://oracle.github.io/learning-library/workshops/journey4-adwc/?page=LabGuide4.md)
