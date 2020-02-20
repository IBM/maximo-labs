# View Data
Now that you know the data is successfully flowing into IOT Platform Service, it is time to take a look at that data Maximo Asset Manager dashboards. Go to Maximo Asset Monitor page.

1. Click `Monitor`. Here you can see all of the entity types created from the [logical interfaces](https://www.ibm.com/support/knowledgecenter/SSQP8H/iot/developing/connect.html).  An entity is created for each mapped device ID along with it's corresponding properties.
2.  Search for your Entity Type `<your last name>_thingy`
![Search Entity Types](img/i73.png) &nbsp;  
3.  Click on`<your last name>_thingy` row in the table for your entity type
![Search by Entity Type Name](img/i74.png) &nbsp;  
4.  Since you only have one device for Thingy Entity Type `<your last name>_thingy`, only one entity is listed on the `Dashboards` tab in the `Instance Dashboard` table on `Entities Type` page for your Entity Type.  As you add more devices to the `<your last name>_thingy` Device Type in IOT Platform they will appear on the entities page.  Any entity can be an asset, an IO Point, a system of assets or what ever you choose.
![Entities Page](img/i75.png) &nbsp;   
5.  Click on the `Data` Tab and expand `Metrics` to see all the aggregated metrics across all your devices like the max and min values for time series float data.
6.  Scroll down a bit to view the metric charts for `co2`, `pressure` and `temperature`.  Click on `co2`to see its max an min over time aggregated across all entities in `<your last name>_thingy` Entity Type.
![Entities Page](img/i76.png) &nbsp;
7.  Click the `Dashboards` tab to return to see the list of `Entities` in the `Instance Dashboards` table.  
8.  Select your Thingy entity listed in the `Instance Dashboards` table.  Now you only see the data for this specific asset.  The `Dimensions` tab shows the meta data used to classify your asset.  
![Dimensions Page](img/i77.png) &nbsp;
9.  Click `Metrics` tab to see metrics for the last 24 hours for only this asset or IO Point. It may take it time to accrue enough data to visualize, take a break and return after ten or so minutes.
![Metrics Page](img/i78.png) &nbsp;  

# Analyze Data
Now that you have device data, it is time to further analyze and process that data so that remote operations managers can take action using intelligent insights.  

1.  Click `Monitor`. Here you can see all of the entity types created from the [logical interfaces](https://www.ibm.com/support/knowledgecenter/SSQP8H/iot/developing/connect.html).  An entity is created for each mapped device ID along with it's corresponding properties.
2.  Search for your and click on your Entity Type `<your last name>_thingy`
![Search Entity Types](img/i73.png) &nbsp;  
3.  You can the mean of a metric by creating a calculated metric by selecting the `Mean` function from the catalog.  
4.  Click `Data` tab  for your and click on your Entity Type `<your last name>_thingy`
![Add Calculated Metrics](img/i74.png) &nbsp;  
5.  Click `+` button access the Function Catalog.
![Search Catalog](img/i79.png) &nbsp;
6.  Search on `Mean`
![Add Calculated Data for Mean](img/i80.png) &nbsp;
7.  Select the `Mean` function and then click `Select` button.
8.  In the next dialog, select the metric that you want to calculate the daily mean for. In this case, `Temperature` and click `Next`.
![Add Daily Mean Temperture Calculated Data](img/i81.png) &nbsp;
9.  Since temperature is changing and recorded over time you need to specify what time period the mean is being calculated for.   This is called the granularity and you can leave it set to `Daily` to calculate the daily mean.
![Search Entity Types](img/i82.png) &nbsp;
10.  Replace the calculated `output metric` name with your own like `Daily_Temperature_Mean`
11.  Leave everything else as default and click `Create` to save the metric.  This calculated metric is calculating a daily mean. If you wanted to calculate an `Hourly_Temperature_Mean`, you can set the `Granularity` to `Hourly` on the output dialog.
12.  You should now see your new calculated metric in the metrics list on the left-hand side.
![Calculated Metrics](img/i83.png) &nbsp;  
---
**Note:**
Calculated functions by default are scheduled to run every 5 minutes.  Check back to later see if the metric is being calculated.
---


 Congratulatons!.  You have learned how to view the metrics of your entities as well as create new, calculated metrics from that data.

# Alerts
1. Configure the alert to trigger an alert when the value of a metric-name `Hourly_Sum_Errors`
![Calculated Metric Using Sum](img/i75.png) &nbsp;  
2. Click `+` button access the Function Catalog.
3. Search on `Alert`
4. Select the `AlertExpression` function and then click `Select` button.
7. Configure the alert to trigger an alert when the value of a metric-name `Hourly_Sum_Errors`
![Calculated Metric Using Sum](img/i75.png) &nbsp;  
reaches 24 errors.  It will require investigation of the errors.  Using the format `df['metric-name']`
8.  Set Alert Expression `expression` value to `df['“Hourly_Sum_Errors']>24`
9.  Set Alert Expression `Severity` value to `df['“Hourly_Sum_Errors']>24`
10.  Set Alert Expression `Status` value to `New`  Alerts start in state of `new` until they are `acknowledged`, `validated` and finally `resolved` or `dismissed`
![Calculated Metric Using Sum](img/i76.png) &nbsp;  
11.  Name the alert `Error_Alert`

In the create alert dialog, “Data Items” list, select the “Hourly_Sum_Errors” metric that you created in the last section.

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

## Create a Monitor Dashboard

Inside of your Entity Type homepage, right when you log in for the first time you will see a Dashboard card called `Hourly`. Upon clicking on the card, you will most likely see a dashboard that looks like this:

If you complete the full length Hands on Lab, your dashboard will look something like this. Today, we’ll get you on the right track:


### Add Line Graph Cards
Time series data is represented well as line graphs. Let's display the the critical performance metrics the Thingy is providing so that we can see historical trends and in later labs apply ai models to detect anomalies.

1.  Navigate back to the landing page for your entity type. You will see under “Summary Dashboards” an option to create a new dashboard. Click `+New Summary`.
2.  Next to `Definition`, click `Contents`. Select which data you would like to graphed on your dashboard.  
3.  Select which aggregation methods  you would like to see on your line graphs for each of your data types (You created these in the Analytics Service chapters).
4.  Now, click `Dashboard` next to contents. You can drag and drop the line graph cards that you just made in whichever orientation you see fit.
5.  Once you are content with your dashboard layout, click `Create Summary`. After a few minutes, you will end up with the beginnings of a sophisticated and value driven dashboard.
6.  Copy and paste the JSON lines 3 to 158 from “Monitor Final JSON without Image.json” into the top of the card array of your exported JSON. Copy and paste the JSON from my file beginning at the curly brace on line 3.

You are adding a few value cards to your dashboard. Please refer to the Full Hands on Lab in the Box folder if you would like to go through the whole lab.

Be careful of your commas, curly braces, and brackets or your JSON will get angry. In Atom, you can click on the curly brace at the top of your value card and it will underline that brace blue along with the last curly brace of the card. Make sure to put a comma after the last curly brace before the beginning of the next card.

You have finished the  "Operational Monitoring of Assets" lab.
