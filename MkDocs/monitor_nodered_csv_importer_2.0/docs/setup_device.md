# Objectives
In this Exercise you will learn how to setup Monitor to receive data from a CSV file that contains solar panel data.

* Create a device type and setup metrics in Monitor
* Create a device in Monitor to send events to

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

## Create a device in Monitor representing the device in the CSV file

1. Click the blue Setup link in the top left which will take you to the device types list
2. The device type you created should be selected
3. Add device
4. Enter 1BY6WEcLGh8j5v7 for name
5. Choose Custom token
6. Enter Pasword1!
6. Click Add and Close

## Import Node-RED flow to import the CSV

1. Download the [flow](https://github.ibm.com/Watson-IoT/eam-hpu-lab/blob/main/csv-files/monitor_devices_solar/monitor_device_gateway.json){target=_blank}
2. Launch Node-RED
3. Click on the burger menu and choose Import
4. Click on select a file to import
5. Choose the file downloaded in step 1.
6. Click Import

## Configure Node-RED flow for your MAS Monitor environment

Collect the following:
<br>
    * name of the device type created above
<br>
    * Messaging hostname which should look like this [tenant/workspace].messaging.iot.[domain]<br>
    &ensp;e.g. masdev.messaging.iot.monitordemo2.ibmmam.com
<br>

1. Double click on the purple node named "Send MQTT event to a device to MAS Monitor"
2. Click on the pencil icon next to Server
3. In the Server box replace with your Messaging hostname
4. Click on the pencil icon next to TLS configuration
5. In the Server Name box replace with your Messaging hostname
6. Click Update
7. In the Client ID field replace masdev with your tenant/workspace name
8. In the Client ID field replace MLL_SolarTest7 with your device type
9. Click on the Security tab, leave use-token-auth as the username and enter Pasword1! as the Password
10. Click Update
11. Click Done
12. Click Deploy in the top right corner

## Run the Node-RED flow for a single device

1. Download [solar_device.csv](https://github.ibm.com/Watson-IoT/eam-hpu-lab/blob/main/csv-files/monitor_devices_solar/device_solar.csv){target=_blank} from github
2. Click on the down arrow in the upper right corner in Node-RED and choose Dashboard<br>
![Choose dashboard](/img/monitor_nodered_csv_importer_2.0/dashboard_choose.png)
3. Click on the launch arrow<br>
![Launch dashboard](/img/monitor_nodered_csv_importer_2.0/dashboard_launch.png)
5. Click on Choose File under "Upload CSV with a single device"<br>
![Upload CSV single device](/img/monitor_nodered_csv_importer_2.0/upload_csv_single_device.png)
6. Click the right arrow play button
7. Go back to the Node-RED flow window
8. Under the light purple node it shows the amount of messages left to send to Monitor
9. Under the green Progress node it shows the amount of messages that have been sent to Monitor
10. Wait till the number under the light purple node shows 0.  Progress node should say 1659.<br>
![Single device run](/img/monitor_nodered_csv_importer_2.0/single_device_run.png)
11. All the data has been ingested into Monitor

## Verify the data is in Monitor

1. Go to Setup in Monitor
2. Click on the Device Type created earlier in the lab
3. Click on the black button "Set up device type"
4. On the left side open Metric and then select AC_POWER
5. Click on Data table to see the values of that metric<br>
![Data table](/img/monitor_nodered_csv_importer_2.0/data_table.png)
9. Congratulations!  You have ingested data from a CSV file into Monitor
10. Now you can explore creating calculated data metrics and dashboards in Monitor







