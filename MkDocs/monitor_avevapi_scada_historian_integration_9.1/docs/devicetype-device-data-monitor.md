# Device Type, devices and devices data

In this Exercise you will learn how device type, devices and device data are populated in IBM MAS Monitor UI

Upon execution of docker command, it starts pulling device data based on `tag name filter` expression and device raw data from Aveva PI Scada historian and can be seen in the recent events of IBM MAS Monitor. 

## Device Types and Devices Creation
<a name="summary"></a>

1. Open `Maximo Application Suite` and select `Monitor Application`. 
![setup AvevaPI](img/mas_home.png){:style="height:500px;width:900px"}
2. Open `Monitor` tab
![setup AvevaPI](img/monitor_home.png){:style="height:500px;width:900px"}
3. Navigate to the `Device types` menu tab 
![setup AvevaPI](img/devicetypes-menu.png){:style="height:350px;width:140px"}
4. Search device type name. This will shows the device list as below.
![setup AvevaPI](img/monitor-devicetype-created-1.png){:style="height:500px;width:900px"}
![setup AvevaPI](img/monitor-devicetype-created-2.png){:style="height:500px;width:900px"}

## Device Data - Recent Events
Click on any device Id from device list and navigate to `Recent event` tab to view incoming device data
![setup AvevaPI](img/monitor-device-recentevents.png){:style="height:400px;width:900px"}

## Device Data - Trend Chart
Navigate to `Data` tab, Select Metric Name `value` then click on `Trend` tab
![setup AvevaPI](img/monitor-device-data-trend.png){:style="height:400px;width:900px"}

## Device Data - Data Table
Navigate to `Data` tab, Select Metric Name `value` then click on `Data table` tab
![setup AvevaPI](img/monitor-device-data-datatable.png){:style="height:400px;width:900px"}

## Summary
<a name="summary"></a>

You can view the recent events generated for each device, trend chart and data table from Aveva PI Scada historian.

Lets next see how to update existing Aveva PI Scada Historian integration configuration.