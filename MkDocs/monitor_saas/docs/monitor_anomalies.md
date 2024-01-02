# Objectives
In this Exercise you will learn how to:

*  Create an asset instance dashboard to see how an individual asset is performing
*  Create a summary dashboard that aggregates asset performance metrics across multiple assets of the same type
*  Detect anomalies by applying anomaly detection functions
*  Create alerts to prioritize anomalies
*  Monitor alerts across multiple assets in a summary dashboard you create
*  Troubleshoot to find the root cause of a problem

---
*Before you begin:*  
This Exercise requires that you have completed the [pre-requisites](facilitator_instructions.md) required for all Exercises

Watch the 10 min video explaining why anomalies matter to business. 
[![Video](img/yt-part1.png)](https://youtu.be/bSlh9TY3ECY "Video Title")

---

## Create Simulated Robots to Monitor
In this exercise you quickly create some simulated robot operational data that you will use in your exercises in this Exercise.  You will use data from simulated industry robots as the assets you are responsible to monitor.

1.  Click `Home` to see the top level tasks you can do with Monitor. ![Home](img/i89.png) &nbsp;
2.  Click `Set up`
3.  Click on `Devices`  You will create a simulated set of robot assets (entities) that represent an assembly line of manufacturing robots.
4.  Click `+` button. ![Create an Entity Type](img/i90.png) &nbsp;
5.  Select on `Sample Robot Type` and click on `Next`button.  ![Create a Robot Entity Type and simulated robot metrics](img/i91.png) &nbsp;
6.  Edit the Asset Type name prepending your own initials `Your_Initials_Robots_Type`.![Create a Robot Asset Type and simulated robot metrics](img/i92.png) &nbsp;
7.  Click `Create` button.  Monitor will create a set of robots you can monitor with simulated random data.

## Explore Device Type Dashboard
An [device dashboard](https://www.ibm.com/support/knowledgecenter/SSQR84_monitor/iot/dashboard/tutorials/instance_dashboard_tutorial.html) displays the operational metrics for a single device, i.e. one specific industry robot. The data metrics of the robot are presented on the dashboard using cards.

1.  Click on `Monitor` from the left nav
2.  Click on `Devices` and search for `Your_Initials`
3.  Click on your device type ![View Device Type](img/i93.png) &nbsp;
4.  On the `Data` tab, expand `Metric` to see the metrics that Monitor has created for your   Robots with simulated time series data.
 The outline shows the acc, load, speed and torque metrics in the data items outline. ![View Robot metrics](img/i93b.png) &nbsp;
5.  Expand  `Dimension` to see the classifications Monitor has created to filter and summarize all the Robots key performance metrics like by `Manufacturer`.  [Dimensions](https://www.ibm.com/support/knowledgecenter/SSQR84_monitor/iot/analytics/as_add_dimensions_api.html) are meta data for describing a device that can also be used to filter devices in tables or in functions.
6.  Expand  `Metric (calculated)` to see the functions used to create the simulated data like `work_performed`. ![View Robot calculated metric functions](img/i95.png)  
7.  Click on `Monitor` on the left side.
8.  Click on `Devices` and search for `Your_Initials` to find the device type you created and click on it.
9.  Robot device dashboards have been automatically created for you by Monitor.  Click on device (Robot) `73000` 
9.  Click on `Asset Metrics Dashboard`
10. Click one of the Robot asset dashboards that have been automatically created for you by Monitor. ![View asset metrics dashboard](img/i96.png) &nbsp;
11.  In this exercise the Asset Dashboard for the Robots was automatically created for you.  Take a moment to see what cards were created for you in the `Asset Metrics Dashboard`.
Note the different types of [cards](https://www.ibm.com/support/knowledgecenter/SSQR84_monitor/iot/dashboard/dashboard_json_ref.html) in your dashboard.  Monitor provides multiple types of cards to choose from when configuring a dashboard.

*Value Cards*
A value card shows a single or multiple entity metric value. A value may be attributed with a title, a label and a unit. The value may be given a precision and rules on threshold levels.  A value card may be sized as a wide or tall card with big or small sized numbers.

*Line Chart Cards*
A line chart card shows time-series data from a single or multiple entities as a chart with time and value axes. The chart may be given a title and labels on the axes. The line chart may be shown in full screen mode and is added a data table with the metrics values plotted in the chart.
A line chart may also be overlaid with an Alert metric indicating any anomalies on the metric.

*Table Cards*
A table card shows tabular data by columns. A table card is configured by referencing some data source for each column. The table may group data source values and present a count rather than each individual value.  An Alerts Table is a preconfigured table presenting alert information.  You will add one later for tabulating alerts.

*Image cards*
An image card shows as a custom image with configured hotspots. Each hotspot is indicated at a position on the image with an icon and configured as a value card with entity metrics. The value card is shown when clicking on the hot spot.  You will add one later for displaying an image of the robot.

## Edit Asset Dashboard
In this exercise you will modify the layout of the individual robot asset dashboard.  An asset dashboard is a configuration of cards, layout and the datasource metrics for a specific asset. You can export dashboard configuration to JSON. You can also reuse and import dashboard configuration files from others.

1.  Click the `gear icon` to modify the layout of your robot asset dashboard.  ![Edit Robot dashboard](img/i97.png) &nbsp;
2.  Monitor provides a responsive user interface as the display size of the device or browser window changes you can reposition the cards.  Change the card layout of your dashboard by dragging cards around with you mouse. ![View Robot asset dashboard](img/i98.png) &nbsp;
3.  Once you are satisfied with the card layout, change the width of the browser window to a smaller size.  Note the `Dashboard Size` of the layout has changed.  Once again change the layout of your dashboard by dragging cards around with your mouse.  The dashboard configuration saves all the adjustments you make to the layout for each resize of your browser window.
4.  Click on `Export` icon. The dashboard configuration file in a json format is saved to your local downloads directory on your computer.  
5.  Click on `Save and close` to save the new dashboard layout.


# Create a Summary Dashboard
In the previous exercise you modified an asset dashboard for each Robot.   In this exercise you will create a [Summary Dashboard](https://www.ibm.com/support/knowledgecenter/SSQR84_monitor/iot/dashboard/tutorials/summary_dashboard_tutorial.html).  There is one summary dashboard presenting aggregated and filtered performance KPI across all robots of the type.  A summary dashboard allows you to see the metrics for a filtered group of assets.  "Show me all robots from a manufacturer and with a specific firmware.""

These filters are called dimensions in Monitor.  Later in this Exercise you will learn how to assign dimensions to the entities. Our simulated robots already have the appropriate dimensions assigned to each robot.  Robot 73000 may have a manufacturer GHI Industries and Robot 73002 may have a manufacturer Rentech. A summary dashboard allows you filter assets and then compute the data metrics aggregations for the applied filter.  For example, the Max, Min and Mean torque of all robots for the filtered scope of a selected manufacturer.

A summary dashboard uses time grains when computing the aggregations.  Monitor can display four types of summary dashboards. You can choose by hour, day, week, month time grains.  A summary dashboard supports the same cards as an asset dashboard.  The next steps show you how to create a daily summary dashboard for all your robots.

1.  From the side menu, click `Monitor`
2.  From the `Asset types` tab, search for your Entity Type by typing the name in the search field. Select your entity type and click on it.
3.  Click `+` On the `Dashboards` tab.
4.  On the `Definition` page, assign the name `robot_daily_summary` to the dashboard
![Define summary dashboard](img/i99.png) &nbsp;
5.  Select the `Daily` time grain
6.  Select `load_rating` and `manufacturer`
7. Click `Next` and choose the max, min and mean for aggregation methods for all the number metrics. ![Assign aggregation method](img/i100.png) &nbsp;
8. Click `Configure dashboard`
9. Export the dashboard to JSON that you will use later.
![Export the summary dashboard configuration json](img/i101.png) &nbsp;
10.  Click `Create`
11.  Click on `robot_daily_summary` tab and see that the dashboard is being created.
12.  [Optional] repeat the steps above to create summary dashboards to create hourly, weekly and monthly aggregation performance metrics summaries of the all robots.

# Add Metric Line Card
You need anomalies to be able to detect anomalies.  Monitor provides simulated anomalies that you can apply to learn about anomaly detection.  In this exercise you will:

*  Add a simulated anomaly metric named `travel_time_anomaly`.
*  Add a line card to display the `travel_time_anomaly` metric on an asset dashboard.

 The `travel_time` deviation that was generated earlier for your robot simulated data did not have anomalies in it.   The `AnomalyGeneratorExtremeValue` function adds anomalies to the metric you choose.   It abruptly increases or decreases the normal metric values for the metric you choose.  In the steps below you will use this function to add a new calculated metric with anomalies named `travel_time_anomaly`  You will add a line chart to display the anomalous data on your asset dashboard.  Later you will use Maximo Asset Monitor anomaly detection functions to detect these anomalies.  A SCADA system would likely not be able to detect these type of abrupt anomaly increase or decrease in metric values. SCADA systems typically only provide max or min business rule thresholds.

##Add Simulated Anomaly Data for Travel Time

In this part of the exercise you will create simulated extreme anomalous values for travel time.  
1.  Click on `Setup` on the left hand side.
2.  Search for `Your_Initials` and click on the asset type you created.
3.  Click on `73000` from the table.
4.  Click on `Define dimensions in asset type`
5.  Click on `Data` tab.  Click on `+`
Search the function catalog for  `AnomalyGeneratorExtremeValue` to create extreme simulated anomaly data.
![Search Function Catalog for Anomaly Generator Extreme Value](img/i104.png) &nbsp;
6. Click `Select`
7. Choose  `travel_time` for the metric `input_item`.  Extreme anomaly values will be added to this time series metric.
8.  Set `factor` to a value of `100`.  This is how frequently an anomaly will occur.  An anomaly will be generated after every `100` data points.
9.  Set `size` to a value of `4`.  This is how extreme value will be.  An anomaly will be `4` times the source `travel_time` metric.
    ![Add anomaly metric](img/i105.png) &nbsp;
10.  Click `Next` 
11.  Click `Auto schedule` on button to configure the functions schedule.
12.  Set the `output_metric` to `travel_time_anomaly`.
13.  Set the `Calculating the last` to `2` days to have Monitor generate 2 data of historical simulated anomalous data for `travel_time_anomaly`.
14.  Click `Create`.  After 15 minutes the function should be complete and the anomaly data will be available.

###Add Simulated Anomaly Travel Time Line Card to Instance Dashboard using the UI widget
In this part of the exercise you will visualize the simulated `travel_time_anomaly` in a line card.

1.  From the side menu, click `Monitor`
2.  Search for `Your_Initials` and click on the asset type you created.
3.  Click on `robot_daily_summary` tab
4.  Click on `gear icon` top right.  Choose Edit dashboards
5.  Choose `Time series line` from the right hand selection
6.  Title: Travel Time with Anomaly
7.  Time range: Last 24 Hours
8.  Data item: travel_time_anomaly
9.  Click `Settings` tab
10. Unit: sec
11. Click `Add card`
12. Save and Close

![Line card](img/i200.png)
![Line card settings](img/i201.png)

###Add Simulated Anomaly Travel Time Line Card to Instance Dashboard using JSON

In this part of the exercise you will visualize the simulated `travel_time_anomaly` in a line card.

1.  Click on `Industrial Robot summary` tab
3.  Click on `Gear` icon top right.  Choose `Edit dashboards`
4.  Click on `Export` icon top right. Asset dashboard json file should be saved in your browser downloads directory with a name of `Industrial Robot summary-dashboard.json`
5.  Open the exported instance dashboard JSON file using an Integrated Developer Environment like [Atom](https://atom.io/) or copy the file contents into an online [Web JSON editor](https://jsoneditoronline.org/#left=local.ginesu)
6.  Read and learn about the [JSON structure of Monitor dashboard template](https://www.ibm.com/support/knowledgecenter/SSQR84_monitor/iot/dashboard/dashboard_json_ref.html)
&nbsp;
7.  Study the JSON file cards in the editor.  Insert the [travel_time line chart card json](https://www.ibm.com/support/knowledgecenter/SSQR84_monitor/iot/dashboard/line_graph_json_ref.html) below into the `"cards":[]`.
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
8.  Notice how the JSON nodes for `"content": {"series":` and `"content": {"dataSourceId":` don't have an aggregation ` "aggregator": "min",` like other line metrics in summary dashboard JSON.  As a result the `travel_time_anomaly` metric line chart data will display raw grain metric data. ![ travel_time_anomaly will show sudden extreme anomalies](img/i113.png) &nbsp;  
9.  Notice how the `"range": {"count": -24,"interval": "hour"}` JSON node lets Monitor know to only display the last 24 hours of data.    
10.  Make sure to change all values with card sizes of `XLARGE` to `LARGE` and `XSMALLWIDE`to `SMALLWIDE`, since these formats have been deprecated.
11.  In the IDE, save your changes to the instance dashboard JSON file.
12.  You can see the finished [Industrial_Robot_Instance_Travel_Time.json](json/Industrial_Robot_Instance_Travel_Time.json) &nbsp;
13.  Return to the Monitor dashboard editor and click on the `Import` icon.
14.  Choose the `file` you updated with the line card click `open` to import your updated JSON file.
15.  Your asset dashboard should now look similar to the one below and have a `travel_time_anomaly` Card with some extreme anomalies like the one in the red rectangle. ![Robot Asset Dashboard](img/i114.png).

# Add Anomaly Detection
Maximo Asset Monitor includes models to [detect anomalies](https://www.ibm.com/support/knowledgecenter/SSQR84_monitor/iot/analytics/as_detect_predict.html) in the function catalog.  The anomaly detection functions can detect many types of anomaly patterns.  These include:

*  *Varying signal becomes flat line* which can be caused by a defective or tampered with sensor.
*  *Varying signal becomes a near vertical line* which can be caused by a defective sensor or extreme changes to the system.
*  *Sudden peak maximum or minimum* which can be caused by operating equipment outside normal operating procedures.
*  *Flat line becomes a varying signal*  which can be a system that has been running smoothly and then becomes out of tolerance or unstable.
*  *No sensor data is available* which can be caused by a defective sensor or network connectivity issues.
*  *A predicted value doesn't come within the threshold* based on correlated dependent target variables values.

In this exercise you will:

 *  **Choose an asset** to analyze.
 *  **Choose a metric** to analyze.
 *  **Add anomaly functions** to your Robot Asset Type to score how likely an anomaly is occurring.
 *  **Add a line chart** to visually compare if high anomaly model scores correlate with the robot `travel_time_anomaly` metric on each robot asset dashboard.
 *  **Add anomaly alert functions** with score thresholds that corresponds to a level that indicates an anomaly for a robot metric.
 *  **Update a function**  with a new metric name or configuration values if needed.
 *  **Add alerts to a line chart** to visually see where anomalies are occurring on the `travel_time_anomaly` metric.

---
*Before you begin:*  

Watch the 14 min video explaining what anomaly detection functions are available in Maximo Asset Monitor and what anomaly patterns are detected. 
[![Video](img/yt-part2.png)](https://youtu.be/ej9Ye-C3Gjw "Anomaly Detection Part 2")

Watch the 19 min video explaining how to configure anomaly detection functions, alerts and dashboards. 
[![Video](img/yt-part3.png)](https://youtu.be/T4bA1BvvY3A "Anomaly Detection Part 3")

---


Imagine you are managing a fleet of delivery vehicles.  One out of the five vehicles is a car instead of a scooter. If you wanted to detect anomalies for excessive miles per gallon performance you should analyze the miles per gallon metric for the car separately from the scooters.  Add an `EntityFilter` function to isolate a function analysis to an individual asset.

1.  While editing your entity type,  search the function catalog for `EntityFilter` function. 
2.  On the `Data` tab, click the '+' button and search in the function catalog for `EntityFilter`.   ![Add Data](img/AddFunction.png)&nbsp;
3. Click `Next`
4. Enter the list of entity ids separated by a comma or ``73000`` for just one entity. ![Choose Entity](img/a1.png)&nbsp;  
4.  On the function `Output` tab, enter the name of they filtered entity `entity_73000` for the output metric name.  ![Name it entity_73000](img/a2.png)&nbsp;
5. Click `Create`

**Choose a Metric to Analyze**

Add the `Filter` function you can isolate your analysis to an individual entity and metric.  Select the metrics to analyze from the filtered entities by adding Filter.  

1.  While editing your entity type,  search the function catalog for `Filter` function. 
2.  On the `Data` tab, click the '+' button and search in the function catalog for `Filter`.   ![Add Data](img/i128.png)&nbsp;
3.  Click `Next`
4.  Choose `entity_73000` input item from the previous function as source shown below.  
5.  On the function `Configuration` tab, choose `${entity_73000} == True` as the expression.  ![Choose Filter](img/a3.png)&nbsp;
6.  On the function `Configuration` tab, choose `travel_time_anomaly` as the metric to analyzed for `filtered_sources`.
7.  Click `Next`
8.  On the function `Output` tab, enter the name of they filtered entity `travel_time_anomaly_entity_73000` for the output metric name.  


**Add Anomaly Functions**

You will add an anomaly function that will provide a score of how likely the single input metric is having anomalies during the specified window.  The directions that follow will use the metric `travel_time_anomaly` which will analyze all robots for that metric.   If you only want to analyze one robot entity `73000`, then select entity filtered metric created in the previous step `travel_time_anomaly_entity_73000` instead.

1.  Search the function catalog for anomaly detection functions to detect anomalies for the metric `travel_time_anomaly`.  
2.  On the `Data` tab, click the '+' button and search in the function catalog for `Anomaly`.   ![Add Data](img/AddFunction.png)&nbsp;
2.  Select `K-MeansAnomalyScore`.  Notice the different kinds of [Anomaly Model functions](https://www.ibm.com/support/knowledgecenter/SSQR84_monitor/iot/analytics/as_detect_predict.html) included with Monitor. Click `Select` button. ![Choose K-MeansAnomalyScore Anomaly Model](img/i114b.png)&nbsp;
3.  Select the metric to score for anomalies `travel_time_anomaly`
4.  Anomaly detection functions require a [window size](https://www.ibm.com/support/knowledgecenter/SSQR84_monitor/iot/analytics/as_window_size.html) which is the number of samples points to evaluate each time the model is scheduled to execute.   Enter a `windowsize` of `12`.   
5.  Name the calculated metric `travel_time_kmeans_score`  ![Add Data](img/i114c.png)&nbsp;
6.  Click `Next` to configure schedule, look back period and name the alert.
7. Click `Auto schedule` on button to configure anomaly function scoring schedule. ![Toggle anomaly scoring schedule and look back period view](img/KmeansAnomalyScore.png) &nbsp;
8.  Set the anomaly function to execute every `15` minutes.  The function will look for new data for `travel_time_anomaly` that have been added in the last 15 minutes and calculate alerts for those new data items in the `windowsize`. ![Configure anomaly scoring schedule and look back period](img/KmeansAnomalySchedule.png) &nbsp;
9.  Set the look back period to `2` days.  This will calculate historical scores looking back 2 days using the new configuration values with the historical metric values for `travel_time_anomaly`.
10.  Set the output metric name for the alert `travel_time_kmeans_score`
11.  Click `Create` to create the calculated metric.  It will take 15 minutes for the calculated metric to update.  While waiting lets create anomaly functions for the other anomaly detection functions. See the guidance in the table below for scheduling anomaly functions.
12.  Repeat the above steps in this exercise adding, configuring and naming the anomaly scoring models in a similar way for the other models.  Use the tool tip suggestions for setting the input arguments default values:  
13.  Search for `FFTbasedGeneralizedAnomalyScore2` in the function catalog.  Configure and name it `travel_time_fft_score`
14.  Search for `GeneralizedAnomalyScore` in the function catalog. Configure and name it `travel_time_ga_score`
15.  Search for `SaliencybasedGeneralizedAnomalyScore` in the function catalog.  Configure and name it `travel_time_saliency_score`
16.  Search for `SpectralAnomalyScore` in the function catalog.  Configure and name it `travel_time_spectral_score`

**Table - Suggested Scoring Schedule**

|Data Grain Frequency | Sample Window | Data Required         | Schedule Scoring                                                                 |
| ------------------- |:-------------:| --------------------- |:--------------------------------------------------------------------------------:|
| 1 Day               | 12            |  24 Days              | <br>Noncritical – Once per 12 days </br> <br>Critical - Once per day</br>    |
| 1 Hour              | 12            |  24 Hours             | <br>Noncritical – Once per 12 days </br> <br>Critical - Once per 1 hour</br> |
| 5 Minutes           | 12            |  2 Hours              | <br>Noncritical – Once per 60 mins </br> <br>Critical - Once per 5 mins</br> |
| 1 Minute            | 12            |  1 Hour               | <br>Noncritical – Once per 12 mins </br> <br>Critical - Once per 5 mins</br> |


<br>

##Add a Multi Series Line Chart using the UI widget
1.  From the side menu, click `Monitor`
2.  Search for `Your_Initials` and click on the asset type you created.
3.  Click on `robot_daily_summary` tab
4.  Click on `gear icon` top right.  Choose Edit dashboards
5.  Click on `Time series line`
6.  Title: Anomaly Scores for Travel Time
7.  Time range: `Last 24 hours`
8.  Choose the following calculated metrics: travel_time_spectral_score,  
    travel_time_saliency_score, travel_time_kmeans_score, travel_time_ga_score,
    travel_time_fft_score, travel_time_anomaly
9.  Click on Settings
10.  X-axis-label: Time
    Y-axis-label: Score
11.  Click `Add card`
12.  Save and Close

![Line card](img/i202.png)
![Line card settings](img/i203.png)
![Line chart](img/i204.png)

##Add a Multi Series Line Chart using JSON

Add a line chart** to visually compare if high anomaly model scores correlate with the robot `travel_time_anomaly` metric on each robot instance dashboard.  In this exercise you will add a multi series line chart card to your instance dashboard that plots the anomaly model scores for `time_travel_anomaly` metric.  You can then visually correlate which models are effective at detecting anomalies by seeing which model scores are high when the anomalies happen.

1.  From the asset dashboard click on the `gear icon`![Manage asset Robot dashboard](img/i98.png) &nbsp;
2.  Select `Edit dashboard`
3.  Add the following [line chart card Json](json/AnomalyScoreLineGraph.json) for `travel_time_anomaly` metric anomaly function scores to your asset dashboard.

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
4.  View the the anomaly model scores for `time_travel_anomaly` metric line chart card on each robot asset dashboard.  Analyze the anomaly high scores for each model to see which ones happen when the anomaly does for `time_travel_anomaly` happens. It should look something like the card below  ![Travel Time and Anomaly Scores](img/i115.png)&nbsp;
5.  In the line chart click `Spectral` label so that you can see only the line chart of each score versus `time_travel_anomaly` metric value.  ![Travel Time Spectral Anomaly Scores](img/i116.png)&nbsp;
6.  Click on `Spectral` label again to hide that line.  Select the `Saliency` label to see anomaly score line.  Notice how the models score higher when there is an anomaly.  ![Travel Time Saliency Anomaly Scores](img/i117.png)  
7. Study each instance dashboard to see where the anomaly scores are high and `time_travel_anomaly` metric appears to have an anomaly.  Make note of the score levels that correlate with your Robots anomalies that were generated in the `travel_time_anomaly` metric. You will use this in the next exercise when you create alerts to notify you that anomalies have occurred.  The table below has some suggested starting values:

  | Anomaly Score                         | Upper Threshold  |
  | ------------------------------------- |:----------------:|
  | `travel_time_spectral_score`          |  99              |
  | `travel_time_saliency_score`          |  105             |
  | `travel_time_ga_score`                |  0.4             |
  | `travel_time_fft_score`               |  104             |
  | `travel_time_kmeans_score`            |  8               |


<br>

**Add Anomaly Alerts**

In this exercise you will create alerts for each anomaly function score identified in the previous exercise.  You will set the alert thresholds to values of the visually correlated anomaly scores using the `upper_threshold` values from the table in `Add Anomaly Functions`    As you learned earlier, alerts are a function in the Maximo Asset Monitor catalog that can be configured to notify you that certain asset conditions require attention.  There are a several alert functions included in the catalog like `Alert High`, `Alert Low` and `Alert Expression Filter`.  Like other functions in the catalog, these alerts can be scheduled to run every five minutes or less frequently.  Add a `Alert High Value` alert for each anomaly model.  Alerts can  calculate historical values for a given function configuration.

1. Click `+` button access the Function Catalog.  ![Search function catalog for alerts](img/i128.png) &nbsp;  
2. Search on `Alert`
3. Select the `Alert High Value` function and then click `Select` button.  ![Add Alert High Value](img/i125.png) &nbsp;  
4. Configure the alert to trigger when the value `travel_time_spectral_score` reaches `99`.  An operator would be required to investigate each anomaly alert when they occur.  It is important to avoid setting the alert `upper_threshold` value too high which could cause anomalies to go undetected.  Vice versa avoid setting the alert `upper_threshold` value too low which could cause false alerts.  False alerts are those alerts that triggered when there isn't an anomaly.  ![Configure spectral alert expression](img/i123.png) &nbsp;
5.  Set `input_item` to  `travel_time_spectral_score`.
6.  Set `upper_threshold` value to `99`.
7.  Set `Severity`value to `High`.  You can add optionally add separate alerts for `Medium` and `Low` thresholds.
8.  Set `Status` value to `New`.  Alerts don't have any order. They can start or finish an in any order.  Users can then transition them to `New` `Validated`, `Acknowleged` and finally `Resolved`.  Monitor does not provide a way to force specific state transition paths for alerts.
9.  Click `Next` to configure schedule, look back period and name the alert.
10. Click `Auto schedule` button to configure schedule. ![Toggle alert schedule and look back period view](img/i126.png) &nbsp;
11.  Set the alert to execute every `15` minutes.  The alert will look for new data for `travel_time_spectral_score` that have been added in the last 15 minutes and calculate alerts for those new data items.![Configure alert schedule and look back period](img/i124.png) &nbsp;
12.  Leave the look back period set to `1` days.  This will calculate alerts looking back 2 days using the historical values for `travel_time_spectral_score`.
13.  Set the output metric name for the alert `travel_time_spectral_alert`
14.  Click `Create` to create the alert configuration.  It will take 15 minutes for the alert to update.  While waiting lets create the alerts for the other anomaly model scores.
15.  Repeat the above steps in this exercise adding, configuring and naming alerts for each anomaly scoring model using the expression and alert names below.

| Search Catalog for Model              | Upper Threshold  | Output Metric Alert Name     |
| ------------------------------------- |:----------------:| ----------------------------:|
| SpectralAnomalyScore2                 |  99              | `travel_time_spectral_alert` |
| SaliencybasedGeneralizedAnomalyScore  |  105             | `travel_time_saliency_alert` |
| GeneralizedAnomalyScore               |  0.4             | `travel_time_ga_alert`       |
| FFTbasedGeneralizedAnomalyScore2      |  104             | `travel_time_fft_alert`      |
| KMeansAnomalyScore                    |  8               | `travel_time_kmeans_alert`   |

<br>

**Update Functions**

You can update functions with new a new metric name or configuration value.  In this exercise you will review and correct any function names that are improperly spelt.

1.  Go to your entity type and click on the `Data` tab.
2.  Expand the `Alert (calculated)` section of the `Data Items` to see the alerts.  They should look something like the figure below. ![View alert data items ](img/i130.png) &nbsp;
3.  Check the naming of each alert.  If they are misnamed,  click on the alert name in `Data Items` column.
4.  On the frame that opens, click the `Configure`.   On the dialog that opens and `Next` buttons.   Change the `Output metric` name to the correct spelling.

**Add Alerts to Line Chart**

In this exercises you will add the `travel_time_anomaly` alerts to the line card for the `travel_time_anomaly` on the robots instance dashboard. Start by exporting the robots instance dashboard JSON and adding the alerts `additionalData` JSON below to the `travel_time_anomaly` metric line chart so that you can see red dots in the areas where there likely is an anomaly.

1.  Edit the robot instance dashboard template JSON.
2.  Export and modify the JSON adding the highlighted JSON below in an IDE to the `travel_time_anomaly` card that you added earlier.  

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
3.  The highlighted gray JSON below shows where you should insert the json above.  ![Add Alerts to Line Card](img/i122.png)  Save the JSON file in the IDE.
4.  Import the saved JSON file into the Monitor Instance Dashboard.  
5.  Save the dashboard.
6.  View multiple robot instance dashboards.  Analyze the `travel_time_anomaly` line chart looking for anomalies and alert red dots. When you find one, hoover over it with your mouse cursor.   It should look something like the dashboard below  ![Robot Instance Dashboard Json](img/i127.png)&nbsp;

#Add Alerts Table Card

##Add Alert Table Card using the UI widget

1.  From the side menu, click `Monitor`
2.  Search for `Your_Initials` and click on the asset type you created.
3.  Click on `robot_daily_summary` tab
4.  Click on `gear icon` top right.  Choose Edit dashboards
5.  Click on `Alert table`
6.  Title: Robot alerts from the last 24 hours
7.  Time range: `Last 24 hours`
8.  Click `Add card`
9.  Save and Close
10. You should now have the table in your summary dashboard showing the following Anomaly detection functions scoring.

##Add Alert Table Card using JSON

In the previous exercise you visually represented the anomaly alerts as red points on the line chart.  It's helpful to also see alerts organized in a table so that you can easily prioritize and act on them.

1.  Add a table card that displays the `travel_time_anomaly_alerts` by robots for the last 24 hours. Add the following card to your instance dashboard template json.

```
{
"id": "travel_time_anomaly_alerts",
"size": "XLARGE",
"title": "Robot alerts from the last 24 hours",
"type": "ALERT",
"dataSource": {
"range": {
  "count": -24,
  "interval": "hour"
},
"timeGrain": "input",
"type": "alert"
}
},
```


2.  You should now have the table in your summary dashboard showing the following Anomaly detection functions scoring.  ![Alerts Table Card With Anomaly Alerts on Asset Dashboard](img/i109.png) &nbsp;

3.  From the calendar control in the top right of the dashboard pick an earlier date to see the historical alerts for the robots on a specific date.  ![Alerts Table Card Without Anomaly Alerts on Asset Dashboard](img/i110.png) &nbsp;

Congratulations you have successfully create an asset dashboard and a summary dashboard that aggregates asset performance metrics across multiple assets.  You also learned how to detect anomalies by applying anomaly detection functions and alerts at scale across all your enterprise assets.
