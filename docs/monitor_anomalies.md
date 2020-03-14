chart# Objectives
In this lab you will learn how to:

*  Create an asset instance dashboard to see how an individual asset is performing
*  Create a summary dashboard that aggregates asset performance metrics across multiple assets of the same type
*  Detect anomalies by applying anomaly models
*  Create alerts to prioritize anomalies
*  Monitor alerts across multiple assets in a summary dashboard you create
*  Troubleshoot to find the rood cause of a problem

---
*Before you begin:*  
This lab requires that you have completed the pre-requisites required for [all labs](../facilitator_instructions)
---

## Create Simulated Robots to Monitor
In this exercise you quickly create some simulated robot operational data that you will use in your exercises in this Lab.  You will use data from simulated industry robots as the assets you are responsible to monitor.

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
8.  In this exercise the Instance Dashboard for the Robots was automatically created for you.  You can also export a summary dashboard and import it by managing instance dashboards as shown in the next exercise.  Take a moment to see what cards were created for you in the instance dashboard.

*Value Cards*
A value card shows a single or multiple entity metric value. A value may be attributed with a title, a label and a unit. The value may be given a precision and rules on threshold levels.  A value card may be sized as a wide or tall card with big or small sized numbers.

*Line Chart Cards*
A line chart card shows time-series data from a single or multiple entities as a chart with time and value axes. The chart may be given a title and labels on the axes. The line chart may be shown in full screen mode and is added a data table with the metrics values plotted in the chart.
A line chart may also be overlaid with an Alert metric indicating any anomalies on the metric.

*Table Cards*
A table card shows tabular data by columns. A table card is configured by referencing some data source for each column. The table may group data source values and present a count rather than each individual value.  An Alerts Table is a preconfigured table presenting alert information.  You will add one later for tabulating alerts.

*Image cards*
An image card shows as a custom image with configured hotspots. Each hotspot is indicated at a position on the image with an icon and configured as a value card with entity metrics. The value card is shown when clicking on the hot spot.  You will add one later for displaying an image of the robot.

## Edit Instance Dashboard
In this exercise you will modify the layout of the individual robot instance dashboard.  An asset instance dashboard is a configuration of cards, layout and the datasource metrics for a specific asset. One instance dashboard json configuration file is used for all robots of your Robot Entity type.  You can export and dashboard configuration file adding new cards.  You can also reuse and import dashboard configuration files from others.

1.  Click the `gear icon` to modify the layout of your Robot instance dashboard.  This dashboard template is shared by all robots in your Entity Type. ![Manage Instance Robot dashboard](img/i98.png) &nbsp;
2.  Monitor provides a responsive user interface as the display size of the device or browser window changes you can reposition the cards.  Change the layout of your dashboard by dragging cards around with you mouse. ![View Robot instance dashboard](img/i100.png) &nbsp;
3.  Once you are satisfied with the layout, change the width of the browser window to a smaller size.  Note the `Dashboard Size` of the layout has changed.  Once again change the layout of your dashboard by dragging cards around with your mouse. ![View Robot instance dashboard](img/i101.png) &nbsp; The dashboard configuration saves all the adjustments you make to the layout for each resize your browser window.
4.  Click on `Export` button. The dashboard configuration file in a json format is saved to your local downloads directory on your computer.  
5.  Click on `Save` to save the new dashboard layout.


