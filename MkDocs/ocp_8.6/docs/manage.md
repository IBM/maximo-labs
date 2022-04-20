# Objectives
In this exercise you will learn how to:

*  Set up Maximo Manage application with Health and demo data

## Manage with Health & Demo Data

### Manage version 8.2.0 - Health version 8.4.0

1\. From the Maximo Application Suite's administrator catalog, click on the Manage tile to start the deployment. Click the blue Continue button. Select 'Manual' as the upgrade strategy. Click Deploy version 8.2.0. Wait for the application to be ready for configuration (approximate 3 minutes).

2\. When the message: 'Manage is ready to be activated..." shows up, click on the blue Activate button. Click the Database tile to configure. Insert the JDBC URL. Replace xxxx with your id.

```
jdbc:db2://c-db2wh-xxxxxxxxxxxxx-db2u.zen.svc:50001/BLUDB:sslConnection=true;
```

3\. Provide the database username (`maximo`) and the password previously created. 

4\. For Security, download the DB2's SSL certificate from the CP4D dashb oard. Open it in a text editor and copy/paste into the Certificate content field. Type `db2CA` as an alias. Click Save.

5\. From the Components section, check 'Health'.

6\. Click 'Show advanced settings'. Click the System managed radio button under Database. Type `maximo` as a **schema**. Type `MAXINDEX` as **Table space**. Type `MAXDATA` as **Index space**. 

7\. Check the box on 'Install demo data'.

8\. Click the System managed radio button on Server bundles. Keeping everything default, drop-down the Mobile (optional) and select `default`.

9\. Scroll back up and click blue 'Activate' button from the top-right corner. A new popup window with Activate button shows up. Wait a minute before clicking on Activate again.

!!! note

    ⏰ Wait 3+ hours. 

### Validate Manage & Health

1\. During the deployment process, you may check the logs of `maxinst` pod. 

![img](/img/ocp_8.6/manage-health-validate-01.png)

2\. You will see a completed message when the `maxinst` is finished processing.

![img](/img/ocp_8.6/manage-health-validate-02.png)

3\. Wait until you see Active.

![img](/img/ocp_8.6/manage-health-validate-03.png)

### Set up 'maxinst' user account and log in to Manage and Health

1\. From the Maximo Application Suite administration, go to Users and search for `maxinst` user. Edit the user.

![img](/img/ocp_8.6/manage-health-validate-04.png)

!!! note

    The installation of demo data includes all demo users. Before you can use any of the demo user accounts, you must first configure their email and password.

2\. Set the dummy email and click on Replace forgotton password. Give maxadmin the full admin rights on the Suite. Click Save.

!!! tip

    Setting up user accounts usually takes a few minutes while the database is synchronized. Check the usersync pods of the respective projects for troubleshooting (if necessary).

3\. Log out as an admin user and log in as maxadmin. Launch Manage and Health applications to validate. Accept the self-signed warning if prompted.

![img](/img/ocp_8.6/manage-health-validate-05.png)

![img](/img/ocp_8.6/manage-health-validate-06.png)

![img](/img/ocp_8.6/manage-health-validate-07.png)

## 👏 Congratulations

You have completed the deployment of Maximo Manage and Maximo Health.

[Maximo Manage URL](https://www.ibm.com/docs/en/maximo-manage/8.2.0)
