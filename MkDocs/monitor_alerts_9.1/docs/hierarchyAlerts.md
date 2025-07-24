# Objectives
In this Exercise you will learn how to create and manage alerts in monitor hierarchy.

---
*Before you begin:*  

Make sure you have:

* Reviewed the Monitor Hierarchy lab to understand the concept of hierarchy in Monitor.
* Set up a sample hierarchy in Monitor.

In this lab, an asset is configured with two devices, both running simulations.
![hierarchy alert](img/ha1.png)</br>
A calculated metric named asset_pressure_sum has been added at the asset level to compute the sum of pressure values from the devices every minute.
![hierarchy alert](img/ha2.png)</br>

---


In this lab, you will configure an alert at the Asset level. Similarly, alerts can be configured at any hierarchy level such as Site, System, Location, or Organization.


#### Setup Alert

1. Navigate to the Asset Setup page and search for the asset.
![hierarchy alert](img/ha3.png)</br>
2. click on the asset. It will open its detail page.
![hierarchy alert](img/ha4.png)</br>
3. Go to the Calculated Metrics tab and click on "Add Calculated Metric" button.
![hierarchy alert](img/ha5.png)</br>
5. In the popup window, search for "Alert".
![hierarchy alert](img/ha6.png)</br>
6. Select AlertLowValue and click "Next".
![hierarchy alert](img/ha7.png)</br>
7. Choose "This node and child nodes" and click "Next".
![hierarchy alert](img/ha8.png)</br>
8. Select the calculated metric for which you want to generate the alert. Enter the lower threshold, severity, and status. Click "Next".
![hierarchy alert](img/ha9.png)</br>
9. Provide a name for the alert and click "Create".
![hierarchy alert](img/ha10.png)</br>
10. The alert will now appear in the Calculated Metrics table.
![hierarchy alert](img/ha11.png)</br>

#### View Alert

The pipeline will run, and an alert will be triggered when the threshold condition is met.

You can view generated alerts in the "Alerts" dashboard, which is automatically created when an asset has any alert configured.

1. Navigate to the Asset Dashboard view from the left sidebar.
![hierarchy alert](img/ha12.png)</br>
2. Search for the desired asset and click on it to open the details.
![hierarchy alert](img/ha13.png)</br>
3. You will see the Alerts Dashboard, which displays an Alert Table. This table lists all alerts associated with the asset and its connected devices.
![hierarchy alert](img/ha14.png)</br>
4. You can use Filter icon to filter alerts based on specific criteria.
![hierarchy alert](img/ha15.png)</br>

You can also create a custom dashboard using Dashboard Tab in the Asset setup page. Follow the same steps outlined in [Exercise 2](./view_alert.md#custom-dashboard) of this lab series.
![hierarchy alert](img/ha16.png)</br>


---

🎉 Congratulations! You have successfully completed the exercise to set up and view alerts at different hierarchy levels in Monitor.</br>