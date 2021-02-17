# Monitor - Demo

## Review High Anomalies

I'm the Remote Operational Support that needs to view my pump assets across multiple cities worldwide.

Monitor provides a single place to monitor all my mission critical assets around the globe from a single dashboard.<br>
`Action:` Open Maximo Application Suite and select Monitor Application. 

Monitor has the data collected by devices organized by asset type. Operational support has some asset information in Monitor that was collected via Historians from SCADA or from devices that were connected to the IOT Platform.
I open the pump assets and see that there is a summary dashboard for all the assets and instance dashboards for each asset.  Some of the pumps are OEM and some of them are non-OEM. I can group similar types of assets in order to manage that set of assets together. <br>
`Action:` Navigate to Entity: Pump 

I navigate to the summary dashboard to see a global map of sites of pumps.
The summary dashboard also shows me other metrics as well giving real-time insights on problems with my assets.  Dashboards are fully customizable and allow the operations manager to scale across multiple sites in a single dashboard to identify most urgent and critical problems.

I see from the world map there is a problem on a pump in Bedford.<br>
`Action:` Select the Hourly Summary Dashboard - Pump. We navigate to summary dashboard top level so we can use a global map of sites of pumps. Hover over the anomaly. 

I can use my filters to focus on my particular issue.  In this case, I’ll filter on the Bedford site to see the summary dashboard there.<br>  
`Action:` Filter based on Location Dimensions using Summary Controls on the left<br>
•	Geography / `North America`, Europe  
•	Country / `US`, Canada, Mexico   
•	State / `Massachusetts`, RI<br>
•	Location / `Bedford`, Lexington<br>
•	Site / North, East, West<br>

I look back 7 days at the alerts and see that there have been problems for a while.  There are recent alerts on Pump 005, so I drill in to take a closer look.  Notice how the alert navigates to the time date where the anomaly happened in the instance dashboard.

The site map saves me time by showing me where this pump is located on the Bedford site as well as the anomaly alerts.  The picture of the pump shows me which part of the pump is experiencing a problem.

 

## Review Asset History

I can easily look at the asset history in Maximo from the table card and see that there was service done several days ago on this pump.  Perhaps, it was improperly serviced which is now causing the vibrations.

It looks like the water pump bearing housing and seals were replaced a couple days ago. The pump ran normal for the rest of the day, but then began to vibrate again in the evening.<br>
`Action:` Review Asset information in Maximo EAM Manage. Right click on asset id link and open in new tab to see when the asset was serviced. Click on Work tab. Filter on COMP to find the most recent work order.

Having this data at hand, allows the operations engineer to gain insights on the history of the asset to make informed decisions on how to proceed with maintenance.  

## Alert Thresholds
I dig deeper into investigation of the problem by looking at the alerts.  There are many alerts on this pump to look at.  Monitor provides a paradigm shift from traditional threshold-based alerts that becomes overwhelming to AI powered anomaly alerts to remove the false positives.  I filter on the high severity alerts and see there are just a few anomaly alerts.<br>
`Action:` Go back to monitor, Show alerts table, filter high severity alerts.

Vibration and Temperature are working in unison.  The Vector is a combination of Velocity in the X, Y, Z axis.  When all three experience exceptional vibration simultaneously there is something obviously very wrong with the asset.  You can see on the charts where the anomalies occur.
`Action:` Navigate to the “Velocity – 7 day Average” card

## Create Service Request
I go back to the alerts and create a service request in Maximo for the Maintenance Supervisor to look at to see why vibrations have returned since the seals were recently replaced. The Technician will reinspect the pump since he thought he fixed the vibration issue the last time it was worked on.<br>
`Action:` Go back to alert table, scroll the to the right side and click “Create Service Request”, Choose the Maximo environment to create the service request in.

## Anomaly Function
Let's go back to the asset type and we can see there are live metrics flowing into the system like the Velocity vector.

Built in AI models can be applied in Monitor with just a few clicks with no data science or development experience needed.  Models can also be created in Watson Machine Learning and used with Monitor.<br>
`Action:` Go back to entity type, Pump, select Data Tab. Discuss the different types of OOTB function that can be applied, or custom functions such as the vector. Or Anomaly models. Or pure python code.

Now, I’m going to turn it over to the maintenance supervisor to check the service request we created.


