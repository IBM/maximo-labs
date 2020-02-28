# Objectives
In this lab you will learn how to:

*  Create an asset instance dashboard and a summary dashboard that aggregates asset performance metrics across multiple assets
*  Detect anomalies by applying anomaly models
*  Create alerts to prioritize anomalies
*  Monitor alerts across multiple assets in a summary dashboard you create
*  Troubleshoot to find the rood cause of a problem

## Before You Begin
This lab requires that you have completed the pre-requisites required for [all labs](../facilitator_instructions)

You will use data from simulated industry robots as the assets you are responsible to monitor. Monitor provides simulated anomalies that you can apply to learn about anomaly detection.

## Create Simulated Robots to Monitor
1.  Click `Home` to see the top level tasks you can do with Monitor. ![Home](img/i89.png) &nbsp;
2.  Click `Monitor Entities` You will create a simulated set of robot assets (entities) that represent an assembly line of manufacturing robots.
3.  Click `Create entity type` button. ![Create an Entity Type](img/i90.png) &nbsp;
4.  Select on `Sample Robot` and click on `Next`button.  ![Create a Robot Entity Type and simulated robot metrics](img/i91.png) &nbsp;
5.  Edit the Entity Type name prepending your own initials `Your_Initials_Robots_Type`.![Create a Robot Entity Type and simulated robot metrics](img/i92.png) &nbsp;
6.  Click `Submit` button.  Monitor will create  a set of robots you can monitor with simulated random data.  

