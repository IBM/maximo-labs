# Objectives
In this Exercise you will learn how to add a device to the Device library.

---
*Before you begin:*  
This Exercise requires that you have:

1. completed the pre-requisites required for [all labs](prereqs.md)
2. completed the previous exercises

---

Since PLC's are very customizable you will need to add a new device to the Device library instead of using a pre-configured device in the Device library, like a Variable frequency Drive communicating over Modbus.</br>

Navigate to the Device library page:</br>
![Navigate to Device library](img/add_device_01.png)</br></br>

For OPC UA devices it is possible to either upload a device configuration or to use the built-in data tag auto-detection functionality which is a lot easier.</br>
Select `Add device to library` and the menu item `Scan for devices`:</br>
![Scan for devices](img/add_device_02.png)</br></br>

Select the OPC-UA protocol:</br>
![Scan for devices](img/add_device_03.png)</br></br>

Enter the device details and scroll down:</br>
![Scan for devices](img/add_device_04.png)</br>
!!! tip
    XX in the Device name should be your initials in case other people are following this lab in the same Maximo Application Suite environment.

!!! attention
    If you see a `BadTcpEndpointUrlInvalid` error when you execute the docker command in a few steps, </br>
    then you might need to end the `Server IP address or domain` with a forward slash, like `127.0.0.1:50000/`


</br>
Copy the Device scan command and don't click `Done` just yet:</br>
![Scan for devices](img/add_device_05.png)</br>

Open a terminal window (Mac/Linux) or Command window (Windows) and run the Device scan command:</br>
![Scan for devices execution](img/add_device_06.png)</br></br>

Wait until it has finalized and returned to the command prompt.</br>
The new device has now been added to the Device library.</br>
![Scan for devices execution](img/add_device_07.png)</br></br>

Go back to the browser, click `Done`and then `Leave page`:</br>
![Scan for devices end](img/add_device_08.png)</br></br>

Search for your new device in the Device library:</br>
![Scan for devices result](img/add_device_09.png)</br></br>

Click on your new device to see the metrics (data tags) that was added to this device:</br>
![Scan for devices result](img/add_device_10.png)</br>
Click on `Cancel` once you are done looking at these beautiful data tags 🤗.</br>


---
Congratulations you have successfully added a device to the Device library.</br>
