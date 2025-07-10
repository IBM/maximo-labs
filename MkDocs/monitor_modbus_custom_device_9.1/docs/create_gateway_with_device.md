# Objectives
In this Exercise you will learn how to create the Managed Gateway in Monitor and add the new device you've added to the Device library.

---
*Before you begin:*  
This Exercise requires that you have:

1. completed the pre-requisites required for [all labs](prereqs.md)
2. completed the previous exercises

---

#### Add a Managed Gateway

Login to MAS:
![MAS Monitor](img/create_gateway_01.png)</br></br>

Expand Setup under the Monitor section in the left menu and select Gateways:
![Create Gateway](img/create_gateway_02.png)

!!! note "New in MAS 9.1"
    Monitor no longer have a main home page. All interaction with Monitor is initiated from the Monitor section in the left menu</br>

</br>
Select `Add gateway`:
![Create Gateway](img/create_gateway_03.png)</br></br>

Define the gateway ID `XX_MGT_GW_01` and the gateway Type `XX_MGT_GW`.

!!! tip
    XX in the gateway ID and Type should be your initials in case other people are following this lab in the same Maximo Application Suite environment.

Make sure the gateway Configuration is Managed and click `Save`:
![Create Gateway](img/create_gateway_04.png)</br></br>

You will now see your new Managed Gateway, including a `Managed` tag in both the list of Gateways as well as in the gateway definition:
![Create Gateway](img/create_gateway_05.png)</br>

!!! note
    Credentials are automatically "baked into" the docker image for the Managed Gateway.</br>
    This means that the credentials will not be presented to you, as with the other gateway configuration types.</br>


</br>

#### Add your new device to the Managed Gateway

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
It is time to add the Lenze i550simulator device.</br>
Search for `Lenze` in the manufacurer drop-down and select it. Click `Next`:</br>
![Search for Lenze](img/add_device_03.png)</br></br>

Select the i550 product, choose `i550simulator` and click on `Next`:</br>
![Select i550](img/add_device_04.png)</br></br>

Select the `Modbus TCP` protocol:</br>
![Select Modbus TCP](img/add_device_05.png)

!!! tip 
    The simulator only supports the Modbus TCP protocol, so it will fail if you select another protocol.</br>

</br>
Now it is time to use the IP address of the simulator and combine it with port number 10502 separated by `:`, like `192.168.1.64:10502`.</br>
Click on `Next`;
![Define IP Address](img/add_device_06.png)

!!! tip 
    Do not change the `Server or unit ID` as the simulator does not support it.</br>

</br>
Define the Device ID as `XX_Lenze_i550_01` where you replace XX with your initials.</br>
You can see the Product Type of the industrial device you have chosen, i.e. Variable Frequency Drives for the Lenze i550.</br>
Click on the `Device type` and you should see this:
![Configure Device ID](img/add_device_07.png)</br></br>

You will create your own Device Type. Since you have not yet done so, you just type `XX_VFD` where you replace XX with your initials:</br>
Click on the new device type to create it and click `Next`:
![Configure Device type](img/add_device_08.png)

!!! tip 
    You can select your own Device Type from the drop-down list once you have created it.</br>

</br>
Define the Data frequency to 60000 (60 seconds) and it will automatically be used when you select the metrics:</br>
![Configure frequency](img/add_device_09.png)</br></br>

Select all the Metrics. Click `Save`:
![Select data points](img/add_device_10.png)


</br>
You will now see your new added device being a part of your new Managed Gateway:
![Device added](img/add_device_11.png)</br></br>

---
Congratulations you have successfully created the Managed Gateway in Monitor and added an instance of the newly added device in the Device library.</br>

[Add device]: img/add_device_01.png
[Use device library]: img/add_device_02.png