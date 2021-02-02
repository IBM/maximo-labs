# Objectives
In this Exercise you will learn about:

* Which data dashboards are automatically created for you
* How to perform data analysis using the functions catalog
* How to be alerted about non-conforming asset conditions
* Troubleshooting functions
---
*Before you begin:*  
This Exercise requires that you have completed Exercise 1 Connected Devices
---

## View Data
Now that you know the data is successfully flowing into the IoT Platform Service, this exercise will let you see which dashboards are automatically created for you. Go to Maximo Asset Monitor page.

1. Click `Monitor`. Here you can see all of the entity types created from the [logical interfaces](https://www.ibm.com/support/knowledgecenter/SSQR84_monitor/iot/platform/GA_information_management/im_ui_flow.html#gs_web). An entity is created for each mapped device ID along with it's corresponding properties.
2.  Search for your Entity Type `<your last name>_thingy`
![Search Entity Types](/img/monitor_8.2/i73.png) &nbsp;  
3.  Click on`<your last name>_thingy` row in the table for your entity type
![Search by Entity Type Name](/img/monitor_8.2/i74.png) &nbsp;  
4.  Since you only have one device for Thingy Entity Type `<your last name>_thingy`, only one entity is listed on the `Dashboards` tab in the `Instance Dashboard` table on `Entities Type` page for your Entity Type.  As you add more devices to the `<your last name>_thingy` Device Type in the IoT Platform they will appear on the entities page. Any entity can be an asset, an IO Point, a system of assets or what ever you choose.<br>
(Note: You will not see the Hourly summary dash board just yet)
![Entities Page](/img/monitor_8.2/i75.png) &nbsp;   
5.  Click on the `Data` Tab and expand `Metrics` to see all the aggregated metrics across all your devices like the max and min values for time series float data.
6.  Scroll down a bit to view the metric charts for `co2`, `pressure` and `temperature`.  Click on `co2`to see its max an min over time aggregated across all entities in `<your last name>_thingy` Entity Type.<br>
(Note: you might only see the Metric part now, the other parts will turn up later as you work through the exercises)
![Entities Page](/img/monitor_8.2/i76.png) &nbsp;
7.  Click the `Dashboards` tab to return to see the list of `Entities` in the `Instance Dashboards` table.  
8.  Select your Thingy entity listed in the `Instance Dashboards` table.  Now you only see the data for this specific asset.  The `Dimensions` tab shows the meta data used to classify your asset.<br>
(Note: you might only see the Name dimension, but you will learn to add dimensions later)
![Dimensions Page](/img/monitor_8.2/i77.png) &nbsp;
9.  Click `Metrics` tab to see metrics for the last 24 hours for this entity (asset) only. It may take some time to accrue enough data to visualize, take a break and return after ten or so minutes.
![Metrics Page](/img/monitor_8.2/i78.png) &nbsp;  

## Analyze Data
In the previous exercise you saw how you can see the raw device data in Monitor Dashboards, in this exercises you will learn how to perform data analysis and transform data so that remote operations managers can take action using intelligent insights.  

1.  Click `Monitor`. Here you can see all of the entity types created from the [logical interfaces](https://www.ibm.com/support/knowledgecenter/SSQR84_monitor/iot/platform/GA_information_management/im_ui_flow.html).  An entity is created for each mapped device ID along with it's corresponding properties.
2.  Search for and click on your Entity Type `<your last name>_thingy`
![Search Entity Types](/img/monitor_8.2/i74.png) &nbsp;   
3.  Click `Data` tab  on the homepage for your Entity Type.
4.  You can start tracking the mean of the entities across your Entity Type by creating a calculated metric from the Function Catalogue.
5.  Click `+` button to access the Function Catalog. 
![Search Catalog](/img/monitor_8.2/i79.png) &nbsp;
6.  Search for the `Mean` function in the catalog. Click on it and click `Select`.
![Add Calculated Data for Mean](/img/monitor_8.2/i80.png) &nbsp;
7.  In the next dialog, select the metric that you want to calculate the daily mean for. In this case, `temperature` and click `Next`.
![Add Daily Mean Temperture Calculated Data](/img/monitor_8.2/i81.png) &nbsp;
8.  Since temperature is changing and recorded over time you need to specify what time period the mean is being calculated for.   This is called the granularity and you can leave it set to `Daily` to calculate the daily mean.
![Search Entity Types](/img/monitor_8.2/i82.png) &nbsp;
9.  Replace the calculated `Output metric` name with your own like `Daily_Temperature_Mean`
10.  Leave everything else as default and click `Create` to save the metric.  This calculated metric is calculating a daily mean. If you wanted to calculate an `Hourly_Temperature_Mean`, you can set the `Granularity` to `Hourly` on the output dialog.
11.  You should now see your new calculated metric in the Metric (calculated) list on the left-hand side. If not, then wait 5 minutes and refresh the page. 
![Calculated Metrics](/img/monitor_8.2/i83a.png) &nbsp;  
12.  Click the `Configure` button to update calculated metrics.
![Calculated Metrics](/img/monitor_8.2/i83b.png) &nbsp;  
13.  Click `Next` and click on the `Auto schedule` switch to change the schedule of how often the mean is calculated. You can change the frequency of how often daily mean is calculated changing it from every 5 minutes to every hour.  You can also change how many days back the mean temperature function should calculate for using historical temperature data.    
![Calculated Metrics](/img/monitor_8.2/i84.png) &nbsp;  
14.  Click `Update` to save your function configuration changes.

15. Create a new calculated metric that calculates the number of errors every hour. Start by clicking the `+` button. Find the `Sum` function in function catalog and click `Select`. 
![Create a Sum data item](/img/monitor_8.2/i84a.png) &nbsp;  
16. In the following dialog, select the metric `err` in the source field, leave everything else default and select `Next`.<br> 
In the output dialog, you can create a new granularity by clicking the `Manage` button.
![Create new granularity](/img/monitor_8.2/i84b.png) &nbsp;  
17. In the Create custom grain dialog, name the custom grain `Hourly` and select `Hourly` from the `Time basis` drop down. Leave everything else default and click “Create.” 
![Create custom grain](/img/monitor_8.2/i84c.png) &nbsp;
18. Name your new calculated metric `Hourly_Sum_Errors` and click `Create`. 
![Finalize new Sum data item](/img/monitor_8.2/i84d.png) &nbsp;
19. Flip your Nordic Thingy over once in a while to generate errors and after five minutes you should start to see data in the chart.
![View new Sum data item](/img/monitor_8.2/i84e.png) &nbsp;

Congratulations. You have learned how to view the metrics of your entities as well as create new calculated metrics from that data. Just like metrics, the calculated metrics are also stored in the data lake. Open and view the DB2 database tables like we did in Exercise 1 (Monitor Page > Usage > Db2 Warehouse on Cloud > Launch > Data > Tables > BLUEADMIN). <br>
Once the list of schemas are populated, you'll find that the Analytics Service has created new tables, one for each time grain - search for the name 'DM_<Entity Type>' and you'll see them all:
![View new Sum data item](/img/monitor_8.2/i84f.png) &nbsp;
Click on one of the new tables to view the data.

---
**Note:**
Calculated functions by default are scheduled to run every 5 minutes. Check back later to see if the metric is being calculated.
---

## Alerts

In this exercise you will learn how to create alerts. Alerts are functions in the Maximo Asset Monitor catalog that can be configured to notify you that certain asset conditions require attention.  There are a many types of alert functions included in the catalog like `High`, `Low` and<br>`Alert Expression Filter`.  Like other functions in the catalog, these alerts can be scheduled to run every five minutes or less frequently. This is unlike Actions in the IoT Platform Service where notifications are invoked immediately when event data is ingested. Actions have an application programming interface to integrate with other systems.  You can also create and register your custom functions in the Maximo Asset Monitor catalog. Both of these are advanced topics that are beyond the scope of this Exercise. You can learn more about how to create custom functions in Maximo Asset Monitor by following this [tutorial](https://www.ibm.com/support/knowledgecenter/en/SSQR84_monitor/iot/analytics/tutorials/as_adding_complex_function_tutorial.html).

1. Use what you learned in the previous exercise to create a calculated metric named `Hourly_Sum_Errors` to sum up all the alert errors created by turning your Nordic Thingy up side down using the `Sum` function in the Catalog. Now you will create an alert to be notified when the hourly sum of errors exceeds 5 using the instructions below.
2. Configure an alert using the value of `Hourly_Sum_Errors` (calculated metric) created in the previous step. ![Calculated Metric Using Sum](/img/monitor_8.2/i85.png) &nbsp;  
3. Click `+` button access the Function Catalog.  ![Add New Data Item](/img/monitor_8.2/i85a.png) &nbsp;  
4. Search on `alert`
5. Select the `AlertExpression` function and then click `Select` button.  ![Select AlertExpression](/img/monitor_8.2/i86.png) &nbsp;  
6. Configure the alert to trigger an alert when the value of `Hourly_Sum_Errors` exceeds 5 errors. It will require investigation of the errors. Monitor uses Python for its expression language using the expression `df['metric-name']`
7.  Set Alert Expression `expression` value to `df['Hourly_Sum_Errors']>5`
8.  Set Alert Expression `Severity` value to `High`
9.  Set Alert Expression `Status` value to `New`. Alerts start in state of `New` until they are `Acknowledged`, `Validated` and finally `Resolved` or `Dismissed`. Click the Next button.![Configure Alert Expression Configuration](/img/monitor_8.2/i87.png) &nbsp;  
10.  Name the alert `Hourly_Sum_Errors_Alert` and click the Create button. ![Configure Alert Expression Output](/img/monitor_8.2/i88.png) &nbsp;
11. The Monitor pipeline runs every 5 minutes. If you have flipped over your Thingy more than five times, you should see the alert show up on the chart in about five minutes. ![View Alert Expression Result](/img/monitor_8.2/i88a.png) &nbsp;
12. You can also watch all alerts for this entity type by selecting the Alerts tab. ![View All Alerts](/img/monitor_8.2/i88b.png) &nbsp;

Congratulations.  You have learned how to create new Alerts from a calculated metric that sums the total number of errors that occur on an asset device.  You can also receive alerts on a device event stream topic and take action. That is beyond the scope of these materials. Find out more information on how to configure these actions in the [documentation](https://www.ibm.com/support/knowledgecenter/en/SSQR84_monitor/iot/analytics/as_custom_actions.html).


## Troubleshoot Functions

1.  Should you see `Analysis Stopped` warning this means your pipeline for your entity type has stopped calculating your metrics. You should click on `Analysis Stopped red dot ` to view the error details.  ![](/img/monitor_8.2/i99.png) &nbsp;
2.  These warnings often occur because a calculated metric function input argument depends on a metric name that has been deleted or whose name has changed.   
3.  Click on `Search glass` icon in the data field to find the metric name that is causing the problem.  Make sure it exists or choose the new metric name in the calculated metric that uses it.