# Create a Summary Dashboard
In the previous exercise you created an instance dashboard for each Robot.   In this exercise you will create a [Summary Dashboard](https://www.ibm.com/support/knowledgecenter/SSQP8H/iot/dashboard/tutorials/summary_dashboard_tutorial.html).  There is one summary dashboard presenting aggregated and filtered performance KPI across all robots of the type.  A summary dashboard allows you to see the metrics for a filtered group of assets.  "Show me all robots from a manufacturer and with a specific firmware.""

The filters are called dimensions.  In the "Mastering Monitor" Lab you will learn how to assign dimensions to the entities. Our simulated robots already have the appropriate dimensions for assigned to each robot.  Robot 73000 may have a manufacturer GHI Industries and Robot 73002 may have Rentech. A summary dashboard allows you filter assets and then compute the data metrics aggregations for the applied filter.  For example, the Max, Min and Mean torque of all robots for the filtered scope of a selected manufacturer.

A summary dashboard uses time grains when computing the aggregations.  Monitor can display four types of summary dashboards. You can choose by hour, day, week, month time grains.  A summary dashboard supports the same cards as an instance dashboard.

1.  From the side menu, click `Monitor`
2.  From the `Entity Types` tab, select your entity type and click `View`
3.  Select the `Dashboards` tab ![Create summary dashboard](img/i102.png) &nbsp;
4.  Click `New Summary`
5.  On the `Definition` page, assign the name `robot_daily_summary` to the dashboard
![Data filter and data aggregation using dimensions](img/i103.png) &nbsp;
6.  Select the `daily` time grain
7.  Accept the default value for `timestamp`
8.  Since your simulated robot data also created dimensions, define your filters.  Select `load_rating` as the lowest-level dimension and `manufacturer` as the parent dimension
9.  Select `firmware` as the mid-level dimension and `manufacturer` as the parent dimension
10.  Select `manufacturer` as the dimension and leave `None` as the parent since it is the top level filter and aggregation we want to see.
11. Click `Next` and choose the max, min and mean for aggregation methods for all the number metrics. ![Assign dimensions for order of aggregations](img/i104.png) &nbsp;
12. Click `Export`to save the dashboard json configuration. You will edit it later.  You can also import dashboard configurations from this menu.
![Export the summary dashboard configuration json](img/i105.png) &nbsp;
14.  Click `Create summary` to create the dashboard.  Your dashboard should like something like the one below.
![Expoert the summary dashboard configuration json](img/i106.png) &nbsp;
15.  Notice the summary dashboard form automatically added the aggregations to your `Metrics (calculated)` for the min, max and mean.  Optionally repeat the steps above to create summary dashboards to view hourly, weekly and monthly performance metrics summaries of the all robots.

# Add Metric Line Card
You need anomalies to be able to detect anomalies.  Monitor provides simulated anomalies that you can apply to learn about anomaly detection.  In this exercise you will add some simulated anomalies to `travel_time` deviation to your robots using the steps below.  The `AnomalyGeneratorExtremeValue` function adds anomalies to an existing metric your choose.   It abruptly increases or decreases the normal metric values.   The increased value could still be within a SCADA system normal operating range and therefore the max or min business rules would not adequately detect the anomaly.   In this exercise you will  add a line chart to your instance dashboard that shows the `travel_time_anomaly` that will be analyzed in later exercises by the Maximo Asset Monitor anomaly models you will add in the next exercise.

1.  Search the function catalog for  `AnomalyGeneratorExtremeValue` to create an anomaly for the .
![Search Function Catalog for Anomaly Generator Extreme Value](img/i107.png) &nbsp;
2.  Choose  `travel_time` for the metric `input_item`.  Extreme anomaly values will be added to this time series metric.
3.  Set `factor` to a value of `100`.  This is how frequently an anomaly will occur.  An anomaly will be generated after every `100` data points.
3.  Set `size` to a value of `4`.  This is how extreme value will be.  An anomaly will be `4` times the source `travel_time` metric ![Add anomaly metric](img/i108.png) &nbsp;
5.  Set the `output_metric` to `travel_time_anomaly` ![Travel time anomaly metric name that will have anomalies](img/i109.png) &nbsp;
6.  Click `Create`
7.  Click on `Dasbhoards` tab to see the list instance dashboards
8.  Click on `Gear` icon top right.  Choose `Manage instance dashboards`
9.  Click on `Export` button top right. Instance dashboard json file should be saved in your browser downloads directory with a name of `Industrial Robot summary-dashboard.json`
![Export Instance Dashboard Json](img/i109b.png) &nbsp;
10.  Open the file using an Integrated Developer Environment like [Atom](https://atom.io/) or copy the file contents into an online [Web JSON editor](https://jsoneditoronline.org/#left=local.ginesu).  Read about the JSON structure of [Monitor dashboard template](https://www.ibm.com/support/knowledgecenter/SSQR84_monitor/iot/dashboard/dashboard_json_ref.html) and then study the JSON file cards in the editor.
11.  Insert the [travel_time line chart card json](https://www.ibm.com/support/knowledgecenter/SSQR84_monitor/iot/dashboard/line_graph_json_ref.html) below into the `"cards":[]`.

    ```
    {
        "content": {
            "series": [
                {
                    "dataSourceId": "travel_time_anomaly",
                    "label": "Travel Time"
                }
            ],
            "unit": "sec"
        },
        "dataSource": {
            "attributes": [
                {
                    "attribute": "travel_time_anomaly",
                    "id": "travel_time_anomaly"
                }
            ],
            "range": {
                "count": -24,
                "interval": "hour"
            },
            "timeGrain": "day"
        },
        "id": "travel_time_anomaly_line_card",
        "size": "LARGE",
        "title": "Travel Time with Anomaly",
        "type": "TIMESERIES"
    },
    ```
12.  Notice how the JSON nodes for `"content": {"series":` and `"content": {"dataSourceId":` don't have an aggregation ` "aggregator": "min",` like other line metrics in summary dashboard JSON.  As a result the `travel_time_anomaly` metric line chart data will display raw grain metric data. ![ travel_time_anomaly will show sudden extreme anomalies](img/i113.png) &nbsp;  
13.  Notice how the `"range": {"count": -24,"interval": "hour"}` JSON node lets Monitor know to only display the last 24 hours of data.    
14.  Make sure to change all values with size `XLARGE` to `LARGE`  and `XSMALLWIDE`to `SMALLWIDE`, since these formats have been deprecated.
15.  In the IDE, save your changes to the instance dashboard JSON file.
15.  You can see the finished [Industrial_Robot_Instance_Travel_Time.json](here)
16.  Import the ![Robot Instance Dashboard JSON template](img/i112.png).  Click on `import` button, choose the `file` you updated with the line card click `open` to import your updated JSON file. ![Import Instance Dashboard Json](img/i110.png)&nbsp;
17.  Your instance dashboard should now look similar to the one below and have a `travel_time_anomaly` Card. ![Robot Instance Dashboard](img/i114.png).

# Add Anomaly Detection
Maximo Asset Monitor includes models to [detect anomalies](https://www.ibm.com/support/knowledgecenter/SSQR84_monitor/iot/analytics/as_detect_predict.html) in the function catalog.  The anomaly models can detect many types of anomaly patterns.  These include:

*  *Varying signal becomes flat line* which can be caused by a defective or tampered with sensor.
*  *Varying signal becomes a near vertical line* which can be caused by a defective sensor.  Extreme changes to the system.
*  *Sudden peak maximum or minimum exceeds historic values* which can be caused by operating equipment outside normal operating procedures.
*  *Flat line becomes a varying signal*  which can be a system that has been running smoothly become out of tolerance or unstable.
*  *No sensor data is available* which can be caused by a defective sensor or network connectivity issues.
*  *A predicted value doesn't come within the threshold* based on correlated dependent target variables values.

In this exercise you will:

 *  **Add anomaly functions** to your Robot Entity Type.  
 *  **Add a Line Chart** to visually compare how each anomaly model high scores correlates with the robot `travel_time_anomaly`.
 *  **Add an Anomaly Alerts**  using anomaly function score thresholds that corresponds to a level that indicates an anomaly for a robot metric.
 *  **Add Alerts to Line Chart** to visually see where anomalies are occurring on the `travel_time_anomaly` metric.
 *  **Add Alerts Table to Summary Dashboard** that summarizes alerts across all the Robots in your Entity Type in a summary dashboard.

**Add Anomaly Functions**

1.  Search the function catalog for anomaly models to detect anomalies for the metric `travel_time_anomaly`.  On the `Data` tab, click the '+' button and search in the function catalog for `Anomaly`  Select `K-MeansAnomalyScore`. Notice the different kinds of [Anomaly Model functions](https://www.ibm.com/support/knowledgecenter/SSQR84_monitor/iot/analytics/as_detect_predict.html) included with Monitor.
2.  Click `Select` button.
3.  Select the metric to score for anomalies `travel_time_anomaly`
4.  Anomaly models require a [window size](https://www.ibm.com/support/knowledgecenter/SSQR84_monitor/iot/analytics/as_window_size.html) which is the number of samples evaluate each time the model is scheduled to execute.   Enter a `window_size` of `12`.   
4.  Name the calculated metric `travel_time_kmeans_score`
5.  Repeat the above steps in this exercise adding, configuring and naming the anomaly scoring models in a similar way for the other models.  Use the tool tip suggestions for setting the input arguments default values:  
6.  Search for `FFTbasedGeneralizedAnomalyScore2` in the function catalog.  Configure and name it `travel_time_fft_score`
7.  Search for `GeneralizedAnomalyScore` in the function catalog. Configure and name it `travel_time_ga_score`
8.  Search for `SaliencybasedGeneralizedAnomalyScore` in the function catalog.  Configure and name it `travel_time_saliency_score`
9.  Search for `SpectralAnomalyScore` in the function catalog.  Configure and name it `travel_time_spectral_score`

**Add Line Chart Chart**

Add a line chart card to your instance dashboard that plots the anomaly model scores for time_travel_anomaly metric.  You can then visually correlate which models are  effective at detecting anomalies by seeing which model scores high when the anomalies happen.

1.  From the Entity Type click on the `gear icon`![Manage Instance Robot dashboard](img/i98.png) &nbsp;
2.  Select `Manage instance dashboard`
3.  Add the following [line chart card Json](json/AnomalyScoreLineGraph.json) for `travel_time_anomaly` metric anomaly function scores to your instance dashboard.

    ```
    {
        "id": "card-anomaly-scores-line-timeseries",
        "dataSource": {
            "attributes": [
            {
                "attribute": "travel_time_anomaly",
                "id": "travel_time_anomaly"
            },
                {
                    "attribute": "travel_time_spectral_score",
                    "id": "travel_time_spectral_score"
                },
                {
                    "attribute": "travel_time_saliency_score",
                    "id": "travel_time_saliency_score"
                },
                {
                    "attribute": "travel_time_ga_score",
                    "id": "travel_time_ga_score"
                },
                {
                    "attribute": "travel_time_fft_score",
                    "id": "travel_time_fft_score"
                },
                {
                    "attribute": "travel_time_kmeans_score",
                    "id": "travel_time_kmeans_score"
                }
            ],
            "range": {
                "count": -24,
                "interval": "hour"
            }
        },
        "content": {
            "series": [
            {
                "dataSourceId": "travel_time_anomaly",
                "label": "Travel Time Deviation "
            },{
                    "dataSourceId": "travel_time_spectral_score",
                    "label": "Spectral"
                },
                {
                    "dataSourceId": "travel_time_saliency_score",
                    "label": "Saliency"
                },
                {
                    "dataSourceId": "travel_time_ga_score",
                    "label": "Generalized"
                },
                {
                    "dataSourceId": "travel_time_fft_score",
                    "label": "FFT"
                },
                {
                    "dataSourceId": "travel_time_kmeans_score",
                    "label": "Kmeans"
                }
            ],
            "xLabel": "Time",
            "yLabel": "Score"
        },
        "size": "MEDIUM",
        "title": "Anomaly Scores for Travel Time",
        "type": "TIMESERIES"
    },
    ```

4.  View the instance dashboard for any one of the Robots.  Analyze the anomaly high scores for each model to see which ones happen when the anomaly for `time_travel_anomaly` happens. It should look something like the dashboard below  ![Robot Instance Dashboard Json](img/i110.png)&nbsp;
5.  By clicking on each label you can see the line chart of the raw score versus the line chart of
6.  Make note of the score levels that correlate with your Robots anomalies that were generated by the `travel_time_anomaly`. You will use this in the next exercise when you create alerts to notify you that anomalies have occurred.

    *  `travel_time_spectral_score > 48`
    *  `travel_time_saliency_score > 60`
    *  `travel_time_ga_score > .2`
    *  `travel_time_fft_score > 30`
    *  `travel_time_kmeans_score > 8`

**Add Anomaly Alerts**

In this exercises you will create alerts for each of the above anomaly function scores for `travel_time` that exceed the visually correlated threshold scores you identified in the previous exercise.  As you learned earlier, alerts are a function in the Maximo Asset Monitor catalog that can be configured to notify you that certain asset conditions require attention.  There are a several alert functions included in the catalog like `High`, `Low` and `Alert Expression Filter`.  Like other functions in the catalog, these alerts can be scheduled to run every five minutes or less frequently.  Let's add a `Alert Expression Filter` alerts for each anomaly model.

1. Click `+` button access the Function Catalog.  ![Search function catalog for alerts](img/i79.png) &nbsp;  
4. Search on `Alert`
5. Select the `Alert Expression Filter` function and then click `Select` button.  ![Add Alert Expression Filter](img/i121.png) &nbsp;  
6. Configure the alert to trigger an alert when the value of a metric-name `travel_time_fft_score` reaches `30`.  An operator would be required to investigate each anomaly alert when they occur.  It is important to not set the score too high so that anomalies don't go undetected.  Vice versa don't set the alert expression to low so that false alerts are triggered when there isn't an anomaly.   Monitor uses Python for its expression language  Using the format `df['metric-name'] > metric numeric threshold value`
7.  Set Alert Expression `Expression` value to `df['travel_time_spectral_score']>48`
8.  Set Alert Expression `Severity` value to `high`
9.  Set Alert Expression `Status` value to `New`  Alerts start in state of `new` until they are `acknowledged`, `validated` and finally `resolved` or `dismissed` ![Configure Alert Expression](img/i87.png) &nbsp;  
10.  Name the alert `travel_time_spectral_alert`  ![Configure Spectral Alert Expression](img/i88.png) &nbsp;
11.  Repeat the above steps in this exercise adding, configuring and naming alerts for each anomaly scoring models using the expression and alert names below.

| Search Catalog for Model              | Expression                               | Alert Name                 |
| ------------------------------------- |:----------------------------------------:| --------------------------:|
| SpectralAnomalyScore2                 | `df['travel_time_spectral_score'] > 48`  | travel_time_spectral_alert |
| SaliencybasedGeneralizedAnomalyScore  | `df['travel_time_saliency_score'] > 60`  | travel_time_saliency_alert |
| GeneralizedAnomalyScore               | `df['travel_time_ga_score'] > .2`        | travel_time_ga_alert       |
| FFTbasedGeneralizedAnomalyScore2      | `df['travel_time_fft_score'] > 30`       | travel_time_fft_alert      |
| KMeansAnomalyScore                    | `df['travel_time_kmeans_score' > 8`      | travel_time_kmeans_alert   |


**Add Alerts to Line Chart**

In this exercises you will add the `travel_time_anomaly_alert` markup to visually see when anomalies are occurring on the `travel_time_anomaly` metric for each Robot instance. Let's export the Instance dashboard json and add the alerts for each anomaly model to the `travel_time_anomaly` metric line chart.

1.  Edit the robot instance dashboard template JSON.
2.  Export and modify the JSON adding the highlighted JSON below in an IDE.

```
        ,
        "additionalData": {
            "type": "alert",
            "dataFilter": {
                "name": [
                    "travel_time_spectral_alert",
                    "travel_time_saliency_alert",
                    "travel_time_ga_alert",
                    "travel_time_fft_alert",
                    "travel_time_kmeans_alert"
                ]
            }
        },
```
![Add Alerts to Line Card](img/i108.png) &nbsp;  

3.  Save the JSON file.
4.  Import the JSON file into the Monitor Instance Dashboard.  
5.  Save the

```
{
"id": "travel_time_anomaly_alerts",
"size": "XLARGE",
"title": "Robot alerts from the last 3 hours",
"type": "ALERT",
"dataSource": {
"range": {
  "count": -3,
  "interval": "hour"
},
"timeGrain": "input",
"type": "alert"
}
},
```

1.  Add a table card that displays the daily mean work_performaned by robots for the last 7 days. Add the work_performed_too_high alert.
2.  Show a value card that displays the average work_performed value for entities `73000` and `73001`. Use the `dataFilter` object to specify each `deviceid`.
3.  You should now have the following Anomaly models scoring. ![Anomaly Models Added](img/i112.png){: style="height:50px;width:50px"} &nbsp;

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

## Add Line Chart
Time series data is represented well as line charts. Let's display the the critical performance metrics the Thingy is providing so that we can see historical trends and in later labs apply ai models to detect anomalies.

1.  Navigate back to the landing page for your entity type. You will see under “Summary Dashboards” an option to create a new dashboard. Click `+New Summary`.
2.  Next to `Definition`, click `Contents`. Select which data you would like to include on your dashboard.  
3.  Select which aggregation methods  you would like to see on your line charts for each of your data types (You created these in the Analytics Service chapters).
4.  Now, click `Dashboard` next to contents. You can drag and drop the line chart that you just made in whichever orientation you see fit.
5.  Once you are content with your dashboard layout, click `Create Summary`. After a few minutes, you will end up with the beginnings of a sophisticated and value driven dashboard.
6.  Copy and paste the JSON lines 3 to 158 from “Monitor Final JSON without Image.json” into the top of the card array of your exported JSON. Copy and paste the JSON from my file beginning at the curly brace on line 3.

You are adding a few value cards to your dashboard. Please refer to the Full Hands on Lab in the Box folder if you would like to go through the whole lab.

Be careful of your commas, curly braces, and brackets or your JSON will get angry. In Atom, you can click on the curly brace at the top of your value card and it will underline that brace blue along with the last curly brace of the card. Make sure to put a comma after the last curly brace before the beginning of the next card.

Congratulations you have successfully create an asset instance dashboard and a summary dashboard that aggregates asset performance metrics across multiple assets.  You also learned how to detect anomalies by applying anomaly models and alerts at scale across all your enterprise assets.
