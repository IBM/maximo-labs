# Monitor - Demo

## Review High Anomalies

I'm the Remote Operational Support that needs to view my pump assets across multiple cities worldwide.
I open the Maximo Application Suite and go to Monitor.  
`Action:` Open Maximo Application Suite and select Monitor Application. 

Monitor has the data collected by devices organized by asset type.  I open the pump assets and see that there is a summary dashboard for all the assets and instance dashboards for each asset.  Some of the pumps are OEM and some of them are non-OEM.  Dashboards are fully customizable and allow the reliability engineer to scale across multiple sites in a single dashboard to identify most urgent and critical alerts.<br>
`Action:` Navigate to Entity: Pump 

I open the summary dashboard and see from the world map there is a problem on a pump in Bedford.<br>
`Action:` Select the Hourly Summary Dashboard - Pump. We navigate to summary dashboard top level so we can use a global map of sites of pumps. Hover over the anomaly. 

I filter on Bedford to see the summary dashboard there.  
`Action:` Filter based on Location Dimensions using Summary Controls on the left<br>
•	Geography / `North America`, Europe  
•	Country / `US`, Canada, Mexico   
•	State / `Massachusetts`, RI<br>
•	Location / `Bedford`, Lexington<br>
•	Site / North, East, West<br>

The summary dashboard also shows me other metrics in the Bedford as well.  I look back 7 days at the alerts and see that there have been problems for a while.  There are recent alerts on Pump 005, so I drill in to take a closer look.  Notice how the alert navigates to the time date where the anomaly happened in the instance dashboard.<br>
`Action:` Pick Bedford / North and review the Alerts table to show how a single dashboard filters alerts and image cards and table cards to the filtered option.  Show how cards get filtered. Click on Pump entity ID on the alert, in the alerts table. 

## Review Asset History

I take a look at the asset history in Maximo and see if there was service done several days ago on this pump.

Operational support has some asset information in Monitor that was collected via Historians from SCADA or from devices that were connected to IOTP.<br>
`Action:` Click Connect devices Tab, navigate back to instance dashboard

An instance dashboard includes table card with additional link into Maximo EAM manage to learn more about a specific asset. Want to understand asset's age which he can find that out in Maximo EAM and when the last time it was serviced. Perhaps, it was improperly service which is now causing the vibrations. 
He wants to check if the asset was recently serviced in Maximo EAM. 
`Action:` Review Asset information in Maximo EAM Manage by clicking the info link on pump instance dashboard. 

It looks like the water pump bearing housing and seals were replaced a couple days ago. The pump ran normal for the rest of the day, but then began to vibrate again in the evening.<br>
`Action:` Review Asset information in Maximo EAM Manage. Right click on asset id link and open in new tab to see when the asset was serviced. Click on Work tab. Make sure work orders are sorted by most recent.

Having this data at hand, allows the reliability engineer to gain insights on the history of the asset to make informed decisions on how to proceed with maintenance.  

## Alert Thresholds
I dig deeper into investigation of the problem by looking at the alerts.  There are many alerts on this pump to look at.  Monitor provides a paradigm shift from traditional threshold-based alerts that becomes overwhelming to AI powered anomaly alerts to remove the false positives.  I filter on the high severity alerts and see there are just a few anomaly alerts.<br>
`Action:` Go back to monitor, Show alerts table, filter high severity alerts.

Vibration and Temperature are working in unison.  The Vector is a combination of Velocity in the X, Y, Z axis.  When all three experience exceptional vibration simultaneously there is something obviously very wrong with the asset.  You can see on the charts where the anomalies occur.
`Action:` Navigate to the “Velocity – 7 day Average” card

## Create Service Request
I go back to the alerts and create a service request in Maximo for the Maintenance Supervisor to look at to see why vibrations have returned since the seals were recently replaced. The Technician will reinspect the pump since he thought he fixed the vibration issue the last time it was worked on.<br>
`Action:` Go back to alert table, scroll the to the right side and click “Create Service Request”, Choose the Maximo environment to create the service request in, then enter site, then click create.

## Anomaly Function
Let's go back to the asset type and we can see there are live metrics flowing into the system.<br>
`Action:` Go back to entity type, Pump, select Data Tab. Add context on who goes to this page (IE data scientist to see more recent data events) See and add calculations i.e., anomaly model that is being triggered in the anomaly summary table. Show the live metrics of data flowing into the system. Click on the Metric (calculated) section to show the Velocity Vector.  Discuss the different types of OOTB function that can be applied, or custom functions such as the vector.  Or Anomaly models.  Or pure python code.

Built in AI models can be applied in Monitor with just a few clicks with no data science or development experience needed.  Models can also be created in Watson Machine Learning and used with Monitor.


Now, I’m going to turn it over to the maintenance supervisor to check the service request we created.


