# Exercise 5 - Post-deployment

**Objectives**

In this Exercise you will learn how to:

* Configure your browser to run MAS.
* Log in to MAS using out-of-the-box credentials.
* Prepare Manage EAM's admin user: `maxadmin`.

## Accept Certificates

Accept self-signed certificate warnings.

1\. Go to OpenShift project `mas-masdemo-core`, Networking, Routes.

2\. Click the "admin" URL. Accept the default self-signed certificate warning.

3\. Replace the word `admin` with the word `api` in the URL. Accept self-signed warning.  

4\. Click the browser's back button. 

!!! note

    Please note that you will be accepting multiple self-signed certificate warnings as you progress further. This is a normal behavior for all browsers. 

## Login

Log in using superuser credentials.

1\. Go to OpenShift project `mas-masdemo-core`, Secrets.

2\. Search for "superuser". Click reveal username and password. Log in.

## Update User

Update/sync `maxadmin` user.

1\. Edit `maxadmin` user. Supply a dummy email address and change password (15 characters).

2\. Log in using maxadmin account. Access Manage and Monitor.

🎉 👏 🎉 **Congratulations! You have completed the deployment of IBM Maximo Application Suite with Manage, IoT and Monitor.**
