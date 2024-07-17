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

While looking at your Managed Gateway in the Gateways list,</br>
press the `View deployment instructions`. </br>
Click on the docker command to copy it to the clipboard:
![Deployment Guide](img/deploy_verify_01.png)</br></br>

Open a terminal window (Mac/Linux) or Command window (Windows) where you want to run the Managed Gateway and then paste the docker command line from the clipboard.</br>
Click enter to execute it, and you should see something similar to the following:
![Start EDC edge](img/deploy_verify_02.png)</br></br>

## Verify connection and data flowing into the IoT Tool

Navigate to the IoT Tool from the App Switcher in the upper right hand corner:
![Navigate to IoT Tool](img/deploy_verify_03.png)</br></br>

Since the gateway and the devices uses the same prefix, then it is easy to search for them.</br>
Verify the gateway `XX_MGT_GW_01` is in Connected state and the device `XX_Lenze_i550_01` is in disconnected state.
![EDC devices in IoT Tool](img/deploy_verify_04.png)</br></br>

!!! tip
    The devices belonging to the gateway will always be in Disconnected state, as they receive their data through the gateway.

!!! note "New in MAS 9.0"
    Both the Managed Gateway and the OT Devices have been created by the Monitor UI when creating the Managed Gateway and adding the OT Devices, i.e. the devices will no longer be created by the gateway when data have been collected as in previous versions.

Select the simulated Lenze i550 devices and navigate to `Recent Events`.</br>
Wait for a couple of minutes (you know those 60000ms defined when adding the device) until you see the first messages coming through:
![View device in Connect](img/deploy_verify_05.png)</br></br>

Click on the last received payload: and see the data points that you selected when adding the device to the Managed Gateway:
![View device payload in Connect](img/deploy_verify_06.png)</br></br>

And see the data points that was selected in the Integration being send on the status event type:

``` json
{
	"timestamp": "2024-06-17T08:26:52.680434Z",
 	"FrequencyCommand_hertz": 36.65,
 	"SupplyVoltage_volt": 286.37824638055173,
 	"DCBusVoltage_volt": 405,
	"TorqueCommand_percent": 0,
    "ControlCardTemperature_degreeCelsius": 22.200000000000003,
 	"MotorTorque_percent": 51.5,
    "MotorCurrent_ampere": 9.700000000000001,
	"OutputFrequency_hertz": 36.800000000000004,
 	"MotorVoltage_volt": 696
}
```


---
Congratulations you have successfully deployed and verified the connectivity and data inflow.</br>
