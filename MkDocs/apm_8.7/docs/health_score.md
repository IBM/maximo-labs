# Asset Health Scoring 

Maximo Health includes [health scores](https://www.ibm.com/docs/en/mhmpmh-and-p-u/8.5.0?topic=overviews-maximo-predict-850) for understanding asset conditions. Allowing you to identify which assets are most critical and in need of maintenance or replacement.

In this exercise the Reliability Engineer uses Health to:
	

4 MAXIMO APPLICATION SUITE LAUNCH
5 GETTING STARTED HEALTH & PREDICT LAB - IDENTIFYING ASSETS AT RISK	
5.1 APPLICATION LAUNCH	
5.2 ASSET GROUP VIEW CREATION	
5.2.1 ASSET MAP VIEW	
5.3 WORK QUEUES	
6 HEALTH SCORES AND PREDICTIVE MODELS – INVESTIGATING ASSETS AT RISK	
6.1 CREATING HEALTH SCORES
6.2 ASSET DETAIL PAGE
6.3 PREDICT OVERVIEW
6.4 PREDICT MODEL
6.5 ASSET TIMELINE
7 TAKING ACTION
7.1 ACTIONS
8 CLOSING REMARKS
8.1 HOW TO REMOVE THE TEMPORARY PUMP VIEWS
8.2 HOW TO REMOVE THE TEMPORARY GROUPS
8.3 LAB SESSION LOG OUT	


## Pre-requisites 

- Review Health documentation for the [list of available models](https://www.ibm.com/docs/en/mhmpmh-and-p-u/8.5.0?topic=overviews-maximo-predict-850).
- Ensure your MAS v8.7 Health environment is running and you have access.

## Introduction

IBM Maximo® Application Suite (MAS) provides your clients with a comprehensive and innovative answer for physical asset management. This flexible solution provides a unified platform that delivers asset performance and maintenance management, with end-to-end asset lifecycle management, across the enterprise. 

Maximo Application Suite is built to scale client’s digital transformation journey with integrated solutions, simplified licensing, and Multicloud deployments. Maximo Application Suite includes Manage, Monitor, Health, Predict, Visual Inspection, and more to come. This lab exercise guide is for Maximo Health and Predict. 
![product wheel](/img/apm_8.7/h1.png) 

Maximo Predict uses historical and real-time asset performance data, maintenance records, inspection reports, and environmental data to correlate performance factors that predict asset degradation or failure. Predict uses artificial intelligence to optimize predict model accuracy.

Maximo Health introduced the concept of work queues to provide a consolidated view of the Assets and their health.  It provides Asset Performance KPI view and fleet wide view and health drill down. It also allows you to take actions based on conditions. This may be based on either Inspection or Sensor Data.

Maximo Predict allows for increasing the life of asset. It reduces maintenance costs and improves asset utilization by reducing unnecessary and redundant maintenance based on condition monitoring infused with IoT, AI, and ML. Also, it helps in conducting the proactive maintenances for assets that need attention. 

Through this Maximo Health and Predict lab exercise, you will learn how to
- Get better insight into the health of assets and predict failures well in advance
- Reduce unnecessary Preventive Maintenance or doing condition-based monitoring.

It would take about 60 minutes to go through the lab exercise and learn about the Maximo Health and Predict applications. 

Note: Follow the `Actions` steps in bold to navigate through the lab procedures. 

## Glossary



**Age** is the actual age. It is the current date minus the installation date.

**Anomaly Detection** helps identify unusual patterns in the behavior of the asset, which might indicate potential failures or pre-failure behaviors. 

**Asset timeline** provides insight into the state of your asset by time in a graphical view. 

**Asset health** is the overall state of an asset might be based solely on observation or on a driver, such as condition, performance, or cost.

**Asset type** is a category for an asset used to manage assets with similar characteristics.

**Criticality** defines the importance of the asset to business processes. It configures how this score is calculated on the Scoring page.

**End of Life Curve** uses retirement and age data for similar assets to estimate the end of life.

**Estimated Time to Failure** is the number of remaining days the asset could operate before failure. If multiple failure modes are possible, the failure mode with the soonest failure estimate and the user can select a different failure mode to see its estimated failure date.

**Factors that contribute to failures** The factors that contribute to failure are the parameters used in the training model to predict the failure of an asset. You can view this information in the failure contribution analysis tree.

**Fair** is an asset health condition indicates that the asset is in minimum operability and can complete its basic functions.
 
**Failure Probability** is the percentage that the asset failure could occur in the selected prediction window.

**Failure Probability Trend** is the historical trend of failure probability of the asset during a period.

**Good** is asset health condition indicates that the asset is operating at a high level without problems.

**Health** is the overall condition of the asset. 

**Health History** is the overall condition of the asset over a period.

**Meters** are readings for the asset to determine the operational status.

**MRR** is the maintenance-to-replacement ratio (MRR) for the asset. MRR is calculated by dividing the current total cost of all maintenance for the asset, including parts and labor, by the replacement cost. If the percentage is 100% or greater, the current total cost of the asset is greater than the cost to replace the asset.

**Next Failure** is the time remaining until the asset is expected to fail based on the predictive model.

**Next PM** is the number of days until the next scheduled generation of preventive maintenance (PM) work order. The card is empty if the generation date is the current date or in the past, and no other work order generations are scheduled.

**Normalized score** is a rating representing the adjustment of a health score to a common baseline.

**Poor** is an asset health condition indicates that the asset has serious problems keeping it from functioning as intended.

**RUL** is the remaining percentage of the asset's useful life. The remaining useful life (RUL) is calculated by subtracting the age from the manufacturer's expected life. If the age exceeds the expected life, the RUL is 0%.

**Work Queues** provide users with a list of tasks, work or items to review and display the outstanding number of records to be reviewed on an ongoing basis.



## Lab Overview
Through this lab exercise, you will learn how a Reliability Engineer uses the MAS Health and Predict applications to review the asset conditions and ensure that there aren't any failures predicted before planned maintenance. Together, MAS Health and Predict applications provide a view of an enterprise's assets' current state and project future conditions of those assets.


## Story 
A Water Resource Authority needs to manage wastewater treatment assets across multiple cities and regions from a single application. Pumps are one of the critical assets in the wastewater plant. In this lab exercise, we will learn how a reliability engineer uses the MAS Health and Predict applications to review the pump conditions and ensure that there aren't any failures predicted before planned maintenance.

## Persona
Reliability Engineer manages the reliability risk by ensuring the asset is available and functions without failure. Based on the industry and market, reliability engineers manage multiple assets and processes.


## Application Launch 

Value: Health and Predict arm the Reliability Engineer with AI-powered insights to take actions to extend the life of the assets, reduce maintenance costs, and eliminate unplanned downtime. You can identify assets that need attention, investigate those assets, and finally take an action to avoid unplanned downtime.

Follow the actions below to get to launch the application. 

`Action:`
1.	Click the App Switcher icon on the top right side of the home page. 

2.	Select `Health` application from the menu bar and you will view the assets list.


## Asset Group View Creation

Follow the actions below to create and view your pump group. This view will allow the Reliability Engineer to view their asset conditions in a tabular and map view.  
Value: You can create and save view so that you don’t have to start over every time. This view includes a status column, filters on my pumps, and sorts them by OEM and non-OEM.

Action

1. Click on the `search icon` and type `pmpd` to view all the pumps from the assets list.

2. Create your pump group by selecting the menu option `Save as` and typing your Maximo lab login as your pump view name. Save your view.

3. You can view the pump group you have created using the `drop-down` menu.

4. View both IT and OT data of your pumps in a single view. 
 
5. Click column selection menu icon.

6. Click `Manage` columns.

7. Type `manufacturer` in the search field and press enter key on your keyboard. 

8. Select the check box for `Manufacturer` and click `OK`
 
9. Click on `Column Selection` icon. 

10. Check if you can see the added new field (Manufacturer) in your view. 
 

##  Asset Map View

Value: Seeing how the assets are spatially distributed may assist the Reliability Engineer with identifying and investigating assets at risk. 
1. Click the Map icon to view the asset & its health condition in a map view 
 
2. Click and select the pump PMPDEVICE007, which has a poor health score on the map. Use the zoom in/out feature to adjust your map view.  
 
3. Use the zoom in/out features to adjust your map view.
 
4. Click on Actions and choose the option `Add Flag`. 

5. Select the Flag option "Replace" and click "Add Flag". You will see the "Replace" tag added to the pump.

!!!
    Note: If the pump is already tagged with `Replace`, you will see a system message (see below). Close the system message and go to the next exercise if you see this message.

 

## Work Queues

Follow the actions below to view the work queue of the asset group you have. Work queues are preconfigured views designed to help you find what you're looking for and manage your day-to-day activities.
Value: Work Queues are particularly valuable to a Reliability Engineer who needs to address a specific problem, like at water treatment plant, to avoid unplanned downtime. The missing data Work Queues are extremely useful to a Reliability Engineer as they can help identify gaps in data necessary to create health scores or predictive failure models.

Action
1.	Click on the navigation menu in the upper left corner and select the Work Queues tab. View the Work Queues list. Reliability Engineers can view the queues based on preconfigured categories.

2.	Click the hamburger menu again to close the tab, and select the "Failing before PM" work queue to view the assets that could fail before scheduled preventive maintenance is completed.

3.	Expand the column width of "Asset" to view the full asset names.
  
4.	View the list of pumps and their predicted failure dates. Check for the pump that has the lowest Health Score. 


## Health scores and Predictive models – Investigating Assets at Risk

### Creating health scores

Before we continue to investigate our assets at risk, we’ll learn how to create health, criticality, and risk scores.  All three types of scores are created in a similar manner.  We’ll create a health score for our lab.

Action

1. Select "Scoring" from the left navigation bar to open the scoring feature in Maximo Health
The initial view will show the `Groups` of assets that have already been created.  You’ll also see a tab for `Ranges` and `Contributors`.

2. Select the `Ranges` tab so that we can explore how ranges are created.
On this page, you can see that custom ranges have already been created for health, criticality, and risk scores.  In addition to creating custom ranges, you can also name them, and assign different colors and symbols to each range.
Value:  The ability to customize ranges, and scores, is important since each enterprise has different preferences, as well as different risk tolerances. 

3. Let’s review the ranges for Health that have already been established. Click on `Health` at the top of the Health score box.

4. Three ranges have been created for the health scores.  Each range has limits, a name, color, and symbol assigned to it.  Select the `Scoring` breadcrumb at the top of the page to return to the main scoring page.

5. Select the `Contributors` tab so that we can explore what contributors are available to use when creating scores. 
 
6. Select the `FACRULYEARSSAMPLE` highlighted blue text in a box to review one of the sample formulas included with Maximo Health.  This contributor holds a formula that describes the asset’s remaining useful life in years.

7. Once you’ve reviewed the page, select the `Scoring` breadcrumb at the top of the page to return to the Contributors page.  Then select the `Groups` tab. 

8. From the Groups page, we’ll create a custom health score.  Your health score will use the ranges, and the contributor that we just reviewed.  Select the `Create Group +` button to create your own group.

9. Create your own group with the following information.


    Name:  The username you used to login to this lab (example:  s123think22)
    Description:  Think2022 Lab Sample Group
    Object:  Asset

11. Select `Select` to select a group. 

12. In the `Select a Query` box, type in `Pumps` in the search box, and select the check mark at the end of line. This will search for a prebuilt query for pumps.

13. Select `Pumps` from the resulting search and click `Apply`.

14. On the next page, click `Create` to create your unique group of 10 pumps. 

15. On the group page that you just created, click `Add Score` to create a health score for your pumps.

16. In the popup, click on the `Health` score box to highlight it, then click `Done`.

17. We’ll create a health score that is a weighted average of several contributors, including sensor readings, and a field from Manage.  Click on the `+` symbol to add our first contributor, a pre-built formula for Remaining Useful Life. 

18. From the Add a Contributor pop-up, FIRST select the box for `FACRULYEARSSAMPLE`, and then click `Add`. If you do not see the blue bar or `Add` option, select the circled check mark in the upper right corner of the `FACRULYEARSSAMPLE` box. 

19. Click on the `x` symbol to add a second contributor, a formula we’ll write to get the number count from a field in Manage.

20. On the pop up, complete the form with the following inputs:

    Name:  Open Work Orders
    Description:  A count of open work orders in Manage
    Formula:  count$openwo

21. Scroll down the screen and enter the following values

    Best possible value:  0
    Worst possible value:  5

22. Then click `Add formula to score`.

23. Click on the hierarchy symbol to add a contributor group, which will consist of multiple sensor readings.

24. On the pop up, complete the form as follow, the click `Create`.

    Name:  Meter Health
    Description:  Contributor group of meters

25. Click on the contributor group `Meter Health` that you just created to add contributors.

26. Click on the `+` to add multiple contributors to your group.

27. Scroll down the screen and Click on the following boxes to select them, then click `Add`.
    

    MOTORTEMP
    VELOCITYZ
    VELOCITYX
    VELOCITYY

28. Click on the pencil icon to edit the percentage each contributor contributes to the group.

29. On the Edit contributor settings pop up, adjust the `Weight` to 25 for each of the 4 contributors, and click `Save`.

30. Return to your Health score page by clicking Health in the breadcrumbs.

31. Click on the pencil icon to edit the percentage each contributor contributes to the overall Health score.

32. On the Edit contributor settings pop up, adjust the `Weight` to 60% for FACRULYEARSSAMPLE, 20% for Open Work Orders, and 20% for Meter Health, then click `Save`.

33. Return to your main score page by clicking Scoring in the breadcrumbs.

You have successfully created a health score for your group of pumps.  You will see your scoring group, along with scoring groups on the page.


## Asset detail page

1.	Click the "Work Queues" icon on the left side of the menu screen.

2.	Select `Failing before PM` from the Queue Names

3.	Adjust the "Asset: column width to view the full asset names and click on `PMPDEVICE003`

4.	View pump `PMPDEVICE003` and click and view details under `Asset Health` section. 

5.	Scroll down to the health history section. Select `1 month` period and view the health history data for the last 30 days. The graph here has the Score on the y-axis with the date on the x-axis and maps the Health score and its contributors. This way, we can see a view of how this information contributes to the overall Health of the asset.
 
### Predict Model

1. Click and expand `Predictions` section and wait for the predictive model results to load.
Value: IBM Predict includes templates to help our Data Scientist get started building models to project days to failure, calculate the probability of failure, detect anomalies, and generate an asset life curve based on group asset deployment and retirement dates.  These templates include a large number of algorithms and can automatically select the one that best fits our data for the optimal outcome. 

2. Wait for the Predict failure data table and graph to load for the pump "PMPDEVICE003".

3. Scroll down to the Failure probability trend card 

4. Maximize the `Failure probability trend` and view the data. 

5. Close the maximized view by clicking on the close icon. 
 
6. Scroll down to `Factors that contribute to failures` card and view the results or full analysis tree. 
 
### Asset Timeline

1.	Open Asset Timeline tab.
2.	Hover over predicted failure. While each piece of information, or widget, gives you insight into the state of our asset, all of the information together, gives us a richer view. This helps us make a data-driven decision on how to address this asset.
 
### Taking action

1.	 Scroll the screen up until you see the `PMPDEVICE003` and click `Actions` and select `Create Service Request`.
 
2. Type the following and select priority as `High`. Create the ticket by clicking on `Create`. 


    Summary: Test Summary
    Description: Test Description
 
## Closing

This exercise explains how to remove the temporary pump views. You will remove the pump views you have created.   Follow the steps below to exit.

1.	Go to Asset icon located in the top left side of the menu bar.
 
2.	Click the Asset menu located in the top left side of the menu bar.
 
3.	Select the pump view you have created (as part of the exercise section 4.2)

4.	Click on the menu option   and select "Delete"

5.	Check if you have selected the pump view you have created and click delete.


How to remove the temporary groups 

1.	Click the Scoring menu located in the top left side of the menu bar.

2.	Go to the group you have created (Section 5.1, Step 9) and delete it

3.	Check if you have selected the group you have created and click delete.

Congratulations!  You have experienced how a Reliability Engineer continued the investigation, using Maximo Health and Predict to better understand the current and future states of the pumps, identify potential problems, and take actions using AI-driven insights to avoid unplanned downtime. 





