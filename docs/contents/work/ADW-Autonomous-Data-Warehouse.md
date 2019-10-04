# Getting Started Workshop for Autonomous Data Warehouse (ADW)

- [Oracle's official Learning Library](https://www.oracle.com/goto/adw/tutorial)
- [Learning Path: Getting Started Workshop for Autonomous Data Warehouse](https://apexapps.oracle.com/pls/apex/f?p=44785:50:0:::50:P50_EVENT_ID,P50_COURSE_ID:5925,251)
- [Autonomous Data Warehouse Test Drive Workshop](https://oracle.github.io/learning-library/workshops/journey4-adwc/?page=README.md)
  - [](https://oracle.github.io/learning-library/workshops/journey4-adwc/?page=LabGuide1.md)

## Table of Contents

- [Getting Started Workshop for Autonomous Data Warehouse (ADW)](#getting-started-workshop-for-autonomous-data-warehouse-adw)
  - [Table of Contents](#table-of-contents)
  - [Before You Begin This Workshop](#before-you-begin-this-workshop)
  - [Lab 1 - Getting Started and Provisioning a New Autonomous Data Warehouse](#lab-1---getting-started-and-provisioning-a-new-autonomous-data-warehouse)
  - [Lab 2 - Working with Data Warehouse Services and the Free Sample Data Sets](#lab-2---working-with-data-warehouse-services-and-the-free-sample-data-sets)
  - [Lab 3 - Loading Data into Your New Autonomous Data Warehouse](#lab-3---loading-data-into-your-new-autonomous-data-warehouse)
  - [Lab 4 - Querying External Data](#lab-4---querying-external-data)
  - [Lab 5 - Creating Rich Data Visualizations](#lab-5---creating-rich-data-visualizations)
  - [Additional Bonus Labs for Data Warehouse Developers, Cloud DBAs and Data Scientists](#additional-bonus-labs-for-data-warehouse-developers-cloud-dbas-and-data-scientists)
  - [BONUS Lab 6 - Managing and Monitoring Autonomous Data Warehouse using the Cloud Service Console](#bonus-lab-6---managing-and-monitoring-autonomous-data-warehouse-using-the-cloud-service-console)
  - [BONUS Lab 7 - Scaling and Query Performance in Autonomous Data Warehouse](#bonus-lab-7---scaling-and-query-performance-in-autonomous-data-warehouse)
  - [BONUS Lab 8 - Oracle Machine Learning SQL Notebooks](#bonus-lab-8---oracle-machine-learning-sql-notebooks)
  - [BONUS Lab 9 - Simple Introduction to Machine Learning Algorithms (DBMS_PREDICTIVE_ANALYTICS)](#bonus-lab-9---simple-introduction-to-machine-learning-algorithms-dbmspredictiveanalytics)
  - [BONUS Lab 10 - Using Data Integration Tools with Autonomous Data Warehouse](#bonus-lab-10---using-data-integration-tools-with-autonomous-data-warehouse)
  - [All Done](#all-done)
  - [Learn More About Autonomous Data Warehouse](#learn-more-about-autonomous-data-warehouse)

## Before You Begin This Workshop

Please read the following section as it will help you get ready to run this workshop.

1. Introduction to Autonomous Data Warehouse

    What is an Autonomous Data Warehouse?

    Oracle Autonomous Data Warehouse is built around the market leading Oracle database and comes with fully automated data warehouse specific features that deliver outstanding query performance.  This environment is delivered as a fully managed cloud service running on optimized high-end Oracle hardware systems.  You don’t need to spend time thinking about how you should store your data, when or how to back it up or how to tune your queries.

    We take care of everything for you.

2. Click here to [watch our short video](https://www.youtube.com/watch?v=tZMZODoi2xw) that explains key features in Oracle's Autonomous Data Warehouse.

3. Autonomous Data Warehouse allows you to select the exact combination of storage and CPUs to fit your project and your budget. You will experience the process of selecting CPUs and deciding the exact storage size during this workshop.

    We keep all of your data safe and secure.  It’s always backed up and always encrypted in Oracle’s cloud.  Using our client tools you load all kinds of different types of data from worksheets on your computer, webstore log files to data files stored in Oracle’s cloud-based object store and load that data into your Autonomous Data Warehouse cloud.

    Oracle’s Autonomous Data Warehouse is the perfect quick-start service for fast data loading and sophisticated data reporting and analysis.  Oracle manages everything for you so you can focus on your data.

    Read on to begin your Getting Started journey with Oracle Autonomous Data Warehouse.

4. How to Get Your Free Cloud Trial Account

   To sign into the Oracle Cloud, copy and paste this URL into a browser window: https://cloud.oracle.com/tryit or https://www.oracle.com/cloud/free/

5. Logging in to Oracle Cloud, Selecting a Data Center for your Workshop

6. Lab Pre-requisites – Required Software

    This workshop needs two desktop tools to be installed on your computer to do the exercises in this lab.

    (1). SQL Developer

    To download and install SQL Developer please follow this link, http://www.oracle.com/technetwork/developer-tools/sql-developer/downloads/index.html and select the operating system for your computer. This page also has instructions on how to install SQL Developer on Windows, Mac OSX and Linux.

    If you already have SQL Developer installed on your computer then please check the version. The minimum version that is required to connect to an Oracle Autonomous Data Warehouse Cloud is SQL Developer 17.4.

    (2). Data Visualization Desktop

    To download and install Data Visualization Desktop please follow this link, https://www.oracle.com/technetwork/middleware/oracle-data-visualization/downloads/oracle-data-visualization-desktop-2938957.html and select the operating system for your computer. This page also has instructions on how to install DVD on Windows and Mac OSX.

    If you already have Data Visualization Desktop installed on your computer then please check the version. The minimum version that is required to connect to an Oracle Autonomous Data Warehouse Cloud is 12c 12.2.5.0.0.

7. Getting Help During This Workshop

    [Cloud Customer Connect Forum](https://cloudcustomerconnect.oracle.com/resources/32a53f8587/summary) for Autonomous Data Warehouse

    If you have a question during this workshop then use the Autonomous Data Warehouse Forum to post questions, connect with experts, and share your thoughts and ideas about Oracle Autonomous Data Warehouse.

    Are you are completely new to the Cloud Customer Connect forums? Visit our forum [Getting Started](https://cloudcustomerconnect.oracle.com/pages/1f00b02b84) page to learn how to best leverage community resources.

## Lab 1 - Getting Started and Provisioning a New Autonomous Data Warehouse

duration 15 Min

This lab walks you through the steps of logging into Oracle Cloud, accessing the Oracle Autonomous Data Warehouse console and provisioning your first Autonomous Data Warehouse. The last part of this lab will explore how to connect to your new data warehouse using Oracle SQL Developer.

    Key Objectives:
    1. Sign-in to the Oracle Cloud
    2. Provision a new autonomous data warehouse
    3. Download the client credentials wallet file
    4. Connect from Oracle SQL Developer to your new autonomous data warehouse

[Click here to run Lab 1](http://apexapps.oracle.com/pls/apex/f?p=44785:112:0::::P112_CONTENT_ID:24961)

Click [here](https://www.youtube.com/watch?v=mY1wOBqKEaw&feature=youtu.be) to watch a video demonstration of provisioning a new autonomous data warehouse and connect using SQL Developer.

Useful Links

Now you have completed this lab here are some useful links that provide more information about getting started and provisioning a new Autonomous Data Warehouse:

1. [Getting Started with Autonomous Data Warehouse](https://docs.oracle.com/en/cloud/paas/autonomous-data-warehouse-cloud/user/getting-started.html#GUID-00645C09-4E76-44C6-8BBE-B433D501AADB)
2. [Typical Workflow for Using Autonomous Data Warehouse](https://docs.oracle.com/en/cloud/paas/autonomous-data-warehouse-cloud/user/getting-started.html#GUID-5780368D-6D40-475C-8DEB-DBA14BA675C3)
3. [Starting and Stopping Autonomous Data Warehouse](https://docs.oracle.com/en/cloud/paas/autonomous-data-warehouse-cloud/user/start-stop-grow.html#GUID-01A11B85-D5F7-49FB-95E6-BA77ACC33009)

## Lab 2 - Working with Data Warehouse Services and the Free Sample Data Sets

duration 15 Min

In this lab you will explore the free sample data sets that are included within your new autonomous data warehouse. As part of this lab you will experiment with the selecting different levels of database services that come with your Autonomous Data Warehouse.

    Objectives:
        Learn about the different service levels that are part of autonomous data warehouse (HIGH, MEDIUM, LOW)
        Learn about the free Star Schema Benchmark (SSB) and Sales History (SH) sample data sets
        See how the different levels of database service affect performance and concurrency

[Click here to run Lab 2](http://apexapps.oracle.com/pls/apex/f?p=44785:112:0::::P112_CONTENT_ID:24985)

Click [here](https://apexapps.oracle.com/pls/apex/f?p=44785:112:0::::P112_CONTENT_ID:22791) to watch a video demonstration of running queries against the sample data sets that are part of your Autonomous Data Warehouse.

Useful Links

Now you have completed this lab here are some useful links that provide more information about working with service levels and the free sample data sets.

1. [Sample Star Schema Benchmark (SSB) Queries and Analytic Views](https://docs.oracle.com/en/cloud/paas/autonomous-data-warehouse-cloud/user/sample-queries.html#GUID-431A16E8-4C4D-4786-BE5C-30029AC1EFD8)
2. [Schema diagram for sales history schema (SH)](https://docs.oracle.com/en/database/oracle/oracle-database/18/comsc/schema-diagrams.html#GUID-D268A4DE-BA8D-428E-B47F-80519DC6EE6E), see Figure 3-3.
3. [Connecting with Oracle SQL Developer (earlier than Version 18.2)](https://docs.oracle.com/en/cloud/paas/autonomous-data-warehouse-cloud/user/connect-sql-dev.html#GUID-FB611317-2999-4C8C-8A3B-B3B3D3C5B417)

## Lab 3 - Loading Data into Your New Autonomous Data Warehouse

duration 10 Min

In this lab, you will be uploading files to Oracle Object Storage, creating new sample tables, loading data into those sample tables from files on the OCI Object Storage, and troubleshooting errors relating to your data load jobs.

    Key Objectives:
        Learn how to upload files to Oracle Object Storage
        Learn how to load data from an object store
        Learn how to use the SQL Developer Data Import Wizard to load your data
        Learn how to troubleshoot your data loads

[Click here to run Lab 3](http://apexapps.oracle.com/pls/apex/f?p=44785:112:0::::P112_CONTENT_ID:24986)

Click [here](https://apexapps.oracle.com/pls/apex/f?p=44785:112:0::::P112_CONTENT_ID:22792) to watch a video demonstration of loading data into your Autonomous Data Warehouse

Useful Links

Now you have completed this lab here are some useful links that provide more information about loading data into your new Autonomous Data Warehouse.

1. [Overview of DBMS_CLOUD package used to load, query, and save data.](https://docs.oracle.com/en/cloud/paas/autonomous-data-warehouse-cloud/user/dbmscloud-reference.html#GUID-52C9974C-D95E-4E41-AFBD-0FC4065C029A)
2. [Importing existing Oracle Database schemas into Autonomous Data Warehouse Using Oracle Data Pump.](https://docs.oracle.com/en/cloud/paas/autonomous-data-warehouse-cloud/user/load-data.html#GUID-30DB1EEA-DB45-49EA-9E97-DF49A9968E24)

## Lab 4 - Querying External Data

duration 0 Min

In this lab, you will be querying files directly on Oracle Object Storage without loading them to your autonomous data warehouse.

    Key Objectives:
        Learn how to define external tables against Object Store data sets
        Learn how to query external tables
        Learn how to create data warehouse user

[Click here to run Lab 4](http://apexapps.oracle.com/pls/apex/f?p=44785:112:0::::P112_CONTENT_ID:24984)

Useful Links

Now you have completed this lab here are some useful links that provide more information about how to query external data using your new Autonomous Data Warehouse.

1. [Overview of the CREATE_EXTERNAL_TABLE procedure](https://docs.oracle.com/en/cloud/paas/autonomous-data-warehouse-cloud/user/dbmscloud-reference.html#GUID-2AFBEFA4-992E-4F53-96DB-F560084C7DA9)
2. [DBMS_CLOUD Package File URI Formats.](https://docs.oracle.com/en/cloud/paas/autonomous-data-warehouse-cloud/user/dbmscloud-reference.html#GUID-5D3E1614-ADF2-4DB5-B2B2-D5613F10E4FA)

## Lab 5 - Creating Rich Data Visualizations

duration 15 Min

This lab will walk you through the process of connecting your Autonomous Data Warehouse to Data Visualization Desktop and then use DVD and build sophisticated data visualizations to help your business teams get deeper insights about their data.

    Key Objectives:
        Set Up Local Environment
        Create New Data Visualization Desktop Connection
        Prepare Data Set and Create Visualization

Note that you will need to have installed the Oracle Data Visualization Desktop application to do this lab. There are instructions at the start of this lab that contain links to the software download page for  Data Visualization Desktop.

[Click here to run Lab 5](http://apexapps.oracle.com/pls/apex/f?p=44785:112:0::::P112_CONTENT_ID:24991)

Useful Links

Now you have completed this lab here are some useful links that provide more information about how to visualize data from your Autonomous Data Warehouse.

1. [Getting Started Guide for Oracle Data Visualization Desktop](https://docs.oracle.com/en/middleware/bi/data-visualization-desktop/index.html)
2. [Sharing data visualizations, canvases, or stories](https://docs.oracle.com/en/middleware/bi/data-visualization-desktop/bidvd/share-visualizations-canvases-or-stories.html#GUID-19E377EE-873F-4103-88E5-87839543833D)

## Additional Bonus Labs for Data Warehouse Developers, Cloud DBAs and Data Scientists

duration 0 Min

These additional labs are aimed at Cloud architects, Data Warehouse Developers, Cloud DBAs and Data Scientists and cover the following topics.

More Information

    The bonus labs cover the following topics that will help you expand your knowledge by introducing some more advanced topics for Autonomous Data Warehouse"

    1) Managing and monitoring Autonomous Data Warehouse using the Cloud Console
    2) Using Oracle Machine Learning SQL Notebooks
    3) Introduction to machine learning with DBMS_PREDICTIVE_ANALYTICS
    4) Using data integration tools with Autonomous Data Warehouse

Getting Help During These Bonus Labs

[Cloud Customer Connect Forum](https://cloudcustomerconnect.oracle.com/resources/32a53f8587/summary) for Autonomous Data Warehouse

Don't forget....if you have a question during this bonus labs then use the Autonomous Data Warehouse Forum on CloudCustomerConnect to post questions, connect with experts, and share your thoughts and ideas about Oracle Autonomous Data Warehouse.

Of course, if you are completely new to the Cloud Customer Connect forums then refer to the Getting Started page to learn how to best leverage community resources.

## BONUS Lab 6 - Managing and Monitoring Autonomous Data Warehouse using the Cloud Service Console

duration 10 Min

For this lab you will watch a video demo that shows the capabilities available via the Cloud Console and Autonomous Data Warehouse Service Console.

Target Audience

    The target audience for this bonus lab is: Cloud DBAs, SQL Developers

Objectives

    Key Objectives:
        Learn how to start/stop your Autonomous Data Warehouse instance
        Learn how to recover your Autonomous Data Warehouse database - if needed
        Learn how to use the service console to monitor the performance of your Autonomous Data Warehouse

[Click here to run Lab 6](http://apexapps.oracle.com/pls/apex/f?p=44785:112:0::::P112_CONTENT_ID:24987)

Click [here](https://apexapps.oracle.com/pls/apex/f?p=44785:112:0::::P112_CONTENT_ID:24194) to watch a video demonstration that shows you how to monitor performance of your Autonomous Data Warehouse and perform basic administrative tasks.

Useful Links

Now you have completed this lab here are some useful links that provide more information about the Autonomous Data Warehouse Service Console.

1. Using the [Overview and Activity tabs](https://docs.oracle.com/en/cloud/paas/autonomous-data-warehouse-cloud/user/manage-service.html#GUID-ED34ED88-BC9F-4C1A-B05A-C8E876B1B248) to get real-time and historical information about the utilization of the service
2. More information about the graphs on the  [Console Overview](https://docs.oracle.com/en/cloud/paas/autonomous-data-warehouse-cloud/user/manage-service.html#GUID-3620E2F4-69BA-43FD-A73E-598EE2AD8526) page.
3. More information about the graphs on the [Console Activity](https://docs.oracle.com/en/cloud/paas/autonomous-data-warehouse-cloud/user/manage-service.html#GUID-4A1E8FCA-FAF1-43F5-93E0-559C0145D6C3) page

## BONUS Lab 7 - Scaling and Query Performance in Autonomous Data Warehouse

duration 5 Min

In this lab you will scale up your Oracle Autonomous Data Warehouse instance by adding more CPUs with on interruption to your service. You will watch a recorded demo that shows the performance and concurrency impacts of scaling your service online.

Target Audience

    The target audience for this bonus lab is: Cloud DBAs, SQL Developers

    Key Objectives:
        Learn how to scale up and scale down the number of CPUs and amount of storage used by your Autonomous Data Warehouse
        Understand how scaling affects both concurrency and performance with your Autonomous Data Warehouse

[Click here to run Lab 7](http://apexapps.oracle.com/pls/apex/f?p=44785:112:0::::P112_CONTENT_ID:24988)

Useful Links

    Now you have completed this lab here are some useful links that provide more information how to scale your Autonomous Data Warehouse and monitor the performance of your queries.

1. how to [manage concurrency and priorities](https://docs.oracle.com/en/cloud/paas/autonomous-data-warehouse-cloud/user/manage-service.html#GUID-80E464A7-8ED4-45BB-A7D6-E201DD4107B7)
2. how to [manage run–away SQL statements](https://docs.oracle.com/en/cloud/paas/autonomous-data-warehouse-cloud/user/manage-service.html#GUID-4861BA7F-F9FA-4909-8DC0-4F46AFF80706)
3. Learn about [managing Optimizer Statistics and using hints in your queries](https://docs.oracle.com/en/cloud/paas/autonomous-data-warehouse-cloud/user/manage-service.html#GUID-69906542-4DF6-4759-ABC1-1817D77BDB02)

## BONUS Lab 8 - Oracle Machine Learning SQL Notebooks

duration 10 Min

During this lab you will be using the new Oracle Machine Learning SQL notebook application that is part of your Autonomous Data Warehouse. This browser-based application provides a web interface to run SQL queries and scripts, which can be grouped together within a notebook. Notebooks can be used to build single reports, collections of reports, and dashboards. Oracle Machine Learning provides a simple way to share workbooks with other OML users.

Target Audience

    The target audience for this bonus lab is: Data Scientists, Cloud DBAs, SQL Developers

Key Objectives:

    Learn how to create new Oracle Machine Learning notebook user accounts
    Learn how to run a SQL statement within a SQL Notebook
    Learn how to share notebooks
    Learn how to create and run SQL scripts

[Click here to run Lab 8](http://apexapps.oracle.com/pls/apex/f?p=44785:112:0::::P112_CONTENT_ID:24989)

Useful Links

    Now you have completed this lab here are some useful links that provide more information about Oracle Machine Learning SQL Notebook


    Detailed documentation on how to get started with Oracle Machine Learning for creating SQL and data mining notebooks where you can perform data analytics, data discovery and data visualizations is available here.

    You can store your notebooks as templates, share notebooks, and provide sample templates to other users:

1. [Using the Personal Templates](https://docs.oracle.com/en/cloud/paas/autonomous-data-warehouse-cloud/omlug/using-library-collaborate-users.html#GUID-7FCC9EAC-5FFB-47DA-A50D-318574F50915)
2. [Using the Shared Templates](https://docs.oracle.com/en/cloud/paas/autonomous-data-warehouse-cloud/omlug/using-library-collaborate-users.html#GUID-DCE18C20-5AF3-4537-B621-0037D111C852)
3. [Using the Example Templates](https://docs.oracle.com/en/cloud/paas/autonomous-data-warehouse-cloud/omlug/using-library-collaborate-users.html#GUID-09AD4419-B0DE-4F3B-9FEB-0ABA3AFD6E7A)

## BONUS Lab 9 - Simple Introduction to Machine Learning Algorithms (DBMS_PREDICTIVE_ANALYTICS)
  duration 10 Min
During this lab you will be using the Oracle Machine Learning SQL notebook application to explore how you can use the in-database DBMS_PREDICTIVE_ANALYTICS functionality. DBMS_PREDICTIVE_ANALYTICS provides a set of easy-to-use procedures that simplify the machine learning process.

Target Audience

    The target audience for this bonus lab is: Data Scientists, Cloud DBAs, SQL Developers, Cloud Architects

Objectives

    Key Objectives:
        Learn how to import notebooks into Oracle Machine Learning
        Learn how to use the in-database DBMS_PREDICTIVE_ANALYTICS analytics
        Learn how to use Oracle Machine Learning Examples gallery to explore use cases for other machine learning algorithms

[Click here to run Lab 9](http://apexapps.oracle.com/pls/apex/f?p=44785:112:0::::P112_CONTENT_ID:24990)

## BONUS Lab 10 - Using Data Integration Tools with Autonomous Data Warehouse

duration 60 Min

In this lab, you will configure and use Oracle Data Integration Platform Cloud (DIPC) with Autonomous Data Warehouse. This lab follow a typical enterprise data warehouse reference implementation with ETL/ELT batch processing, real time data replication, and data quality review. You will load data from a flat file and a database table using Oracle Data Integrator (ODI) to your Autonomous Data Warehouse. You will replicate data from a database table to Autonomous Data Warehouse using Oracle Golden Gate (OGG). You will review data quality in your Autonomous Data Warehouse using Oracle Enterprise Data Quality (EDQ).

Target Audience

    The target audience for this bonus lab is: Data Warehouse Developers, Cloud DBAs, Cloud Architects

    Key Objectives:
        Learn how to load data using Oracle Data Integrator (ODI)
        Learn how to replicate data to your Autonomous Data Warehouse with Oracle GoldenGate (OGG)
        Learn how to review data quality by using Oracle Enterprise Data Quality (EDQ)

[Click here to run Lab 10](http://apexapps.oracle.com/pls/apex/f?p=44785:112:0::::P112_CONTENT_ID:24992)

## All Done

duration 0 Min

Congratulations you have completed the Getting Started Workshop for Autonomous Data Warehouse!

## Learn More About Autonomous Data Warehouse

duration 0 Min

This section provides links to additional recommended reading materials and other useful resources.

Recommended Reading

1. [Data Warehousing Made Easy (eBook)](http://www.oracle.com/technetwork/database/bi-datawarehousing/adwc-ebook-4081945.pdf)

Additional Resources

1. Additional Resources:  https://cloud.oracle.com/en_US/datawarehouse/additional-resources
2. [Oracle Autonomous Data Warehouse Cloud Documentation](https://docs.oracle.com/en/cloud/paas/autonomous-data-warehouse-cloud/index.html)
3. [Oracle Machine Learning Documentation](https://docs.oracle.com/en/cloud/paas/autonomous-data-warehouse-cloud/omlug/getting-started-oracle-machine-learning1.html)
4. Join the Autonomous Data Warehouse [forum](https://cloudcustomerconnect.oracle.com/resources/32a53f8587/summary).
