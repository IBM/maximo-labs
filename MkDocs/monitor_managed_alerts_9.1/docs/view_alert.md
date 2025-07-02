# Objectives
In this Exercise you will learn how to view alerts in monitor dashboard.

---
*Before you begin:*  
This Exercise requires that you have:

1. Completed the prerequisites listed in the [All Labs Prerequisites](prereqs.md).

2. Finished the previous exercises in this lab series.

---

### Default Dashboard

Once the Alert KPI is configured at the device type level, a dashboard named "Alerts" will automatically be added to the device type.

Navigate to the Device type Dashboard view from the left sidebar.
![setup alert](img/ha17.png)</br>
Search for the device type and click on it to open the details.
![setup alert](img/ha18.png)</br>
You will see the Alerts Dashboard, where the Alert Table displays all alerts related to the device type and its associated devices. You can click on the Source link to navigate directly to the device that triggered the alert.
![setup alert](img/ha19.png)</br>


### Custom Dashboard

You can create custom dashboards for both device types and individual devices. In this exercise, we will create a custom dashboard for a specific device.

Navigate to the device and open its Device Details page.
![setup alert](img/viewalert1.png)</br>
Click on the Dashboard tab, then click the "Add Dashboard" button.
![setup alert](img/viewalert2.png)</br>
Enter a title for your dashboard and click "Configure Dashboard".
![setup alert](img/viewalert3.png)</br>
The Dashboard Editor will open. From the right sidebar, select "Alert Table".
![setup alert](img/viewalert4.png)</br>
Provide a title and description for the alert. Choose a time range for the data and click "Add Card".
![setup alert](img/viewalert5.png)</br>
From the right sidebar, select "Time series line". Enter a title, Enable Overlay with Alerts, Select the alert name, Click "Add Card".
![setup alert](img/viewalert6.png)</br>
Click "Save and Close".
![setup alert](img/viewalert11.png)</br>
The newly created alert dashboard will now appear in the Dashboard tab.
![setup alert](img/viewalert7.png)</br>
To view it from the device type level, Navigate to the Device Type view from the left sidebar.
![setup alert](img/viewalert8.png)</br>
Search for your device type, click the dropdown arrow, and select the device.
![setup alert](img/viewalert9.png)</br>

You will now see a beautifully customized Alert Dashboard.

* You can rearrange the cards and resize them as needed.
* In the Timeseries card, alerts are shown as red markers. Hover over them to view the metric and alert values.

![setup alert](img/viewalert10.png)</br>



---
Congratulations you have successfully created Alert Dashboard🤗.</br>
