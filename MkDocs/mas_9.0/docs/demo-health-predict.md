# Health - Predict Lab
!!! note
    This lab is under development.  Not all steps are complete or accurate.

## Health Overview

Now that one asset has been identified as creating multiple alerts, the Operations Manager asked the Reliability Manager to dig deeper into all of the similar pumps, to make sure that there aren't any failures predicted to occur before planned maintenance.

Maximo Health and Predict are targeted to the reliability engineer. Together, they provide a view of the current state of an enterprise's assets, and project future conditions of those assets.<br/>

In this exercise you will understand the Health of your assets.

1. Select Health Application in the right corner.<br/>
![Health Overview](../../mas_9.0/img/wwpump_8.11/health01.png)

2. Show grid view of assets in health.<br/>
![Health Overview](../../mas_9.0/img/wwpump_8.11/health02.png)

<b>Value:</b>

Health and Predict arm the Reliability Engineer with AI-powered insights to take actions to extend the life of the assets, reduce maintenance cost, and eliminate unplanned downtime. You can sort and select the asset attributes that allow you to rank and rate which assets you should focus on.

As the Reliability Engineer, I'll identify assets the need attention, investigate those assets, and finally take an action to avoid unplanned downtime.

## Review Asset's Health

From the main MAS screen, click on the Health tile to show grid view of assets in Maximo Health and Predict.

![Views](../../mas_9.0/img/wwpump_8.11/health03.png)

On the main screen, I can see a universal view of my managed assets in a familiar grid view.

<b>Value:</b> 

This is particularly valuable to me as the Reliability Engineer because I can see a mix of both IT data (from Manage) and OT data (from Monitor) together in a single view.<br/>

These assets are coming from Maximo Manage, but we can connect to other EAM systems.<br/>

Different views of our data can be generated to make it easier to identify our critical assets. On this grid, I can add and move columns, filter, search and sort.<br/>

<b>Value:</b> 
You have created a saved view to so that I don’t have to start over every time.  This view includes a status column, filters on my pumps, and sorts them by OEM and non-OEM.<br/> 

In this exercise you understand how to use your saved views to quickly get to your assets based on a query and filter definition.  

1. Select "Pump” view in the demo may be different. <br/>
 ![Pump View](../../mas_9.0/img/wwpump_8.11/health04.png)

In this view, I can see two columns with calculated data. You can see Health scores, which are created within the Health application for groups of assets from the Scoring tab.<br/>

2. Show Health Scores under health column and Scoring Tab on the left Tab view.<br/>
![Health Scores](../../mas_9.0/img/wwpump_8.11/health05.png)

<b>Value:</b>
Risk tolerance can vary among industries, asset types, and enterprises.  I can define the scoring ranges specific to my tolerance levels. I can even assign my own colors.<br/>

 3.  Show Predict Grouping Tab on left Tab menu. Similarly, information in the Days to Failure column comes from a predictive model from the Predict Grouping tab.<br/>
![Predict Scores](../../mas_9.0/img/wwpump_8.11/health06.png)

4. Search `pmpd` and click Map icon.  I can see that my pumps are in various states of health, but in general, my OEM pumps are in better health.  Based on the information I’ve received from the ops manager, I suspect that my all of my non-OEM pumps are all have issues with their o-rings.<br>
![Grid View](../../mas_9.0/img/wwpump_8.11/health07.png)

4. Select the map icon in the upper right of the screen.  I can also see my selected assets on a map view, with similar information.<br/>
![Map View](../../mas_9.0/img/wwpump_8.11/health08.png)

Seeing how the assets are spatially distributed may assist the Reliability engineer with identify and investigating assets at risk.  This is particularly true in the Utilities industry.

## Work Queue
I’ll continue my investigation to determine which assets are expect to fail soon, but don’t have a maintenance plan to address the failure.  I want to do those to avoid unplanned downtime, and be more proactive in my maintenance planning.   The easiest way to do this is by using the work queue feature.<br>  

1.  Select Work queues tab on the Left Tab menu, and Show work queues.
![Select Work Queue](../../mas_9.0/img/wwpump_8.11/health05.png)<br/>
![View Work Queue](../../mas_9.0/img/wwpump_8.11/health06.png)

Work queues are preconfigured views designed to help you find what you're looking for...and to manage your day-to-day activities.<br>  

