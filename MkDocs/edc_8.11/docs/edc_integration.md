# Objectives
In this Exercise you will learn how to:

* Create a configuration in the Omnio Configurator
* Add an endpoint to the configuration
* Add devices to the configuration

---
*Before you begin:*  
This Exercise requires that you have:

1. completed the pre-requisites required for [all labs](../prereqs) and for this exercise
2. completed the previous exercises
 
A good starting point is to get the IP address of the Windows Server as that will be the IP address of the simulated devices.</br>
Open a CMD window and execute `ipconfig` so you can see the public ethernet IP address:
![ipconfig](/img/edc_8.11/omnio_configuration_00.png)</br>
In this case the IP address is 149.81.201.83.


---
##  Create a new configuration

Login to the [Omnio Configuration tool](https://config.omnio.io/){target=_blank}:  
![Login](/img/edc_8.11/omnio_configuration_01.png)</br></br>

Click on `Add configuration`:
![Add configuration](/img/edc_8.11/omnio_configuration_02.png)</br></br>

Give it a name:
![Configuration name](/img/edc_8.11/omnio_configuration_03.png)</br></br>

##  Add an endpoint
Add an endpoint:
![Add endpoint](/img/edc_8.11/omnio_configuration_04.png)</br></br>

Select Maximo Application Suite:
![Select MAS](/img/edc_8.11/omnio_configuration_05.png)</br></br>

Add the credentials you saved in the previous exercise and click `Finish`:
![Enter credentials](/img/edc_8.11/omnio_configuration_06.png)</br>


!!! tip 
    The URL is defined by `<MAS tenant id>.messaging.iot.<MAS domain>`</br>
</br></br>

## Add devices

It is time to add the Lenze i550 devices. Click on `Add device`;
![Add device](/img/edc_8.11/omnio_configuration_07.png)</br></br>

Search for Lenze and select it:
![Search Lenze](/img/edc_8.11/omnio_configuration_08.png)</br></br>

Select the i550 product and click `Next`:
![Select i550](/img/edc_8.11/omnio_configuration_09.png)</br></br>

Give the device a name. This will become the Device ID in Monitor.</br>
Select Modbus TCP. Enter the IP Address acquired in the beginning.</br>
Select Slave ID 1, which will refer to the first device defined in the `config.json` of the Unslave simulator. Click `Next`:
![Configure protocol](/img/edc_8.11/omnio_configuration_10.png)</br></br>

Select the eight first tags. Change the Base Frequency to 60000 ms (1 minute), which will change all the Frequency fields of the selected tags. Click `Finish`:
![Select data points](/img/edc_8.11/omnio_configuration_11.png)</br></br>

Once the first Lenze device is created it is easy to clone it for the second one:
![Clone device](/img/edc_8.11/omnio_configuration_12.png)</br></br>

Enter the Device label and slave ID 2. Click `Next`:
![Configure protocol](/img/edc_8.11/omnio_configuration_13.png)</br></br>

The data point settings are cloned automatically. Click `Finish`:
![Configure data points](/img/edc_8.11/omnio_configuration_14.png)</br></br>

A red box in the lower left corner indicates that the changes you have made to the configuration have not yet been saved. Click on `Save and deploy`:
![Save](/img/edc_8.11/omnio_configuration_15.png)</br></br>

The Deployment Guide appears:
![Deployment Guide](/img/edc_8.11/omnio_configuration_16.png)</br></br>


---
Congratulations you have successfully created the Omnio Edge configuration.</br>
