# Remote Asset Monitoring

!!! note
    This lab is under development.  Not all steps are complete or accurate.

As the Remote Operational Support Manager that needs to monitor 100s of assets across multiple sites.  Monitor provides a single scalable place ingest sensor data, calculate key performance metrics so that I can monitor all my mission critical assets from a single dashboard.

## Review High Severity Anomalies

I'm the Remote Operational Support Manager that needs to view my assets across multiple cities worldwide.  Using `Monitor`, I can collect data from devices and organize them by hierarchy, location, assets and devices in dashboards so that I can be alerted about problems needing attention.  Operational support can view asset information in Monitor that is collected via Historians from SCADA or from devices that are connected to the IOT Platform.

The Water Resource Authority has a water treatment facility in Bedord that has asset groups of sedimentation tanks and pumps.  I will use a summary dashboard to quickly assess the operational condition for all the locations and for each asset type.  I can also view individual asset instance dashboards.

1. Open `Maximo Application Suite` and select `Monitor Application`. 
![setup assets](../../mas_9.0/img/wwpump_8.11/MM01.png)
2. Open `Monitor` tab
![setup assets](../../mas_9.0/img/wwpump_8.11/MM02.png)
3. Navigate to the `Device types` tab and find the group called `SED_TANK_SIM_DEMO`.
2. Select the top level group
3. Select the `Sedimentation Tanks Demo Summary` tab
4. Close the sidebar to view the entire `summary dashboard`
![setup assets](../../mas_9.0/img/wwpump_8.11/MM03.png){:style="height:500px;width:350px"}
5. Adjust the timeframe to see alerts on the Summary Dashboard as needed
![setup assets](../../mas_9.0/img/wwpump_8.11/MM04.png){:style="height:300px;width:500px"}


## Tank Monitoring and Inspecting

I need to check on the cleanliness of sedimentation tanks in my facility. Over a period of time, tanks could build fungi or collect debris from the environment.  Cases have been known for animals accidentally falling into our tanks.

Every tank in our facility is constantly monitored by cameras. The feeds from cameras are analyzed every hour by `Maximo Visual Inspection’s` AI model and uploaded as IoT events. `Maximo Monitor` maps and plots these details on the dashboards as assets. Rules are triggered to generate alerts.  `Monitor` provides a single dashboard to review and act on alerts for all tanks around the facility.  The `summary dashboard` tells me that Tank 1 is showing alerts. 

1. Select the tank that shows alerts by navigating to the `Tank1 instance` dashboard, by clicking on `Tank 1` in the alert table, the tank inspection results table, or from the sidebar.
2. Select the `Metrics Dashboard` tab, hide the sidebar (if needed).
![World metrics summary dashboard](../../mas_9.0/img/wwpump_8.11/MM05.png)
3. Filter on `severity of alerts` in the `alert card`.   Adjust the timeframe to see alerts on the `Summary Dashboard` as needed to see alerts in any time period.
![Tank 2 summary dashboard](../../mas_9.0/img/wwpump_8.11/MM06.png)

## Tank Alerts

I can navigate to an individual asset `Tank1 instance` dashboard to review and act on alerts for the tank.  I can tell by the alerts that the tank is getting to a critical status.  The `table card` shows a list of rows pertaining to events for the specified tanks, with attributes identifying clean or dirty tanks.  You can check the score of confidence in the `Link to Image` column in the `Tank Inspection Results` table to substantiate the findings.

1. Click the link for the `tank inspections results` characterized as `dirty` that has alerts
![setup assets](../../mas_9.0/img/wwpump_8.11/MM07.png)
2. Investiage tank visual inspection results.
![setup assets](../../mas_9.0/img/wwpump_8.11/MM08.png)
3. You conclude that maintenance is needed to resolve the turbidity in the tank.  To be sure you also investigate if there is a pump issue that maybe causing the problem.

!!! note
    When navigating to `Maximo Visual Inspection`, login using the credentials that you received in your email for `MVI Edge` in your email, press continue, then close the tab, then click through again from the `Inspection Results` table.


## Pump Alerts

Now I want to investigate my pumps to see if this is the cause of the turbidity<br> 

1. Select `Monitor` from the side nav bar.
2. Select the `Hierarchies` tab.
3. Select `EAGLENA`.
![setup assets](../../mas_9.0/img/wwpump_8.11/Monitor001.png) 
4. You can close the `sidebar` to increase the viewing area for the dashboard. 

This shows me a map of real-time insights on problems with my assets.  The hierarchy represents how the assets in my business are organized.

Dashboards are fully customizable and allow the operations manager to scale across multiple sites in a single dashboard to identify most urgent and critical problems.  I see from the map that there were alerts against assets at the Bedford location. 

5. Navigate down the hierarchy to the Bedford site. By expanding the nodes in the hierarchy until you reach the Bedford site
![setup assets](../../mas_9.0/img/wwpump_8.11/Monitor002.png) 
6. Click on the node for Beford to see the dashboard for the Bedford site.
7. A map of the Bedford service area shows that there is a problem at `PUMPSTAT1`.   Scroll down and check out the alerts.

The summary dashboard shows me a global map of sites of pumps and metrics, and gives real-time insights on problems with my assets.  Dashboards are fully customizable and allow the operations manager to scale across multiple sites in a single dashboard to identify most urgent and critical problems.

