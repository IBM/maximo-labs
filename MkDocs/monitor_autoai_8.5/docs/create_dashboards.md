# Create and View Dashboards

In these exercises you create the dashboards in Monitor.
-  [Create an Asset dashboard](#CreateAssetDashboard) provides individual asset performance for the pump selected. 
-  [View an Asset dashboard](#ViewAssetDashboard)
-  [Create an Asset Type dashboard](#CreateAssetTypeDashboard) that summarizes performance across multiple assets of type `pump_co`

##Create Asset Dashboard in Monitor
<a name="CreateAssetDashboard"></a>

1.  In Monitor, click `Setup` tile ![setup assets](/img/monitor_autoai_8.4/db01.png)

2.  Enter `pump_co` in the search field and then click `pump_co`  ![search for asset type](/img/monitor_autoai_8.4/db02.png)

3.  Click on the link for `111137F8`  ![edit dashboard](/img/monitor_autoai_8.4/db03.png)

4.  Click `Dashboards` tab ![dashboards](/img/monitor_autoai_8.4/db04.png)

5.  Click  `:`  icon and select `edit` to edit the dashboard ![Connect devices tile](/img/monitor_autoai_8.4/db05.png)

6.  Click `import` icon ![import dashboard json](/img/monitor_autoai_8.4/db06.png)

7.  Browse to the `dashboards` folder and select the  [asset-instance-dashbard.json]() file ![Connect devices tile](/img/monitor_autoai_8.4/db06a.png)

8.  Click `Save and close` button  ![save asset dashboard](/img/monitor_autoai_8.4/db07.png)

##View Asset Dashboard in Monitor
<a name="ViewAssetDashboard"></a>

1.  Click `Monitor` menu ![Monitor menu](/img/monitor_autoai_8.4/db08.png)

2.  Search for  `pump_co` in the search field ![search for asset type](/img/monitor_autoai_8.4/db09.png)

3.  Click `111137F8` asset ![search for assets](/img/monitor_autoai_8.4/db10.png)

4.  Click `Asset Metrics Dashboard ` tab ![metrics dashboards](/img/monitor_autoai_8.4/db11.png)

5.  View  dashboard ![view dashboard](/img/monitor_autoai_8.4/db12.png)

Congratulations you imported and viewed an Asset Dashboard. 

##Create Summary Asset Type Dashboard in Monitor
<a name="CreateAssetTypeDashboard"></a>

1.  In Monitor, click `Setup` menu ![Setup](/img/monitor_autoai_8.4/db01.png) 

2.  Enter `pump_co` in the search field and then click `pump_co` in results.  ![Asset Types](/img/monitor_autoai_8.4/db02.png)

3.  Then click `Manage Asset Types` link  ![Dashboards](/img/monitor_autoai_8.4/db13.png) 

4.  Click `Dashboards` tab ![Dashboard Tab](/img/monitor_autoai_8.4/db14.png) 

5.  Make note of the `Daily` Time grain selected.  This means that the dashboard will aggregate calculations for the 24 
hours.  So the maximum, minimum, mean and last values will be calculated for the last 24 hours.  Dimensions selected 
are used to further filter the displacyed calculated metrics just for those assets.  Select the `serialNumber` dimension.
This will allow you to choose just one asset of that type in the dashboard.  Click `Add Dashboard` button ![Add Dashboard](/img/monitor_autoai_8.4/db16.png) 

6.  Make note of the `Daily` Time grain selected.  This means that the dashboard will aggregate calculations for the 24 
hours.  So the maximum, minimum, mean and last values will be calculated for the last 24 hours.  Dimensions selected 
are used to further filter the displacyed calculated metrics just for those assets.  Select the `serialNumber` dimension.
This will allow you to choose just one asset of that type in the dashboard.  Click `Next` button ![Connect devices tile](/img/monitor_autoai_8.4/db17.png) 

7.  Select `pump_mode` and `last` from the `Methods` drop down field to calculate the last value in the last 24 hour day.  
Then click on `Configure Dashboard` button ![Last](/img/monitor_autoai_8.4/db18.png) 

8.  Browse to the `dashboards` folder and select the  [asset-instance-dashbard.json]() file ![Edit Dashboards](/img/monitor_autoai_8.4/db06a.png)

9.  Click `Create` button ![Create Dashboard](/img/monitor_autoai_8.4/db21.png)

10.  Monitor is processing the metric calculations for the selected aggregation period.  Note the `Preparing Dashboards` 
message ![Preparing Dashboard](/img/monitor_autoai_8.4/db22.png)  
Return back to this screen to see the dashboard once the calculations have completed processing. 

Congratulations you imported and created an Asset Type Dashboard that calculated aggregated values for a selected time period
Monitor provide hourly, daily, monthly and yearly aggregation periods you can use on the dashboard. 