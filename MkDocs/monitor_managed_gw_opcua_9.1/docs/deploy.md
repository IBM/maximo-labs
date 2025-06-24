# Objectives
In this Exercise you will learn how to:

* Deploy the Managed Gateway
* Verify connectivity and data inflow

---
*Before you begin:*  
This Exercise requires that you have:

1. completed the pre-requisites required for [all labs](prereqs.md) and for this exercise
2. completed the previous exercises
3. verified the simulator is running as described in [exercise 1](setup_simulator.md){target=_blank}

---

## Deploy the Managed Gateway

While looking at your Managed Gateway in the Gateways list, press the `View deployment instructions`. </br>
Click on the docker command to copy it to the clipboard:
![Deployment Guide](img/deploy_verify_01.png)</br></br>

Open a terminal window (Mac/Linux) or Command window (Windows) where you want to run the Managed Gateway and then paste the docker command line from the clipboard. Click enter to execute it, and you should see something similar to the following:
![Start EDC edge](img/deploy_verify_02.png)

!!! tip "Tips"
	You can see that the Managed Gateway have succesfully established a connection to the OPC UA Simulator.</br>
	Secondly you can also see the MQTT connection is established between the Managed Gateway and Maximo Monitor</br>
	
	The first time you deploy you might get a response like: `Unable to find image 'icr.io/cpopen/ibm-mas/edgedatacollector:2.5.7' locally` </br>
	Please be patient while the Edge Data Collactor docker container is bering downloaded and started.</br>


## Verify the OPC UA server data is flowing into Monitor


Click to open the `XX_OPCUA_Server_01` device:
![Open the Lenze device](img/deploy_verify_03.png)</br></br>

Navigate to `Recent event` and wait for half a minute (you know those 30000ms defined when adding the device) until the first message is coming through.</br>
![](img/deploy_verify_04.png)</br></br>

Click on `View payload` and see the data points being send to the Event name `status`:</br>
![View device payload in Connect](img/deploy_verify_05.png)</br></br>

These are the data points that you selected when adding the device to the Managed Gateway:

``` json
{
    "timestamp": "2025-06-24T15:59:22.407298Z",
    "opcplc-telemetry-anomaly-dipdata": 58.778525229247315,
    "opcplc-telemetry-anomaly-negativetrenddata": -225.39999999999998,
    "opcplc-telemetry-anomaly-positivetrenddata": 425.4,
    "opcplc-telemetry-anomaly-spikedata": 58.778525229247315,
    "opcplc-telemetry-basic-alternatingboolean": true,
    "opcplc-telemetry-basic-randomsignedint32": 1952630236,
    "opcplc-telemetry-basic-randomunsignedint32": 206313614
}
```
</br>


Potentially the stored data could be used in a dashboard for the Siemens S7 device:</br>
![View device payload in Connect](img/deploy_verify_06.png)</br></br>

---
Congratulations you have successfully deployed and verified the connectivity and data inflow, and thereby completed this Maximo Lab.</br>

