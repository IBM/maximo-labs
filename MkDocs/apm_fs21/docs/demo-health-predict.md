# Health - Predict Demo

## Overview
There are several predictive models built to score against incoming sensor data for our asset.<br>
 • IBM Predict includes templates to help our Data Scientist get started building models to project days to failure, calculate probability of failure, detect anomalies, and generate an asset life curve based on group asset deployment and retirement dates.  These templates include a large number of algorithms and can automatically select the one that best fits our data for the optimal outcome.  Note that also included with the Maximo Application Suite is Watson Studio and Watson Machine Learning, both of which our Data Scientist can use for building, training, and maintaining predictive models.

## Predicted Failure Model
In the case of our asset, our model tells us that it is projected to fail in xx days...plus or minus xx days.  Depending on the richness of our failure history, our Data Scientist can build predictive models for specific failure modes.  And we can select those failure modes within the widget to see the projection for each.<br>
 • Also in the widget, we get information about our training data in the widget to help us decide when a model should be retrained.

The Failure probability widget can show us how different failure modes impact our predictions. Here, it shows us our asset has a xx% probability of failure in the next 5 days. <br> 
•	Our Data Scientist can build specific models for time periods.  And just like the failure modes, we can look at the results by making different selections within our widget.<br> 
•	Failure probability history shows how the probability of failure for each mode has changed over time.

The factors that contribute to failure show which factors from our training data impacted failures the most, giving us an indication of what may lead to future failures.

Our anomaly detection model creates a threshold based on history, and we can see when our asset exceeds that threshold in our widget.


## Asset Timeline
At the bottom of the page, is an asset timeline that shows us several pieces of key information about our asset in the same graph.  For example, we can see that I have a predicted failure (on the top line of the graph), that will occur before our next planned maintenance (on the second line of the graph).<br>
•	Other information on the chart, like past work orders and inspection, provide valuable insight into our asset's history, and may support what kind of action we take.

While each piece of information, or widget, gives us insight into the state of our asset, all of the information together, gives us a richer view, and helps us make a data-driven decision on how to address this asset.


## Take Action
Once I decide what action to take, I can do it immediately from the top of the asset detail page.<br>
`Action:` Select Action button. 

I can Create a service request, Create a work order, Recalculate a health score, or Edit source asset record.

In this case, I'll Edit the source asset record to adjust the next scheduled maintenance to avoid a potential failure...and unplanned downtime.<br>
`[For demo purposes, you can click through to Maximo EAM to show the asset record, but don’t create a new maintenance record]`

Once that’s done, I mark my asset addressed, and move to my next asset, confident that we'll avoid unplanned downtime at our water treatment plant.<br> 
`[For demo purposes, you can click on the “Queue unaddressed button, but please unclick it so that the asset remains in the queue for the next demo.]`

Replacing a $5 damper could save thousands of dollars in capital costs preventing the pump from failing by vibrations.  The Reliability Engineer can also use this this type of information to ensure that they aren’t over maintaining their assets.



