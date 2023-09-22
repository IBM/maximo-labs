# Objectives
In this Exercise you will learn how to:

* create the credentials for the Edge Data Collector (EDC) edge entity
* pre-create the device type for the Variable Frequency Drives (VFD's)

---
*Before you begin:*  
This Exercise requires that you have:

1. completed the pre-requisites required for [all labs](../prereqs)
2. completed the previous exercises
 
The Edge Data Collector edge uses the Maximo Monitor capability to use the priveledged gateway device type, which enables the automatic creation of new devices when data is delivered from the gateway on behalf of them.

!!! attention
    This exercise will use the new version of device types introduced in MAS 8.8 which do not require physical and logical interfaces before saving the data in the database and making it available within Monitor.</br>
    However, this currently require you to create the device type for the VFDs manually up front, as automatically creating that through the gateway will result in the classic version of the device type which will require the physical and logical interfaces before the data is available in Monitor.



---
##  Create the EDC edge gateway in Monitor

In this section you will create the credentials for the EDC edge gateway, so the EDC edge can connect to Maximo Monitor.</br>

Login to MAS and navigate to Monitor:
![MAS Monitor](/img/edc_8.11/monitor_devices_01.png)</br></br>

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

Define the Device Id `XX_EDC_GW_01`. Click `Next`:
![Add new Edge device](/img/edc_8.11/monitor_devices_15.png)</br></br>

OPTIONAL: Add a Model name `Edge Data Collector` and Manufacturer name `IBM`. Click `Next`:
![Add new Edge device](/img/edc_8.11/monitor_devices_16.png)</br></br>

Just click `Next`:
![Add new Edge device](/img/edc_8.11/monitor_devices_17.png)</br></br>

Select `Privileged Gateway` and click `Next`:
![Add new Edge device](/img/edc_8.11/monitor_devices_18.png)</br></br>

Click `Next` to let the system auto generate an authentication token:
![Add new Edge device](/img/edc_8.11/monitor_devices_19.png)</br></br>

Just click `Finish`:
![Add new Edge device](/img/edc_8.11/monitor_devices_20.png)</br></br>

You will see the created Device credentials:
![Add new Edge device](/img/edc_8.11/monitor_devices_21.png)</br></br>


!!! attention "Save these credentials"
    It is very important, that you save these credentials as you need them in the next exercise</br>
    AND the authentication token is non-recoverable once you navigate away from this page. 

The gateway is now created in the IoT Tool and it will appear as `Disconnected` until the physical EDC Edge connects:
![Add new Edge device](/img/edc_8.11/monitor_devices_22.png)</br></br>

##  Pre-create device type for the VFDs

You need to create the device type for the VFD´s manually in Monitor to ensure the right version of Device Type is being used later on.</br>

Navigate to Setup from the Monitor Home page:
![Monitor Setup](/img/edc_8.11/monitor_devices_02.png)</br></br>

Select `Devices`:
![Monitor Setup](/img/edc_8.11/monitor_devices_03.png)</br></br>

Click on `Add device type`:
![Add device type](/img/edc_8.11/monitor_devices_04.png)</br></br>

Select `Empty template` as this will create the new version of the device type and click `Next`:
![Empty template](/img/edc_8.11/monitor_devices_05.png)</br></br>

Define the Device type name as `VariableFrequencyDrives` (*exactly like this*), give it a description and press `Create`:
![Template identity](/img/edc_8.11/monitor_devices_06.png)</br></br>

!!! note
    We will define the metrics in a later exersice</br>


!!! tip
    Here is the list of the current canonical models defined within EDC using `PascalCase`: </br>
    <table>
    <thead>
    <tr>
        <th>Device type</th>
        <th>Device Type in Monitor</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td>Variable Frequency Drives</td>
        <td>VariableFrequencyDrives</td>
    </tr>
    <tr>
        <td>Variable Air Volume</td>
        <td>VariableAirVolume</td>
    </tr>
    <tr>
        <td>Uninterruptible Power Supplies</td>
        <td>UninterruptiblePowerSupplies</td>
    </tr>
    <tr>
        <td>Power Meters</td>
        <td>PowerMeters</td>
    </tr>
    <tr>
        <td>Circuit Breakers</td>
        <td>CircuitBreakers</td>
    </tr>
    <tr>
        <td>Protection Relays</td>
        <td>ProtectionRelays</td>
    </tr>
    <tr>
        <td>Heat Meters</td>
        <td>HeatMeters</td>
    </tr>
    <tr>
        <td>Gas Flow Meters</td>
        <td>GasFlowMeters</td>
    </tr>
    </tbody>
    </table>


---
Congratulations you have successfully created the needed gateway in the IoT Tool </br>
and the needed device type in Monitor.</br>
