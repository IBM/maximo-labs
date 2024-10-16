# Objectives
In this Exercise you will learn how to add a second industrial device to the Managed Gateway.</br>
This time you will add it based on your Device Type rather than from the Managed Gateway.

---
*Before you begin:*  
This Exercise requires that you have:

1. completed the pre-requisites required for [all labs](prereqs.md)
2. completed the previous exercises
 
Please find the IP address of the machine the [Modbus simulator](setup_simulator.md) is running on.
I was running the simulator on my local network on a machine with the IP address: 192.168.1.42.

---

Expand Setup in the left menu and select `Device types`:
![Goto Device Types](img/add_device_21.png)</br></br>

Filter on your initials and the click on `Add device +`:  
![Add new device](img/add_device_22.png)</br></br>

The `Use device library` will automatically be selected, as this Device type is based on a device from the library. Filter to find and select your Gateway Type in the first dropdown:
![Select Gateway](img/add_device_23.png)</br></br>

Select your Managed Gateway in the second dropdown:
![Gateway selected](img/add_device_24.png)</br></br>

You should now see your gateway type and name. Click on `Continue`:
![Select Modbus TCP](img/add_device_25.png)</br>

!!! note "New in MAS 9.0"
    Adding a new device and adding it to a Managed Gateway is handled as a natural part of the flow. That means only managed gateways types are shown in the first dropdown and only instances of the selected managed gateway type in the second dropdown box.

Find and select the Lenze i550 device and click `Next`.</br>
Select the `Modbus TCP` protocol.</br>
Use the IP address of the simulator using port 20502, like `192.168.1.42:20502`.</br>
Click on `Next`;
![Define IP Address](img/add_device_26.png)</br></br>

Define the Device ID as `XX_Lenze_i550_02` where you replace XX with your initials.</br>
Click `Next`:
![Configure Device ID](img/add_device_27.png)</br></br>

!!! tip 
    The Device type has already been selected, as the flow knows that the new device is added based on the Device type.</br>

Define the Data frequency to 60000 (60 seconds)</br>
Select the 9 Standard metrics, that was also selected for the first device.</br>
Click `Save`:
![Configure Device type](img/add_device_28.png)</br></br>

You can now see both your VFD devices - navigate to the Gateways tab:</br>
![Configure frequency](img/add_device_29.png)</br></br>

Filter to find and select your Gateway </br>
- select it and you should also see both VFD devices handled by your Managed Gateway:</br>
![Configure frequency](img/add_device_30.png)</br></br>

---
Congratulations you have successfully added another industrial device to your Managed Gateway.</br>
