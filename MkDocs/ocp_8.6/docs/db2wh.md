# Objectives
In this exercise you will learn how to:

*  Set up DB2 Wareshouse in Cloud Pak for Data
*  Create an instance of DB2 server for Manage

## DB2 Warehouse Instance in Cloud Pak for Data

### Prerequisite

As part of the Cloud Pak for Data 3.5, ensure you have already installed [DB2 Warehouse service](https://github.com/aroute/cp4d35/blob/main/README.md#db2-warehouse) via the command line script.

1\. Log in to CP4D dashboard.

![img](/img/ocp_8.6/cp4d-db2wh-01.png)

2\. Click on the hamburger menu - Services - Services catalog.

![img](/img/ocp_8.6/cp4d-db2wh-02.png)

3\. Search `db2wh`. Click the available tile.

![img](/img/ocp_8.6/cp4d-db2wh-03.png)

4\. Click Provision instance

![img](/img/ocp_8.6/cp4d-db2wh-04.png)

5\. Uncheck 'Deploy database on dedicated nodes'. Under 'Storage structure' select 'Single location for all data'. Under 'Select a supported sector size' check '4K sector size'. Click Next.

!!! warning

    These settings are for learning purposes. Do not apply exactly the same for production scenarios.

![img](/img/ocp_8.6/cp4d-db2wh-05.png)

6\. Under 'Advanced configuration' check Oracle compatibility. Under 'Workload' drop-down, select 'Operational Analytics'. Click Next.

![img](/img/ocp_8.6/cp4d-db2wh-06.png)

7\. For the 'storage class' select 'ibmc-file-gold-gid'. Click Next.

![img](/img/ocp_8.6/cp4d-db2wh-07.png)

8\. Click Create to create the database instance.

![img](/img/ocp_8.6/cp4d-db2wh-08.png)

!!! note

    ⏰ It may take up to 10 minutes for the instance to be created.

9\. When the instance is created, you may drop-down the 3-dot menu to check the details.

![img](/img/ocp_8.6/cp4d-db2wh-09.png)

![img](/img/ocp_8.6/cp4d-db2wh-10.png)

## Create Database User

1\. Click on the hamburger menu - Administration - User management.

![img](/img/ocp_8.6/cp4d-db2wh-11.png)

2\. Click 'New user' button.

![img](/img/ocp_8.6/cp4d-db2wh-12.png)

3\. Create a new user called `maximo` with dummy email address. Define a password and a 'User' role. Click Create.

![img](/img/ocp_8.6/cp4d-db2wh-13.png)

4\. Click on the hamburger menu - Instances. 

![img](/img/ocp_8.6/cp4d-db2wh-14.png)

5\. Under the Instances, drop-down the 3-dot menu and select 'Manage access'.

![img](/img/ocp_8.6/cp4d-db2wh-15.png)

6\. Click 'Add users' button. Check `maximo`. Drop-down the Role and select 'admin'. Click Add.

![img](/img/ocp_8.6/cp4d-db2wh-16.png)

7\. Go to 'My data: Databases'. Select your database instance details. Make a note of your 'Deployment id'.

![img](/img/ocp_8.6/cp4d-db2wh-17.png)

## JDBC URL

Prepare your JDBC URL. Copy deployment ID (random numbers) and replace xxxxxxxxxxxxx with your deployment id.
```
jdbc:db2://c-db2wh-xxxxxxxxxxxxx-db2u.zen.svc:50001/BLUDB:sslConnection=true;
```
```
jdbc:db2://c-db2wh-1650206381239231-db2u.zen.svc:50001/BLUDB:sslConnection=true;
```