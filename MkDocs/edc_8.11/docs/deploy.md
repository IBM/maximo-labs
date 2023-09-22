# Objectives
In this Exercise you will learn how to:

* Deploy the configuration on the Omnio Edge gateway
* Verify data flowing into Maximo Monitor

---
*Before you begin:*  
This Exercise requires that you have:

1. completed the pre-requisites required for [all labs](../prereqs) and for this exercise
2. completed the previous exercises
3. ensured the simulator is running as described in [exercise 1](/edc_8.11/setup/#configure-the-modbus-simulator){target=_blank}.</br>

---

## Deploy the configuration on the Omnio Edge gateway

At the end of the previous exercise the Deployment Guide appeared. </br>
Click on the docker command to copy it to the clipboard :
![Deployment Guide](/img/edc_8.11/omnio_configuration_16.png)</br></br>

Open a terminal window (Mac/Linux) or Command window (Windows) on the Omnio Edge gateway and then paste the docker command line from the clipboard. Click enter to execute it, and you should see the following:
![Start Omnio Edge](/img/edc_8.11/omnio_configuration_17.png)</br></br>

## Verify data flowing into Maximo Monitor

Navigate to Monitor / Connect and verify the Omnio_Edge_01 is in Connected state - and the two devices have been created automatically by the gateway.
![Omnio devices in Monitor Connect](/img/edc_8.11/omnio_configuration_18.png)</br></br>

Double click on one of the two simulated Lenze i550 devices:
![Open device in Connect](/img/edc_8.11/omnio_configuration_19.png)</br></br>
!!! tip
    The devices created by the gateway will always be in Disconnected state, as they receive their data through the gateway.

Wait for a minute (you know those 60000ms defined in the Configurator) until you see the first message coming through:
![View device in Connect](/img/edc_8.11/omnio_configuration_20.png)</br></br>

Click on `View payload` and see the data selected in the Configurator:
![View device payload in Connect](/img/edc_8.11/omnio_configuration_21.png)</br></br>

Finally, you will verify that the data is available for Monitor analytics and dashboards.</br>
Navigate to Setup / Devices / VariableFrequencyDrives / Setup device type.</br>
Expand `Metric`. Select Bus_Voltage and `Data table`:
![View device metric data in Setup](/img/edc_8.11/omnio_configuration_22.png)</br></br>


---
Congratulations you have successfully setup an integration between an Omnio Edge gateway and Maximo Monitor using the configurator to define endpoint, devices and their tags (metrics).</br>
