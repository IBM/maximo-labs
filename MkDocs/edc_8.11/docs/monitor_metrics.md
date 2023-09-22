# Objectives
In this Exercise you will learn how to:

* create the metrics for the devices in Monitor

---
*Before you begin:*  
This Exercise requires that you have:

1. completed the pre-requisites required for [all labs](../prereqs)
2. completed the previous exercises
 
The Edge Data Collector gateway uses the Maximo Monitor capability to use the priveledged gateway device type, which enables the automatic creation of new devices when data is delivered from the gateway on behalf of them.

!!! attention
    This exercise will use the new version of device types introduced in MAS 8.8 which do not require physical and logical interfaces before saving the data in the database and making it accessible within Monitor.</br>
    However, this currently require you to create the device type for the VFDs manually up front, as automatically creating that through the gateway will result in the classic version of the device type which will require the physical and logical interfaces before the data is available in Monitor.



---
##  Pre-create device type for the VFDs

You need to create the device type for the VFDs manually as the first thing.</br>

Login to MAS and navigate to Monitor:
![MAS Monitor](/img/edc_8.11/monitor_devices_01.png)</br></br>

Go into Setup:
![Monitor Connect](/img/edc_8.11/monitor_devices_02.png)</br></br>

Select `Devices`:
![Monitor Connect](/img/edc_8.11/monitor_devices_03.png)</br></br>


Click on `Add device type`:
![Add device type](/img/edc_8.11/monitor_devices_04)</br></br>

Select `Empty template` as this will create the new version of the device type and click `Next`:
![Empty template](/img/edc_8.11/monitor_devices_05)</br></br>

Define the Device type name as `VariableFrequencyDrives` (*not anything else*), give it a description and press `Create`:
![Template identity](/img/edc_8.11/device_05.png)</br></br>

Now is the time to define the metrics that you want Monitor to save and use.</br>
Press `Add metric`:
![Add metric](/img/edc_8.11/device_06.png)</br></br>

Add the following metrics
![Add metrics](/img/edc_8.11/device_07.png)</br>
and click `Add`.</br>

!!! tip
    Here are the Metric names you need to use, as they are defined by the Omnio Edge gateway:</br>
    `motor_torque_percent`</br>
    `dc_bus_voltage_volt`</br>
    `output_frequency_hertz`</br>
    `motor_current_ampere`</br>
    `timestamp`</br>
    `motor_voltage_volt`</br>
    
!!! attention
    Be aware that the Event name and the Metric names are case sensitive - and all in small letters.

Select the `Use this as the default timestamp` so you use the timestamp provided from the devices rather than from the data injection. Click `Save`:
![Default timestamp](/img/edc_8.11/device_08.png)</br></br>

Now the device type is ready for creation of devices by the Omnio Edge gateway - but first you need to create the gateway in Monitor.


##  Create the Edge Data Collector gateway in Monitor

In this section you will create the credentials for the Edge Data Collector gateway, so it can connect to Maximo Monitor.</br>

Navigate to the IoT Tool from the Monitor Home page:
![IoT Tool](/img/edc_8.11/monitor_devices_10.png)</br></br>

It opens a new tab. Navigate to Device Types:
![Add device type](/img/edc_8.11/monitor_devices_11.png)</br></br>

Select `Add Device Type`:
![Add device type](/img/edc_8.11/monitor_devices_12.png)</br></br>

Select `Gateway`, give it the name `XX_EDC_GW` and a short description.</br>
Click `Next` and `Finish`:
![Add new device type](/img/edc_8.11/monitor_devices_13.png)</br></br>

!!! tip
    XX in the device type name should be your initials in case other people are following this lab in the same Maximo Application Suite environment.</br>


Select `Register Devices`:
![Add new device type](/img/edc_8.11/monitor_devices_14.png)</br></br>

Select `Auto-generate my authentication token`and click `Next`:
![Add new Edge device](/img/edc_8.11/monitor_devices_15.png)</br></br>

Select `Auto-generate my authentication token`and click `Next`:
![Add new Edge device](/img/edc_8.11/monitor_devices_16.png)</br></br>

Select `Auto-generate my authentication token`and click `Next`:
![Add new Edge device](/img/edc_8.11/monitor_devices_17.png)</br></br>

Select `Auto-generate my authentication token`and click `Next`:
![Add new Edge device](/img/edc_8.11/monitor_devices_18.png)</br></br>

Click `Next` to let the system auto generate an authentication token:
![Add new Edge device](/img/edc_8.11/monitor_devices_19.png)</br></br>



Select `Auto-generate my authentication token`and click `Next`:
![Add new Edge device](/img/edc_8.11/monitor_devices_.png)</br></br>

Click `Save and finish` and you get to this page:
![Add new Edge device](/img/edc_8.11/device_14.png)</br></br>

!!! attention "Save these credentials"
    It is very important, that you save these credentials as you need them in the next exercise</br>
    AND the authentication token is non-recoverable once you navigate away from this page. 

The gateway is now created in Monitor and it will appear as Disconnected until the physical gateway connects:
![Add new Edge device](/img/edc_8.11/device_14.png)</br></br>


---
Congratulations you have successfully created the needed device types and gateway in Monitor.</br>
