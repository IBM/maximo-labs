# Health Demo

## Review Health


Now that one asset has been identified as creating multiple alerts, the Operations Manager asked the Reliability Manager to dig deeper into all of the similar pumps, to make sure that the aren't any failures predicted to occur before planned maintenance.

We can migrate to Health & Predict via the navigation menu in the top right corner where we'll see a mix of both EAM (Manage) IT data and sensor (Monitor) OT data.<br> 
`Action:` Show menu in top right corner.

## Overview
Targeted to the Reliability Engineer, Maximo Health and Predict provide a view of the current state of an enterprise's assets, and projects future conditions of those assets.  Together, they arm the Reliability Engineer with AI-powered insights to take actions to extend the life of the assets, reduce maintenance cost, and eliminate unplanned downtime.

Maximo Health and Predict share many of the same screens and are tightly integrated.  Base users of Maximo Application Suite will see "Maximo Health" at the top of each screen, while Premium users will see "Maximo Predict" along with columns, charts and graphs specific to their predictive models that are scoring assets.  Since Health and Predict are delivered in the Maximo Application Suite, it's easy to start with Health, and then move to Predict.

As the Reliability Engineer, I'll follow the following steps.  First, I'll view my assets in the grid view.  Then, I'll move to the work queues, to show how I can easily identify assets that have a predicted failure before planned maintenance.  Next, we'll investigate those assets, and finally, we'll take an action to address a problem.

## Review Asset's Health
On the main screen, I can see a universal view of my managed assets in a familiar grid view.<br>
`Action:` Show grid view of assets in health. <br>
 • These assets are coming from Maximo or your EAM system.  The auxiliary data being shown is a mix of EAM data and the health scores.<br>
 • Different views of your data can be generated to make it easier to identify your critical assets.<br>

To look at the status of my pumps, I'll add the status column.<br>
 • I can also change, move, and resize columns of the grid view.

To focus on a certain set of pumps, I'll use the search feature and search for "PMP" to limit the list of all my assets.<br>
 • I can also use filtering and sorting to help find what I'm looking for.  And, there are saved views ideal for different analysis or tasks.<br>

In this view, you can see two columns with calculated date.<br>
 • You can see Health scores, which are created within the Health application for groups of assets.<br>
    o Risk tolerance can vary among industries, asset types, and enterprises.  I can define the scoring ranges specific to my tolerance levels.<br>
    o I can even assign my own colors.<br>
 • Similarly, information in the Days to Failure column comes from a predictive model.

I can see that all of my OEM pumps are in good health, while my non-OEM pumps appear to be in poor health.

## Work Queue
The easiest way to identify assets with failures prior to planned maintenance is by using the work queue feature.  Work queues are preconfigured views designed to help you find what you're looking for...and to manage your day-to-day activities.

There are a number of work queues included.  For our purposes, there's a work queue for assets with predicted failure prior to planned maintenance:<br>
 • You can see the number of assets in each queue, and as you address each asset in the queue, that number will decrease.<br>
 • There's also a work queue for identifying assets in poor health.<br>
 • And there are work queues that show assets with missing data.  You can use these queues to fill in data that is necessary to create health scores and prepare your assets for feeding into Predictive failure models.

From each work queue on the page, we have the option to view a complete list of assets in that queue or move immediately to the first asset on the list and start our analysis.

I'll select the Failing Before PM work queue to see all of the assets with scores in that work queue.

I'll also search for pumps in my target group.

In this work queue, we can see that there are 5 pumps that have a predicted failure before their next planned maintenance date, and they are all non-OEM pumps.

I'll select the first assets in the queue as we start to manage our workload for the day, investigating and addressing all of the assets in the queue.

## Health Score
The health score of an asset is a crucial piece of the puzzle when investigating an asset in poor health.   Other KPIs can also help me determine what action to take.  We can find all the asset information presented on a single page, in easy-to-read tables, charts and graphs.<br>
 • On the top of the page, I see details about my asset, and KPIs that give me a snapshot of its current state.<br>
 • For this asset, we have a health score of xx, which is in our red zone.  We can also see that it has dropped x points since it was last calculated.<br>
 • This asset also has a criticality and risk score.<br>
 • We can see this asset has xx% of its expected remaining useful life, based on the install date and manufacturers recommended life.<br>
 • We can see that our asset is projected to fail in the next xx days, but our next maintenance isn't planned for x days.<br>
 • Another performance indicator can be the ratio of how much we've spent maintaining the asset over its life as compared with its replacement cost (MRR). In this case, we've spent the equivalent of xx% of the replacement cost.<br> 
 • When we started our investigation, we knew the asset was expected to fail before its planned maintenance.  But, just by looking at the KPIs, we have additional evidence that this asset is in trouble, and that some action needs to be taken.

Below the KPI sections, we can see more information about our asset, which comes directly from our EAM system...in this case, Maximo Manage, also included with the Maximo Application Suite.

!!! note 
    Maximo Health and Predict can connect and receive information from other EAM systems.

There's a breakdown of the health score drivers and factors that give us insight into what's causing its poor health.<br>
•	For this asset, and assets in the same group, we can see that the health score is a weighted average of condition, cost, remaining useful life, and age.