8 see from the map that there were alerts against one of the pumps at that location.

9. Scroll down and look at the alerts on the `Alert` tab at `PUMPSTAT1`. I can see an alert for `PMPDEVICE005` on the alert dashboard at `PUMPSTAT1`
![setup assets](../../mas_9.0/img/wwpump_8.11/Monitor003.png)
10. Scroll to the Pump:  PMPDEVICE005 dashboard (open the lowest level dashboard)
![setup assets](../../mas_9.0/img/wwpump_8.11/Monitor0041.png)
11. Expand the alert card and filter on the High severity alerts.
![setup assets](../../mas_9.0/img/wwpump_8.11/Monitor005.png)
![setup assets](../../mas_9.0/img/wwpump_8.11/Monitor0051.png)


I will filter on the High severity alerts and see that there were recent alerts on Pump 005.

12. Close the `alert` card.
13. Scroll down to `Asset Information` card
14. click on `PMPDEVICE005`.
![setup assets](../../mas_9.0/img/wwpump_8.11/Monitor006.png)

## Understand Asset History

I can easily look at the asset history in Maximo from the table card and see what service was done on this pump.  Perhaps, it was improperly serviced which is now causing the vibrations.
1. Click on `PMPDEVICE005` in the `Asset Information` card.
![setup assets](../../mas_9.0/img/wwpump_8.11/Monitor007.png)
2. Click on `Work` tab in `Maximo Manage`
![setup assets](../../mas_9.0/img/wwpump_8.11/Monitor0071.png)
3. Filter on status `COMP` to see the latest completed work orders.
![setup assets](../../mas_9.0/img/wwpump_8.11/Monitor0072.png)

It looks like the water pump bearing housing and seals were replaced. The pump ran normally, but then began to vibrate again. Having this data at hand, allows the operations engineer to gain insights on the history of the asset to make informed decisions on how to proceed with maintenance.  I dig deeper into investigation of the problem by looking at the alerts.  There are many alerts on this pump to look at.  Monitor provides a paradigm shift from traditional threshold-based alerts that become overwhelming to an AI-powered anomaly alerts to help remove the false positives.  I filter on the high severity alerts and see there are just a few anomaly alerts.

1. Go back to the device dashboard in Monitor and go to the `Alerts` dashboard.
![view alerts](../../mas_9.0/img/wwpump_8.11/Monitor0073.png)
![view alerts](../../mas_9.0/img/wwpump_8.11/Monitor0074.png)
2. Click on `Create service request`
3. Complete the form by clicking on `Create`.
![create service request](../../mas_9.0/img/wwpump_8.11/Monitor008.png)
4. You may also click on a `service request` that has already been created to simply view it in `Manage`.
![view service request](../../mas_9.0/img/wwpump_8.11/Monitor0081.png)

Upon detailed investigation of alerts for `Pump 005`, I created a new service request in `Manage` directly from `Monitor` alert dashboard for the Maintenance Supervisor to look at to see why vibrations have returned since the seals were recently replaced. The technician will reinspect the pump since he thought he fixed the vibration issue the last time it was worked on.

In `Manage`, I can view service request details, related work orders, service address, assign labor as well as verify and/or update service request status in Manage.

## Data Ingestion and KPI Pipeline

Let's go to the asset type `Setup` and we can see there are live metrics flowing into Monitor like the `Velocity vector` are analyzed.

1. In Monitor, navigate to `Setup` in the left nav.
![setup assets](../../mas_9.0/img/wwpump_8.11/Monitor009.png)
2. Under the `Devices types` tab choose Pump.
![setup device types](../../mas_9.0/img/wwpump_8.11/Monitor0091.png)
3. Click on the `pencil/edit` icon
4. Expand the `Metric` section and click on `VELOCITYX` on the Pump.
![setup assets](../../mas_9.0/img/wwpump_8.11/Monitor010.png)
5. Click on the `create metric` next to the `Batch data metric` section to seet how AI models can be used to analyze incoming time series data from assets.  
![setup assets](../../mas_9.0/img/wwpump_8.11/Monitor0101.png)

Monitor provides a variety of timeseries and statistical out of the box functions that allows a non-datascientist to perform live streaming or historical analysis of asset equipment sensor data.  In the `Metric` section we can see data flowing in from our pumps for each sensor like `vibration` and `temperature`.  In the `Batch data metric` section, built-in AI models or functions can be applied in Monitor with just a few clicks with no data science or development experience needed.  New anomaly detection models can also be created in using `Watson Studio` and inferenced using `Watson Machine Learning` service that is invoked by the `Monitor` function pipeline.


## Summary
<a name="summary"></a>

As the Remote Operational Support Engineer, monitoring the water and waster water treatement facilities and assets across multiple sites I was able to use `IBM Maximo Monitor` to ingest sensor data,  calculate key performance metrics, analyze these using AI models without the need for a datascientist.  By using scalable summary dashboards I was able to quickly to identify assets high severity anomaly alerts, investigate those assets, and finally take an action to prevent a failure and unplanned downtown saving thousands of dollars, and maintaining the integrity of water treatment and distribution system.


Lets next see how the Asset Analyst manages the visual inspection models with `Maximo Application Suite`.


