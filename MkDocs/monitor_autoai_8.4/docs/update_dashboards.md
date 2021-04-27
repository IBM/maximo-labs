# Add Calculations for Power Deviation and Alerts

Monitor calculations allow you to process time series data or do other scheduled activities.   Calculations could be to 
check how much the actual power consumption deviates from the prediction power consumption from the pump.  If this deviation
is too large it could indicate there is a anomaly that needs to be investigated.   In this exercise you will:

[Add Calculations](#AddCalcuations) to measure the power deviation 
[Add Alerts](#AddAlerts) to raise an alert when the power deviation exceeds 20% of actual.

## Add Calculation for Maximum Power Prediction Allowed
<a name="AddCalcuations"></a>
!!! note
    NOT COMPLETE
    
1.  Click on `Manage asset type`.  Navigate to your Asset type for `pump_co`.

2.  On the `Data` tab, expand `Calulated Metric` to see the metrics that have already been added to your asset type  for your  `pump_co`   These calculations use the simulated punmp time series data.

3.  Add a calculation for what is acceptable for maximum power consumption. Click  `+` button in the Asset view, and then search for and select the "NewColFromCalculation" function.
!!! Note:
    Remember to replace `co` with your own initials that you used for your power 
    prediction calculated metric.

4.  Set metrics input: `power_prediction_co`  

5.  Set calculation to:

    ```
     df['power_prediction_co']*1.2
    ```
    
6.  Set Output metric:  `power_prediction_co_max_deviation`

7.  Set Output type: `Number`

## Add alerts
<a name="AddAlerts"></a>
!!! note
    NOT COMPLETE - TODO

The "Alerts" function allows you to be notified when anomalies are detected.   Add an Alerts that checks to see if the actual `POWER` is greater than the  `power_prediction_co_max_deviation`. 

1.  On the `Data` tab, expand `Alerts` to see the alerts that have already been added to your asset type  for your  `pump_co`   These alerts use your metrics and calculated metrics from the simulated punmp time series data.

2.  Add an `Alert` for what is acceptable for maximum power consumption deviation. 

3.   Click  `+` button in the Asset view, and then search for and select the "AlertExpression" function. 

4.  Set metrics input: `POWER` and `power_prediction_co_max_deviation`

5.  Then, enter a condition indicating when the Alert should be triggered. In this case, we should get an alert whenever 
`POWER` is greater `power_prediction_co_max_deviation`

    ```
     df['POWER']*df['power_prediction_co_max_deviation']
    ```
6.  Set Output metric:  `power_prediction_co_max_deviation_alert`

7.  Set Output type: `Number`

# Update Dashboard
<a name="UpdateDashboard"></a>

!!! note
    NOT COMPLETE - TODO

To see and monitor the values of calculated metric to Monitor, you must add the metric, calculated metrics and alerts  to a dashboard.  In this exercise 
you will add the new calculated metric for `POWER` and `power_prediction_co_max_deviation` to your asset dashboard as a line series card.

1. Edit the Asset dashboard  selecting your recently created Asset

Then, click the gear in the top right > Manage dashboards

Next, click "Import"

<p align="center">
<img src="https://i.imgur.com/o4Utvco.png" height="500" width="800" />
</p>


Select the file in the json directory of this project `./json/dashboardBuildingMaximo.json`

Click "Save"
* Import the dashboard layout file
```
Explore > Entity Types > Buildings > click gear top right > manage dashboards > import
```

Choose file  ./json/Staging-Dashboard.json -->

## 2. View Dashboard
<a name="ViewDashboard"></a>
!!! note
    NOT COMPLETE - TODO

The outline shows the metrics in the data items outline. 

3.  Expand  `Dimension` to see the classifications Monitor has created to filter and summarize all the Pumps key performance metrics like by `Manufacturer`.  
4.  Expand  `Metric (calculated)` to see the functions used to create the simulated data like `work_performed`. 
5.  Click on `Monitor` on the left side.
6.  Search for `Your_Initials` to find the asset type you created and click on it.
7.  View the dashboards by clicking the `Monitor` menu on the left, and then selecting your newly created asset type `pump_co`
8.  Select the asset `111137F8`
9.  On the line series card hover over the `power` metric  and click  on the `powerprediction`  This allows you to see 
differences between the actual and predict values of `power`.  As you can see the model is fairly accurate at predicting 
power consumption. 


As an extra credit view the asset dashboard for `11111096`.  Answer why do the  predictions look wrong?


Congratulations you have completed all the exercises in this lab and hopefully have a better understanding of how to create AI models and make the usable in Maximo Asset Monitor.
