# Objectives
In this Exercise you will learn how to setup Monitor to receive data from a CSV file that contains solar panel data and send the data through a gateway.  The gateway will create the devices in Monitor.

* Create a device type and setup metrics in Monitor
* Create a gateway in IoT to send events to the device type in Monitor
* Configure Node-RED flow
* Run Node-RED flow
* Verify the devices and data are in Monitor

## Create a device type and setup metrics in Monitor

### Create a device type

1. Go to Setup in Monitor
2. Go to Devices tab
3. Click on + button to create a device type
4. Choose Basic template
5. Next
6. Take note of the name you give as you will need this in the Node-RED flow config
7. Create

### Create Metrics in the device type

1. Under Metrics section click Add metric
2. Click Add metric
    <br>a. Enter AC_POWER for metric
    <br>b. Enter AC_POWER for display name
    <br>c. Enter event_1 for event
    <br>d. Choose Number for type 
3. Click Add metric
    <br>a. Enter DC_POWER for metric
    <br>b. Enter DC_POWER for display name
    <br>c. Choose event_1 for event
    <br>d. Choose Number for type
4. Click Add metric
    <br>a. Enter DAILY_YIELD for metric
    <br>b. Enter DAILY_YIELD for display name
    <br>c. Choose event_1 for event
    <br>d. Choose Number for type
5. Click Add metric
    <br>a. Enter TOTAL_YIELD for metric
    <br>b. Enter TOTAL_YIELD for display name
    <br>c. Choose event_1 for event
    <br>d. Choose Number for type
10. Click Add
11. Click Save

The metrics should look like this:

![Metrics](/img/monitor_nodered_csv_importer_2.0/solar_metrics.png)

## Create a gateway in IoT and register a device

1. Click the menu in the top right corner and choose IoT
2. Click on Device Types
3. Click on Add Device Type
4. Click on Type Gateway
5. Enter a name for the gateway device type

5. Click Next
6. Click Finish
7. Click Register Devices
![Upload CSV multiple devices](/img/monitor_nodered_csv_importer_2.0/create_gateway.png)
8. Enter a name for the gateway device
Note:  This is not the DEVICEID in your CSV file
9. Click Next
10. Click Next
11. Click Next
12. In Authenticaton Token enter Pasword1!
![Add Device](/img/monitor_nodered_csv_importer_2.0/add_device_gateway.png)
13. Click Finish
![Add Device](/img/monitor_nodered_csv_importer_2.0/device_credentials.png)

## Import Node-RED flow to import the CSV

1. Download the [flow](https://github.ibm.com/Watson-IoT/eam-hpu-lab/blob/main/csv-files/monitor_devices_solar/monitor_device_gateway.json){target=_blank}, if you have completed the previous device exercise skip these steps 
2. Launch Node-RED
3. Click on the burger menu and choose Import
4. Click on select a file to import
5. Choose the file downloaded in step 1.
6. Click Import

## Configure Node-RED flow "CSV to MQTT to Monitor through a gateway"

### Configure Node-RED flow for your MAS Monitor environment

Note:  if you did the previous exercise with the device you can skip these steps

Collect the following
<br>
* name of the device type created above
<br>
* Messaging hostname which should look like this
     [tenant/workspace].messaging.iot.[domain]
     <br>
     i.e. masdev.messaging.iot.monitordemo2.ibmmam.com
<br>

1. Double click on the purple node named "Send MQTT event to a gateway to MAS Monitor"
2. Click on the pencil icon next to Server
3. In the Server box replace with your Messaging hostname
4. Click on the pencil icon next to TLS configuration
5. In the Server Name box replace with your Messaging hostname
6. Click Update
7. Click Done

### Update the device type

1. Double click on the "Set MQTT event" node
2. Change the deviceType to the device type you created for the solar metrics above
3. Click Done

### Update the Client ID

1. Double click on the purple node named "Send MQTT event to a gateway to MAS Monitor"
2. Click on the pencil icon next to Server
3. The Client ID field should already contain your tenant/workspace name
4. In the Client ID field replace MLL_GatewayType with your device type created above
5. In the Client ID field replace MLL_GatewayDevice with your device created above
6. Click on the Security tab, leave use-token-auth as the username and enter Pasword1! as the Password
7. Click Update
8. Click Done
9. Click Deploy in the top right corner

## Run the Node-RED flow for a gateway

1. Download the [plant_solar.csv](https://github.ibm.com/Watson-IoT/eam-hpu-lab/blob/main/csv-files/monitor_devices_solar/plant_solar.csv){target=_blank}.
2. Click on the down arrow in the upper right corner and choose Dashboard
3. Click on the launch arrow
![Launch dashboard](/img/monitor_nodered_csv_importer_2.0/device_list.png)
4. Click on Choose File under "Upload CSV with multiple devices"
![Upload CSV multiple devices](/img/monitor_nodered_csv_importer_2.0/upload_csv_multiple_devices.png)
5. Click the right arrow play button
6. Go back to the Node-RED flow window
7. Under the light purple node it shows the amount of messages left to send to Monitor
8. Under the green Progress node it shows the amount of messages that have been sent to Monitor
9. All the data is ingested into Monitor once the number under the light purple node shows 0 but you can go ahead to the next step to verify data is going into Monitor
10. ![Single device run](/img/monitor_nodered_csv_importer_2.0/gateway_run.png)

## Verify the devices and data in Monitor

1. Go to Setup in Monitor
2. Click on the Device Type created earlier in the lab
3. See that 21 devices were created in Monitor under the device type
![Device list](/img/monitor_nodered_csv_importer_2.0/device_list.png)
3. Click on the black button "Set up device type"
4. On the left side open Metric
5. Click on Data table to see the values of that metric
![Data table](/img/monitor_nodered_csv_importer_2.0/data_table_devices.png)
9. Congratulations!  You have ingested data from a CSV file into Monitor using a gateway
10. Now you can explore creating calculated data metrics and dashboards in Monitor







