# Pre-Requisite Instructions

Here are the pre-requisites for this Maximo hands-on lab.  

!!! attention
    This lab requires Maximo Monitor 9.0 or later.</br>
    MAS application entitlement must be `Limited` or higher.

# All Exercises

All Exercises require that you have:

1.  A computer with a Chrome or Firefox browser and internet connectivity.

2.  User access to a Maximo Application Suite environment that can configure Cisco Spaces integration. This require:</br>
o Your user must have access to Maximo Monitor</br>

3.  An IBM ID.  If you don't have an IBM ID you can get one [here](https://www.ibm.com/account/reg/signup?){target=_blank}:<br>
o Click `Login to MY IBM` button<br>
o Click `Create an IBM ID` link

4.  Test your access to the Maximo Application Suite environment.

# Exercise

> - You must have access to the [dnaspaces.io login page](https://dnaspaces.io/login) to continue with this exercise.

![DNA Space Login Page](img/dnaspace_login.png){width=50% height=30%}
>
> - Access to Cisco Spaces is required in order to generate an **Activation Token (JWT token)**. This token will be used to generate the **Activation Key** that allows MAS Monitor to fetch Cisco Spaces location data.
>
> - You must have **MREF locations synced**, as Cisco Spaces locations can only be subscribed to **MREF floor locations** in MAS Monitor.

> ⚠️ If you haven't completed the [Maximo Monitor Real Estate and Facilities Integration (MREF)](/monitor_MREF_integration_9.1/) lab, it is **strongly recommended** to complete that lab **before starting** the Maximo Monitor Cisco Spaces Integration Lab.

> ⚠️ If you haven't completed the [Maximo Monitor Cisco Webex Integration Lab](/monitor_cisco_webex_integration_9.1/), it is **strongly recommended** to complete that as well.  
> Only after assigning a **Cisco Webex device** to an MREF Floor and Space you will be able to retrieve the **Floor Plan** from MREF.  
> This Floor Plan is essential for generating **Heat Maps**, which are used to **visualize user movement patterns** on the floor.