These are particularly valuable to a Reliability Engineer who needs to address a specific problem, like a water treatment plant, trying to avoid unplanned downtime. In this exercise you will learn about the OOTB Health Work Queues. That allow you to focus on specific workflow tasks around identifying missing data so that you can calculated importment key performance metrics and then find assets in need of attention and actioning.

2. Hover over the `Missing Data` Work Queue. There are a number of work queues included with Health and Predict.<br/>
 
 There are work queues specific to Predict, like assets with a `High Probability of Failure`.<br/>
![High Probability of Failure Work Queue](../../mas_9.0/img/wwpump_8.11/health07.png)

3. Hover over the `Low Health` Work Queue.  There's also a work queue for identifying assets in poor health.<br/>
![Low Health Work Queue](../../mas_9.0/img/wwpump_8.11/health08.png)

4. Hover over the `Missing Data` Work Queue. And there are work queues that show assets with missing data. The `Missing Data` Work Queue are extremely useful to a reliability engineer as they can help identify gaps in data necessary to calculate health scores or predictive failure model.<br/>
![Missing Data](../../mas_9.0/img/wwpump_8.11/health09.png)

4. Hover over the `Failing Before PM` Work Queue. I can drill into the `Failing Before PM` work queue to see all of the assets with scores in that work queue. As a Reliability Engineer at a Water treatment plant, it is critical for me to avoid pump failures.<br/>
![Failing Before PM](../../mas_9.0/img/wwpump_8.11/health10.png)

5. Drill in to the `Failing Before PM` Work Queue.  We can see that there are 4 pumps that have a predicted failure before their next planned maintenance date, and they are all non-OEM pumps.<br/>
![Drill in for Asset List](../../mas_9.0/img/wwpump_8.11/health11.png)

!!! note
    Recorded in a previous date.

You can see the pump here, the one with the bad o-ring that our technician discovered.<br/>

Select a different pump in the queue as we start to manage our workload for the day, investigating and addressing all of the assets in the queue.<br/>

## Asset Details 

You can understand more about the contributors to the asset Health Score and information about the asset.

1. Click on  `pump 1` which opens the asset detail page [DETAILS ON THIS PAGE WILL VARY AS THIS IS A LIVE DEMO SYSTEM]<br/>
![Asset Details Pump](../../mas_9.0/img/wwpump_8.11/health12.png)

The asset detail page is an incredibly useful tool for investigating assets.  We can find all the asset information presented on a single page, in easy-to-read tables, charts and graphs.<br/>

On the top of the page, I see details about my asset, and KPIs that give me a snapshot of its current state.<br/>

For this asset, we have a health score of xx, which is in our yellow zone.  We can also see that it has dropped xx points since it was last calculated<br/>

2. Show health score and small number next to health score at the top.<br/>

This asset also has a criticality and risk score.  These too can be calculated in a similar manner to the Health Score.<br/>

We can see this asset has xx% of its expected remaining useful life, based on the install date and manufacturers recommended life.<br/>

3. Show 'RUL' card at the top. We can see that our asset is projected to fail in the next x days, but our next maintenance isn't planned for x days.<br/>

4. Show 'Next Failure' card and 'Next PM' card at the top. When we started our investigation, we knew the asset was expected to fail before its planned maintenance.  But, just by looking at the KPIs, we have additional evidence that this asset is in trouble, and that some action needs to be taken<br/>

Below the KPI sections, we can see more information about our asset, which comes directly from our EAM system...in this case, Maximo Manage, also included with the Maximo Application Suite. 

5. Scroll to health details and click the arrows to show metrics. There's a breakdown of the health score drivers and factors that give us insight into what's causing its poor health.<br/>
![Poor Health Score](../../mas_9.0/img/wwpump_8.11/health13.png)

For this asset, and assets in the same group, we can see that the health score is a weighted average of open work orders, remaining useful life, and meter health.

## Predict Overview

1. Scroll down from asset Health into the Predictions tab and open the tab. There are several predictive models built to score against incoming sensor data for our asset.<br/>
![Predict Tab](../../mas_9.0/img/wwpump_8.11/health14.png)

IBM Predict includes templates to help our Data Scientist get started building models to project days to failure, calculate probability of failure, detect anomalies, and generate an asset life curve based on group asset deployment and retirement dates.  These templates include a large number of algorithms and can automatically select the one that best fits our data for the optimal outcome.  
 
