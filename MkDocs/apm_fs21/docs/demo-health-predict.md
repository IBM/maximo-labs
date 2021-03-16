# Health - Predict Demo

!!! note
    Please follow the `Action` statements to navigate the steps and perform the lab.

## Overview

`Action:` Scroll down from asset Health into the Predictions Tab, and open the tab.

![img](/img/apm_fs21/predict.png){:style="height:250px;width:400px"}


There are several predictive models built to score against incoming sensor data for our asset.<br>
 • IBM Predict includes templates to help our Data Scientist get started building models to project days to failure, calculate probability of failure, detect anomalies, and generate an asset life curve based on group asset deployment and retirement dates.  These templates include a large number of algorithms and can automatically select the one that best fits our data for the optimal outcome.  Note that also included with the Maximo Application Suite is Watson Studio and Watson Machine Learning, both of which our Data Scientist can use for building, training, and maintaining predictive models.

 ![img](/img/apm_fs21/predict2.png){:style="height:300px;width:600px"}

## Predicted Failure Model
In the case of our asset, our model tells us that it is projected to fail in xx days...plus or minus xx days.  Depending on the richness of our failure history, our Data Scientist can build predictive models for specific failure modes.  And we can select those failure modes within the widget to see the projection for each.<br>
`Action:` Select drop down arrow for failure mode.
                      
![img](/img/apm_fs21/failuremode.png){:style="height:300px;width:600px"}

 • Also in the widget, we get information about our training data in the widget to help us decide when a model should be retrained.

![img](/img/apm_fs21/predict5.png){:style="height:300px;width:600px"}

The Failure probability widget can show us how different failure modes impact our predictions. Here, it shows us our asset has a xx% probability of failure in the next 5 days. <br> 
![img](/img/apm_fs21/predict4.png){:style="height:300px;width:600px"}

•	Our Data Scientist can build specific models for time periods.  And just like the failure modes, we can look at the results by making different selections within our widget.<br> 
•	Failure probability history shows how the probability of failure for each mode has changed over time.<br>
`Action:` Scroll to Failure probability trend card.
![img](/img/apm_fs21/predict6.png){:style="height:300px;width:600px"}

The factors that contribute to failure show which factors from our training data impacted failures the most, giving us an indication of what may lead to future failures.<br>
`Action:` Scroll to Factors that contribute to failures card.
![img](/img/apm_fs21/predict7.png){:style="height:300px;width:600px"}

Our anomaly detection model creates a threshold based on history, and we can see when our asset exceeds that threshold in our widget.<br>
`Action:` Scroll to Anomaly detection history card.
![img](/img/apm_fs21/predict8.png){:style="height:300px;width:600px"}


## Asset Timeline
At the bottom of the page, is an asset timeline that shows us several pieces of key information about our asset in the same graph.<br>
`Action:` Open Asset Timeline tab.

![img](/img/apm_fs21/assetT1.png){:style="height:300px;width:600px"}
![img](/img/apm_fs21/assetT2.png){:style="height:300px;width:800px"}


  For example, we can see that I have a predicted failure (on the top line of the graph), that will occur before our next planned maintenance (on the second line of the graph).<br>
•	Other information on the chart, like past work orders and inspection, provide valuable insight into our asset's history, and may support what kind of action we take.<br>
`Action:` Hover over predicted failure.

![img](/img/apm_fs21/assetT3.png){:style="height:300px;width:800px"}

While each piece of information, or widget, gives us insight into the state of our asset, all of the information together, gives us a richer view, and helps us make a data-driven decision on how to address this asset.


## Take Action
Once I decide what action to take, I can do it immediately from the top of the asset detail page.<br>
`Action:` Scroll back to the top of the page and Select Action button in the right corner. 

![img](/img/apm_fs21/action.png){:style="height:300px;width:800px"}

I can Create a service request, Create a work order, Recalculate a health score, or Edit source asset record.
![img](/img/apm_fs21/action2.png){:style="height:300px;width:800px"}

In this case, I'll Edit the source asset record to adjust the next scheduled maintenance to avoid a potential failure...and unplanned downtime.<br>
`[For demo purposes, you can click through to Maximo EAM to show the asset record, but don’t create a new maintenance record]`
![img](/img/apm_fs21/editsourceR.png){:style="height:300px;width:800px"}

Once that’s done, I mark my asset addressed, and move to my next asset, confident that we'll avoid unplanned downtime at our water treatment plant.<br> 
`[For demo purposes, you can click on the “Queue unaddressed button, but please unclick it so that the asset remains in the queue for the next demo.]`

![img](/img/apm_fs21/queueaddressed.png){:style="height:200px;width:800px"}

Replacing a $5 damper could save thousands of dollars in capital costs preventing the pump from failing by vibrations.  The Reliability Engineer can also use this this type of information to ensure that they aren’t over maintaining their assets.



