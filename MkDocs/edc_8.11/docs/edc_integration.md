# Objectives
In this Exercise you will learn how to:

* Create an Edge Data Collector (EDC) Integration in Monitor
* Add an endpoint to the Integration
* Add devices to the Integration

---
*Before you begin:*  
This Exercise requires that you have:

1. completed the pre-requisites required for [all labs](../prereqs)
2. completed the previous exercises
 
A good starting point is to get the IP address of the Windows Server as that will be the IP address of the simulated devices.</br>
Open a CMD window and execute `ipconfig` so you can see the public ethernet IP address:
![ipconfig](/img/edc_8.11/edc_integration_00.png)</br>
In this case the IP address is 149.81.201.83.


---
##  Create a new Edge Data Collector (EDC) Integration in Monitor

Navigate to the Configure devices in Edge Data Collector from the Monitor Home page:
![EDC Tile](/img/edc_8.11/edc_integration_01.png)</br></br>

Click on `Add integration`:  
![Add integration](/img/edc_8.11/edc_integration_02.png)</br></br>

Give it a name:
![Integration name](/img/edc_8.11/edc_integration_03.png)</br></br>


##  Add an endpoint
The endpoint of the Integration configuration is where the gateway connection credentials we defined previously has to be added. This is where the EDC edge will send the unified data from the devices.</br></br>
Click on `Add endpoint` and the select `Maximo`:
![Add endpoint](/img/edc_8.11/edc_integration_04.png)</br></br>

Add the credentials you saved in the previous exercise and click `Finish`:
![Enter credentials](/img/edc_8.11/edc_integration_05.png)</br>


!!! tip 
    The URL is defined by `<MAS tenant id>.messaging.iot.<MAS domain>`</br>
</br></br>

## Add devices

EDC provides a vast library of pre-configured connectors for a range of industrial devices.</br></br>

It is time to add the Lenze i550 devices. Click on `Add device`;
![Add device](/img/edc_8.11/edc_integration_06.png)</br></br>

Search for Lenze in the manufacurer drop-down and select it:
![Search Lenze](/img/edc_8.11/edc_integration_07.png)</br></br>

Select the i550 product and click `Next`:
![Select i550](/img/edc_8.11/edc_integration_08.png)</br></br>

Give the device a name. This will become the Device ID in Monitor.</br>
Select Modbus TCP. Enter the IP Address acquired in the beginning.</br>
Select Server ID 1, which will refer to the first device defined in the `config.json` of the Unslave simulator. Click `Next`:
![Configure protocol](/img/edc_8.11/edc_integration_09.png)</br></br>

Select the eight first tags. Change the Base Frequency to 60000 ms (1 minute), which will change all the Frequency fields of the selected tags. Click `Finish`:
![Select data points](/img/edc_8.11/edc_integration_10.png)</br></br>

!!! tip 
    Standardized metrics use labels, units, and values that are unified to the standard Edge Data Collector device type.</br>
    Synthesized metrics are created by using other metrics. Some standardized metrics are synthesized, but the metrics are listed as only standardized metrics.

Once the first Lenze device is created it is easy to duplicate it for the second one:
![Duplicate device](/img/edc_8.11/edc_integration_11.png)</br></br>

Enter the Device name and Server ID 2. Click `Next`:
![Configure protocol](/img/edc_8.11/edc_integration_12.png)</br></br>

The data point settings are cloned automatically. Click `Finish`.</br>
A red box in the upper right corner indicates that the changes you have made to the integrationn have not yet been deployed. Click on `Save and deploy`:
![Save](/img/edc_8.11/edc_integration_13.png)</br></br>

The Deployment guide appears:
![Deployment Guide](/img/edc_8.11/edc_integration_14.png)</br></br>


---
Congratulations you have successfully created an Edge Data Collector Integration.</br>
