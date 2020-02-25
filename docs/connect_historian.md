# Introduction

Customers that have Operational Technology data from SCADA systems that incrementally store industrial process data in a historian database can publish that data Maximo Asset Monitor.   This lab explains how to install and configure a IBM Watson IoT Bulk Data Ingest Connector for SCADA to publish historian time series data into IBM Maximo Asset Monitor.  The [IBM Watson IoT Bulk Data Ingest Connector for SCADA](https://github.com/ibm-watson-iot/mas-scada-bulkingest) is an open source asset and supported by the Community.

# Before You Begin

Collect information regarding the  host operating system (OS) and  OS version the Historian database is installed on.  Make sure the OS is one of the supported operating environments listed in the documentation.  You can install the software by either:
*  Running the installation script
*  Building and running the Connector Container

The facilitator should have already installed and configured using the the Connector [documentation](https://ibm-watson-iot.github.io/mas-scada-bulkingest/0) and the readme in the source [repository](https://github.com/ibm-watson-iot/mas-scada-bulkingest).

## How the Connector Works
It is good to see that you are trying to understand the flow by going thru the code.
It will make it easy for you to understand the flow better, if you install the connector and try to use it.

The connector can be used for:
"Periodically extract data from historian, normalize the data in a format suitable for MAS Datalake, and bulk upload data in MAS Datalake (DB2)".
There are some optional features as well.

Here are the main features of the connector:
Extract data from SCADA historian in batches. The supported databases are mySQL and MSSQL
Optionally parse extracted data to
Identify unique device IDs based on user defined rules
Register device type and devices
Create physical and logical interface in Watson IoT Platform
Send a sample event to WIoTP for WIoTP to create required entity table in Datalake (DB2)
Parse and normalize data in a format suitable for bulk upload in MAS Datalake and register Dimension data based on user defined configuration
Bulk upload data in DB2 in batches


As far as periodic update is concerned, the connector doesn't use cron job (on Linux systems) or schedule task (on Windows systems). This is intentional - basically to avoid any additional OS level configuration and make it work on very old (and at times unsupported) operating environment and hardware that is very common in SCADA environment. While working on Novate POC, we found such systems where we couldn't install the connector and we had to change connector install package and deployment process.

The synchronization loops are in two places, in main script and in java process.

There are two objectives for creating the main script:
- It is a top level wrapper to control Java process. When the java process completes, the script waits for two minutes and restarts the Java process.
- Can be used as an entry script in a docker container  - in case we need to run the connector in a docker container.

The Java process is used to extract data in batch from SCADA, normalize data, and bulk upload data in batch in DB2. This is done in a loop till all historical data is extracted and uploaded. Connector keeps track of timestamp of last extracted record in a cycle and record offset. This is used for next cycle. I think, you didn't look into the Java code, otherwise you could be figured this out.

Note that the documentation is GitHub is still not complete. That work is in progress.

## Contribute
The connector is an open source asset. You can contribute here.  