## Explore Instance Dashboards
An [instance dashboard](https://www.ibm.com/support/knowledgecenter/SSQP8H/iot/dashboard/tutorials/instance_dashboard_tutorial.html) displays the operational metrics for a single asset, i.e. one specific industry robot. The data metrics of the robot are presented on the dashboard using cards.

1.  On the `Data` tab, expand `Metric` to see the metrics that Monitor has created for your Robots with simulated time series data.   The outline shows the acc, load, speed and torque metrics in the data items outline. ![View recent (Less than 24 hours) Robot metrics across all robots](img/i93.png) &nbsp;
2.  Expand  `Dimensions` to see the classifications Monitor has created to filter and summarize all the Robots key performance metrics like by `Manufacturer`. ![View Robot dimensions across all robots](img/i94.png) &nbsp;
3.  Expand  `Metric (calculated)` to see the functions used to create the simulated data like generating a random number to cause a fault like `abnormal_stop_count`. ![View Robot calculated metric functions](img/i95.png)
4.  Click the `Dashboards` tab to  to see the list of `Entities`(Robots) in the `Instance Dashboards` table.
5.  Click one of the Robot instance dashboards that have been automatically created for you by Monitor. ![View Robot calculated metric functions](img/i96.png) &nbsp;
6.  Click on the `Back from` calendar drop down to see historical performance metrics of this robot.   ![View Robot calculated metric functions](img/i97.png) &nbsp;
7.  Note the different types of [cards](https://www.ibm.com/support/knowledgecenter/SSQP8H/iot/dashboard/cards_json_ref.html) in your dashboard.  Monitor provides multiple types of cards to choose from when configuring a dashboard.

### Value Cards
A value card shows a single or multiple entity metric value. A value may be attributed with a title, a label and a unit. The value may be given a precision and rules on threshold levels.  A value card may be sized as a wide or tall card with big or small sized numbers.

### Line Graph Cards
A line graph card shows time-series data from a single or multiple entities as a graph with time and value axes. The graph may be given a title and labels on the axes. The line graph may be shown in full screen mode and is added a data table with the metrics values plotted in the graph.
A line graph may also be overlaid with an Alert metric indicating any anomalies on the metric.

### Table Cards
A table card shows tabular data by columns. A table card is configured by referencing some data source for each column. The table may group data source values and present a count rather than each individual value.
An Alerts Table is a preconfigured table presenting alert information.

### Image cards
An image card shows as a custom image with configured hotspots. Each hotspot is indicated at a position on the image with an icon and configured as a value card with entity metrics. The value card is shown when clicking on the hot spot.

## Edit Instance Dashboard
In this exercise you will modify the layout of the individual robot instance dashboard.  An asset instance dashboard is a configuration of cards, layout and the datasource metrics for a specific asset. One instance dashboard json configuration file is used for all robots of your Robot Entity type.  You can export and dashboard configuration file adding new cards.  You can also reuse and import dashboard configuration files from others.

1.  Click the `gear icon` to modify the layout of your Robot instance dashboard.  This dashboard template is shared by all robots in your Entity Type. ![View Robot instance dashboard](img/i98.png) &nbsp;
2.  Monitor provides a responsive user interface as the display size of the device or browser window changes you can reposition the cards.  Change the layout of your dashboard by dragging cards around with you mouse. ![View Robot instance dashboard](img/i100.png) &nbsp;
3.  Once you are satisfied with the layout, change the width of the browser window to a smaller size.  Note the `Dashboard Size` of the layout has changed.  Once again change the layout of your dashboard by dragging cards around with your mouse. ![View Robot instance dashboard](img/i101.png) &nbsp; The dashboard configuration saves all the adjustments you make to the layout for each resize your browser window.
4.  Click on `Export` button. The dashboard configuration file in a json format is saved to your local downloads directory on your computer.  
5.  Click on `Save` to save the new dashboard layout.


# Create a Summary Dashboard
In the previous exercise you created an instance dashboard for each Robot.   In this exercise you will create a [Summary Dashboard](https://www.ibm.com/support/knowledgecenter/SSQP8H/iot/dashboard/tutorials/summary_dashboard_tutorial.html).

1.  From the side menu, click `Monitor`.
2.  From the `Entity Types` tab, select your entity type and click `View`.
3.  Select the `Dashboards` tab. ![View Robot instance dashboard](img/i100.png) &nbsp;
4.  Click New Summary.
5.  On the Definition page, assign the name "Painting_robot_daily_summary" to the dashboard.
6.  Select the daily time grain.
7.  Accept the default value for timestamp.
8.  If you simulated data that uses the robot template, define your taxonomy and its hierarchy as follows:
9.  Select manufacturer as the highest-level dimension.
10.  Select firmware as the next level dimension.
11.  Set manufacturer as the parent of firmware
12.  If you added data from a physical device, define your taxonomy and its hierarchy as follows:
13.  Select provider as the highest-level dimension.
14.  Select color as the next level dimension.
15.  Set provider as the parent of color.
16.  Click Next.
17.  If you simulated data by using the device simulator, skip the step to define the taxonomy.
19.   On the Contents page, choose load to include it on the dashboard.
20.  Set the aggregation method to mean.
21.  Click Create summary.

# Reuse Dashboard Configurations
1.  Export the JSON configuration From the Entity types tab, select your entity type. From the Dashboards tab, find the dashboard that you want to edit under Summary Dashboards.  Click Menu and click Edit.
2. Go to the Dashboard page of the summary dashboard editor.
3. Click Export.

# Modify Dashboards
## Add Line cards
1.  Add a line graph card that plots the minimum, average, and maximum work_performed by robots.
Add a table card that displays the daily mean work_performaned by robots for the last 7 days. Add the work_performed_too_high alert.
Show a value card that displays the average work_performed value for entities 73000 and 73001. Use the dataFilter object to specify each deviceid.

## Add an image card.
Display the map that you added when you added the source data.
Add a hotspot over two states on the map. Associate one state with robot 73001 and another state with robot 73002. Tip: If you created a robot with different devices names, replace with the name of two of your devices.
Save you file. The dashboard configuration in the JSON file is similar to the following example. Remember: You might use different device names in your configuration, for example in dataFilter.
Expand to see dashboard example

## Step 4: Import the JSON configuration
From the Entity types tab, select your entity type.
From the Dashboards tab, find the dashboard that you want to edit under Summary Dashboards.
Click Menu and click Edit.
Go to the Dashboard page of the Summary Dashboard editor.
Click Import.
Browse to find a local summary dashboard configuration file.
Verify that the dashboard looks as expected and then click Save.
Tip: If the hotspots do not display on the image card, make sure to set the time range on the image card to a period of time that contains data. Alternatively, you might need to resize the dashboard for the hotspots to display.

## Step 5: Monitor the dashboard
From the Entity types tab, select your entity type.
From the Dashboards tab, find the dashboard that you want to edit under Summary Dashboards.
Click the dashboard to open it.
If Summary Controls are displayed, either:
Choose GHI Industry under manufacturer and choose 2.14 under firmware
Choose martech under provider and choose red under color
View the average daily worked performed by painting robots. If a taxonomy is defined, either view:
The average daily work performed by painting robots on firmware 2.1 in GHI Industry.
The average daily work performed by the red painting robots that are provided by Martech.
Hover over the map to view the average work performed in each state. If a taxonomy is defined, either view:
The average work performed in each state for 2.1 robots in GHI Industry plants.
The average work performed in each state for red robots that are provided by Martech.

## Add Line Graph Cards
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
