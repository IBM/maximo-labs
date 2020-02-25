#  Analyze Data
You should now have a good understanding of how data flows into the Maximo Asset Monitor.  Now you will learn how to create calculated metrics from sensor data.  Maximo Asset Monitor includes many functions in the catalog that can be used to analyze asset behavior.

1.  Navigate to the data view that you explored towards the end of the last section. Metrics are values that come from the device type logical interfaces as is. “Calculated” or “derived” metrics are created by applying functions to those incoming metrics and producing new ones. These new, calculated metrics are also stored back into the data lake. A derived or calculated metric can be created by clicking on the “+” button.


1.  After clicking the Create New button, you will be prompted with the “Function Catalog.” The Function Catalog is a collection of built-in and custom functions that can be used to calculate new metrics and alerts. Take some time to scroll through and explore the catalog.


4.3  Take a look at how you can create a calculated metric by selecting the “Mean” function from the catalog. Then click “Select.”


4.4  In the next dialog, select the metric that you want to calculate the mean for. In this case, “Temperature.” Then click “Next.”


4.5  In the next dialog, leave the granularity as “Daily” for now and give your new metric a name, for example, “Daily_Temperature_Mean.” Leave everything else as default and click “Create.”


4.6  You should now see your new calculated metric in the metrics list on the left-hand side. Note that the Analytics Service runs jobs in batches every five minutes. Good time to take a break and check back in five minutes to see if the metric is being calculated.



4.7  In about five minutes, come back and take a look at your new calculated metric. You should start to see values come in. Keep in mind that this calculation is using the temperature value across all entities of that entity type to calculate the mean. In your case, you only have one entity, but typically an organization might have thousands of entities (devices). Analytics Service would calculate the mean across all of those thousands of entities. Below the chart you can see the timestamped data from each entity.


4.8  The calculated metric you used above is calculating a daily mean. What if you wanted to calculate something on an hourly basis? You can create a custom grain to achieve different time-based calculations. Create a new calculated metric that calculates the number of errors every hour. Start by clicking the “Create new +” button. Find the “Sum” function in function catalog and click “Select.” In the following dialog, select the metric “err” in the source field, leave everything else default and select “Next.”
4.9  In the output dialog, you can create a new granularity by clicking the “Manage” button.


4.10  In the create custom grain dialog, name the custom grain “Hourly” and select “Hourly” from the “Time basis” drop down. Leave everything else default and click “Create.”


4.11  Lastly, name your new calculated metric “Hourly_Sum_Errors” and click “Create.” Flip your Nordic Thingy over once in a while to generate errors and after five minutes you should start to see data in the chart.

4.12  Congrats! Thus far, you have learned how to view the metrics of your entities as well as create new, calculated metrics from that data. Just like metrics are stored in the data lake, calculated metrics are stored in the data lake as well. Open and view the DB2 database like we did in Section 3.3 (Monitor Page > Usage > Db2 Warehouse on Cloud > View Details > Launch > BLUEADMIN). Once at the list of tables, you'll find that the Analytics Service has created a new table- look for the name 'DM_<Entity Type>_<Grain Name>.'  Click on one of your new tables and view the data. Examples below.


4.13  Extra Credit: Use what you have learned thus far to create a new calculated metric that calculates the standard deviation of the “Humidity” metric on an hourly basis.
5 Analytics Service – Alerts and Custom Functions
This last section will complete the exercises on Analytics Service. You’ll first have a look at how you can create alerts. Alerts can be configured to activate when your data exceeds specific thresholds. These alerts are different than the notifications you created in the IoT Platform in section eight of this document. The conditions in notifications are calculated as soon as data from your devices lands in the platform. Analytics Service alerts, however, occur in batch mode approximately every five minutes.
After you have a look at creating alerts, we will then take a look at some sample data and how you can create your own custom functions to be added to the function catalog. A custom function is a multi-argument calculation that produces one or more output items (KPIs). Typically, the custom functions you write involve multiple lines of code. Custom functions you develop must be stored in a python package in an external repository, such as GIT, and registered with Watson IoT Platform Analytics.

5.1 Navigate to the data page for your entity type in the Analytics Service (like in Step 4.1) and click the '+' button to bring up the Function Catalog. Select the “Alert” function and then click “Select.”


5.2  In the create alert dialog, “Data Items” list, select the “Hourly_Sum_Errors” metric that you created in the last section.


5.3  Next, you need to add a condition expression. The Analytics Service uses Python for its expression language. Place the following expression into the “expression” field: ${Hourly_Sum_Errors} > 5
More information on writing expressions can be found in the documentation here: https://www.ibm.com/support/knowledgecenter/SSQP8H/iot/analytics/as_add_custom_ expressions.html


5.4  Click “Next” and then give the new alert the name “Error Alert” and then click “Create” to complete the creation of the alert.


5.5  If you have flipped over your Thingy more than five times, you should see the alert show up on the chart in about five minutes.

5.6  You can also receive alerts on an Event Streams topic and take action. That is beyond the scope of these materials. Find out more information on how to configure these actions in the help here: https://www.ibm.com/support/knowledgecenter/en/SSQP8H/iot/analytics/as_custom_a ctions.html
5.7  In this last set of steps, you will explore a prepopulated sample within the Analytics Service. In the IoT Platform, navigate to the “Monitor” tab. Search for the entity type called “Fluke.”



5.8  Under the title “Instance Dashboards,” you can see entities/device ids under the Fluke entity type/device type. The attributes “System,” “Site,” “Part,” etc. are Dimensions. You will learn how to create dimensions for your own entity type in Section 6. Click one of the device ids to see an instance dashboard. You can create instance dashboards the same way you create summary dashboards in Sections 6-9.

5.9  Now switch to the “Data” tab to view the aggregated metrics for all of the sensors in the Fluke entity type. There are lots of calculated metrics. Take some time to explore the calculated metrics. You can click the configure button on any of the calculated metrics to see what functions are used.

5.10 Some of these metrics were calculated with “Custom Functions.” In fact, this entire sample robot data was calculated using a custom function. As stated earlier, a custom function is a multi-argument calculation that produces one or more output items (KPIs). Typically, the custom functions you write involve multiple lines of code. Custom functions you develop must be stored in a python package in an external repository, such as GIT, and registered with Watson IoT Platform Analytics.
Creating and registering custom functions is an advanced topic and goes beyond the scope of these materials. You can learn more by reviewing the tutorial for creating custom functions in the documentation here: https://www.ibm.com/support/knowledgecenter/en/SSQP8H/iot/analytics/tutorials/as_a dding_complex_function_tutorial.html
You can also explore a sample Hello World custom function in GitHub here:
https://github.com/madendorff/functions
