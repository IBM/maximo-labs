# Objectives
In this Exercise you will learn how to add a second simulator device to the Managed Gateway.</br>

---
*Before you begin:*  
This Exercise requires that you have:

1. completed the pre-requisites required for [all labs](prereqs.md)
2. completed the previous exercises
 
---

Filter to find and select your Gateway </br>
- select it and you should also see devices handled by your Managed Gateway:</br>
![View your Managed Gateway](img/2nd_device_01.png)</br></br>

In the Managed Gateway click on `Add device`:</br>
[![Add device]][Add device]{target=_blank}</br>

The `Use device library` will automatically be selected, as a Managed Gateway only supports devices from the library. Simply click on `Continue`:  
[![Use device library]][Use device library]

!!! note
    The type of gateway defines which types of devices that can be added to the gateway.</br>
    This is automatically handled by Monitor.</br></br>
    Managed Gateway: OT devices from the device library.</br>
    Standard/Privileged Gateway: IoT devices are added as custom devices.</br>

</br>
It is time to add the Json simulator-3 device.</br>
Search for `IBM` in the manufacurer drop-down and select it. Click `Next`:</br>
![Search for IBM](img/2nd_device_04.png)</br></br>

Select the HTTP Device - main product, choose `Simulator-3` and click on `Next`:</br>
![Select Simulator-3](img/2nd_device_05.png)</br></br>

Select the `http` protocol for endpoint:</br>

!!! tip 
    The simulator is running in our local machine at http://localhost:8080 or http://127.0.0.1:8080 .</br>

</br>
Now it is time to use the IP address of the simulator and  port number `127.0.0.1`, `8080`.</br>
Click on `Next`;
![Define IP Address](img/2nd_device_06.png)

!!! tip 
    Context path of the URL should be added to the datapoints in the `endpoint` column during CSV upload.</br>

</br>
Define the Device ID as `Json-over-http_Simulator-3`.</br>
You can see the Product Type as Custom Device, i.e. The product type of all the custom device added to the device library.</br>
Click on the `Device type` and you should see this:
![Configure Device ID](img/2nd_device_07.png)</br></br>

You can either select the old device type or create new Device Type:</br>
Click on the `XX_Json_Type` and click `Next`:
![Configure Device type](img/2nd_device_08.png)

!!! tip 
    You can select your own Device Type from the drop-down list once you have created it.</br>

</br>
Define the Data frequency to 30000 (30 seconds) and it will automatically be used when you select the metrics:</br>
![Configure frequency](img/2nd_device_09.png)</br></br>

Select all the Metrics. Click `Save`:
![Select data points](img/2nd_device_10.png)

</br>
You will now see your 2nd device being a part of your Managed Gateway:
![Device added](img/2nd_device_11.png)</br></br>

---
Congratulations you have successfully added another simulator device to your Managed Gateway.</br>

[Add device]: img/2nd_device_02.png
[Use device library]: img/2nd_device_03.png