Note that also included with the Maximo Application Suite is Watson Studio and Watson Machine Learning, both of which our Data Scientist can use for building, training, and maintaining predictive models.<br/>
 ![Watson Machine Learning](../../mas_9.0/img/wwpump_8.11/health15.png)

## Predicted Failure Model

In the case of our asset, our model tells us that it is projected to fail in xx days...plus or minus xx days.  Depending on the richness of our failure history, our Data Scientist can build predictive models for specific failure modes.  And we can select those failure modes within the widget to see the projection for each.<br/>

1. Select `drop down arrow` for failure mode.                   
![Failure Modes](../../mas_9.0/img/wwpump_8.11/health16.png)

2. Click the `info` icon to learn more about the field. Also in the widget, we get information about our training data in the widget to help us decide when a model should be retrained.<br/>
![Info Help](../../mas_9.0/img/wwpump_8.11/predict5.png)

3. Review the `Failure probability` widget to learn about the different failure modes impact our predictions. For example, it might show us our asset has a xx% probability of failure in the next xx months due to xx<br/>
![Failure Probability](../../mas_9.0/img/wwpump_8.11/predict4.png)

Our Data Scientist can build specific models for time periods.  And just like the failure modes, we can look at the results by making different selections within our widget.<br/> 

4.  Review the `Failure probability history` widget.  Failure probability history shows how the probability of failure for each mode has changed over time.<br/>
![Failure probability history](../../mas_9.0/img/wwpump_8.11/predict6.png)

5. Scroll to `Factors` that contribute to failures card.
The factors that contribute to failure show which factors from our training data impacted failures the most, giving us an indication of what may lead to future failures.<br/>
![Factors](../../mas_9.0/img/wwpump_8.11/predict7.png)

6. Scroll to `Anomaly detection history` card.  Our anomaly detection model creates a threshold based on history, and we can see when our asset exceeds that threshold in our widget.<br/>
![Anomaly detection history](../../mas_9.0/img/wwpump_8.11/predict8.png)

## Asset Timeline
At the bottom of the page, is an asset timeline that shows us several pieces of key information about our asset in the same graph.<br/>

1. Open Asset Timeline tab.<br/>
![Timeline](../../mas_9.0/img/wwpump_8.11/asset_t2.png)

For example, we can see that I have a predicted failure (on the top line of the graph), that will occur before our next planned maintenance (on the second line of the graph).<br/>

Other information on the chart, like past work orders and inspection, provide valuable insight into our asset's history, and may support what kind of action we take.<br/>

2. Hover over predicted failure.<br/>
![Predicted Failures](../../mas_9.0/img/wwpump_8.11/asset_t3.png)

While each piece of information, or widget, gives us insight into the state of our asset, all of the information together, gives us a richer view, and helps us make a data-driven decision on how to address this asset.


## Take Action

1.  Scroll back to the top of the page and Select `Action` button in the right corner. Once I decide what action to take, I can do it immediately from the top of the asset detail page.<br/>
![Action Asset](../../mas_9.0/img/wwpump_8.11/action.png)

2. Hover over the `Create Service Request` but don't click on it.  I can create a `service request`, `work order`, `recalculate a health score`, or `edit source asset record`.

3. Click on `edit source record`.  In this case, I'll Edit the source asset record to adjust the next scheduled maintenance to avoid a potential failure...and unplanned downtime.<br/>

!!! note
    Don't create or modify source record. 

4. Mark my asset addressed, and move to my next asset, confident that we'll avoid unplanned downtime at our water treatment plant. `[DO NOT LEAVE THIS CHECKED]` uncheck it.<br>
![Addressed Queue](../../mas_9.0/img/wwpump_8.11/queue_addressed.png){:style="height:200px;width:800px"}

## Summary
<a name="summary"></a>

As the Reliability Engineer, managing the short and long term asset planning for a water and waster water treatement facilities across multiple locations I was able to use `IBM Maximo Health` to:
- Address short term asset needs by replacing a low-dollar o-ring could save thousands of dollars in capital costs preventing the pump from failing by vibrations. I can also use this this type of information on the Risk Matrix to ensure that we aren’t over maintaining their assets in future years which I will cover in a separate exercise. Since we address all of the pumps in our work queue, we can reduce the alerts and SRs in Monitor. This information can also be valuable for capital planning purposes. 



