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
6. Enter a Device type name, e.g. XX_SolarPanel (replace XX with your initials).<br>
   Take note of the name you give as you will need this in the Node-RED flow config
7. Create

### Create Metrics in the device type

1. Under Metrics section click Add metric
2. Click Add metric
    <br>a. Enter AC_POWER for Metric
    <br>b. Enter AC_POWER for Display name
    <br>c. Enter event_1 for Event
    <br>d. Choose NUMBER for Type 
    <br>e. Enter Watt for Unit 
3. Click Add metric
    <br>a. Enter DC_POWER for Metric
    <br>b. Enter DC_POWER for Display name
    <br>c. Choose event_1 for Event
    <br>d. Choose NUMBER for Type
    <br>e. Enter Watt for Unit 
4. Click Add metric
    <br>a. Enter DAILY_YIELD for Metric
    <br>b. Enter DAILY_YIELD for Display name
    <br>c. Choose event_1 for Event
    <br>d. Choose NUMBER for Type
5. Click Add metric
    <br>a. Enter TOTAL_YIELD for Metric
    <br>b. Enter TOTAL_YIELD for Display name
    <br>c. Choose event_1 for Event
    <br>d. Choose NUMBER for Type
6. Click Add metric
    <br>a. Enter EVT_TIMESTAMP for Metric
    <br>b. Enter EVT_TIMESTAMP for Display name
    <br>c. Choose event_1 for Event
    <br>d. Choose TIMESTAMP for Type
7. Click Add
8. Apply checkmark in the box to `Use this as the default timestamp`
9. The metrics should look like this: <br>
![Metrics](/img/monitor_nodered_csv_importer_2.0/solarpanel_metrics.png)
9. Click Save

## Create a device in Monitor representing the device in the CSV file

1. Click the blue Setup link in the top left which will take you to the device types list<br>
![Navigate to Setup](/img/monitor_nodered_csv_importer_2.0/navigate_to_setup.png)
2. The device type you created should be selected
3. Click on `Add device +`
4. Enter 1BY6WEcLGh8j5v7 for name
5. Choose Custom token
6. Enter Pasword1!
6. Click Add and Close

## Import Node-RED flow to import the CSV

1. Download the [flow](https://github.com/ekstrom-ibm/monitor_csv_importer/blob/main/V2/Monitor_CSV_to_MQTT_flow.json){target=_blank}
2. Launch Node-RED
3. Click on the burger menu and choose Import
4. Click on select a file to import
5. Choose the file downloaded in step 1.
6. Click Import

## Configure Node-RED flow for your MAS Monitor environment

Collect the following:<br>
* name of the device type created above, e.g. XX_SolarPanel<br>
* Messaging hostname which should look like this<br>
&ensp;[tenant/workspace].messaging.iot.[domain]<br>
&ensp;e.g. masdev.messaging.iot.monitordemo2.ibmmam.com<br>

1. Double click on the purple `mqtt out` node named `Send MQTT event to a device in MAS Monitor`
2. Click on the pencil icon next to Server
3. In the Server box replace with your Messaging hostname
4. Click on the pencil icon next to TLS configuration
5. In the Server Name box replace with your Messaging hostname
6. Uncheck `Verify server certificate` and click Update
7. The Client ID for a device looks like this: `d:<tenant>:<device type>:<device ID>`
8. In the Client ID field replace masdev with your tenant/workspace name if it is not the same
8. In the Client ID field replace XX_SolarPanel with your device type
9. Click on the Security tab, write `use-token-auth` as the username<br>
   and write `Pasword1!` as the Password
10. Click Update
11. Click Done
12. Click Deploy in the top right corner
13. You should now see a green dot and `connected` below the `mqtt out` node <br>
if all credentials were entered correctly:<br>
![Connected device](/img/monitor_nodered_csv_importer_2.0/connected_device.png)


## Run the Node-RED flow for a single device

1. Download [single_solar_panel.csv](https://github.com/ekstrom-ibm/monitor_csv_importer/blob/main/V2/single_solar_panel.csv){target=_blank} from github
2. Click on the down arrow in the upper right corner in Node-RED and choose Dashboard<br>
![Choose dashboard](/img/monitor_nodered_csv_importer_2.0/dashboard_choose.png)
3. Click on the launch arrow<br>
![Launch dashboard](/img/monitor_nodered_csv_importer_2.0/dashboard_launch.png)
5. Click on Choose File or Browse under "Upload CSV with a single device"<br>
![Upload CSV single device](/img/monitor_nodered_csv_importer_2.0/upload_csv_single_device.png)
6. Select the `single_solar_panel.csv` file and click the right arrow play button
7. Go back to the Node-RED flow window
8. Under the light purple `delay` node it shows the amount of messages left to send to Monitor
9. Under the green `debug` Progress node it shows the amount of messages that have been sent to Monitor
10. Wait till the number under the light purple `delay` node shows 0.<br>
Progress node should say 1659.<br>
![Single device run](/img/monitor_nodered_csv_importer_2.0/single_device_run.png)
11. All the data has been ingested into Monitor

## Verify the data is in Monitor

1. Go to Setup in Monitor
2. Click on the Device Type created earlier in the lab
3. Click on the black button "Set up device type"
4. On the left side open Metric and then select AC_POWER
5. Click on Data table to see the values of that metric<br>
![Data table](/img/monitor_nodered_csv_importer_2.0/data_table.png)<br><br>

---

Congratulations!  You have ingested data from a CSV file into Monitor.<br>
Now you can explore creating calculated data metrics and dashboards in Monitor.<br>
Which could be something like this:<br>
![Single Device Dashboard](/img/monitor_nodered_csv_importer_2.0/single_device_dashboard.png)<br><br>

!!! attention
    Please archive and delete your device type when it is no longer being used.





