# Objectives
In this Exercise you will learn how to:

* Prepare a Windows environment for the Modbus simulator
* Install the Modbus simulator
* Configure the Modbus simulator

---
*Before you begin:*  
This Exercise requires that you have:

1. completed the pre-requisites required for [all labs](../prereqs)
 

!!! tip 
    You can Right-Click on the images in this lab and select `Open Image in New Tab` </br>
    to view the details in the screen shots:</br></br>
    ![View details](/img/omnio_8.8/setup_00.png)</br></br>
    or use the browsers zoom function.


---
##  Prepare a Windows environment

You need to have a Windows based environment with at static IP Address in which the Modbus simulator will run as that is required by the Omnio Configurator.</br>
For that purpose I've used IBM Cloud Classic infrastructure where a Windows Server 2019 instance has been created.</br>

![Windows Server 2019](/img/omnio_8.8/setup_01.png)</br></br>

The Modbus simulator requires port 502 to be open in the firewall for incoming traffic.
![Windows Server 2019](/img/omnio_8.8/setup_02.png)</br></br>

##  Install the Modbus simulator

We use the free Modbus simulator from Unserver to provide a couple of simulated Lenze i550 Variable Frequency Drives (VFD) for the purpose of this lab.
Go to the [Unslave download page](https://unserver.xyz/docs/unslave/){target=_blank} and download the ZIP file.
Unzip the downloaded file:
![Unslave unzipped](/img/omnio_8.8/setup_03.png)</br></br>

and navigate into the unslave folder:
![Unslave unzipped folder](/img/omnio_8.8/setup_04.png)</br></br>

No further installation is needed.

##  Configure the Modbus simulator

The `config.json` file contain the configuration of the Unslave Modbus simulator.</br>
Start by renaming it to save a copy:
![Rename config.json](/img/omnio_8.8/setup_05.png)</br></br>

then download the `config.json` that contains the holding registers for 10 Lenze i550 VFD's.</br>
You can get it here: [config.json](/omnio_8.8/config/config.json){target=_blank}</br>
Copy it into the Windows environment in the unslave folder:
![Copy config.json](/img/omnio_8.8/setup_06.png)</br></br>

Double-click on the `unslave` application to start the simulator:
![Start Unslave](/img/omnio_8.8/setup_07.png)</br></br>

and you will see a CMD window that looks like this:
![Unslave CMD indow](/img/omnio_8.8/setup_08.png)</br></br>

!!! tip
    The Modbus holding registers defined in the `config.json` are static values. However the Unslave provide an API (on port 9000) to alter the values, which is not covered in this lab.

!!! tip
    Another config file is available with 90 Lenze i550 devices in case you need that.</br>
    You can get it here: [config-90.json](/omnio_8.8/config/config-90.json){target=_blank}</br>

---
Congratulations you have successfully setup the simulator environment.</br>
