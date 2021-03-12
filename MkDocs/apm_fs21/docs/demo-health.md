# Health Demo

!!! note
    Please follow the `Action` statements to navigate the steps and perform the lab.

## Overview

Now that one asset has been identified as creating multiple alerts, the Operations Manager asked the Reliability Manager to dig deeper into all of the similar pumps, to make sure that there aren't any failures predicted to occur before planned maintenance.

Targeted to the Reliability Engineer, Maximo Health and Predict provide a view of the current state of an enterprise's assets, and projects future conditions of those assets.  Together, they arm the Reliability Engineer with AI-powered insights to take actions to extend the life of the assets, reduce maintenance cost, and eliminate unplanned downtime.

Maximo Health and Predict share many of the same screens and are tightly integrated.  Base users of Maximo Application Suite will see "Maximo Health" at the top of each screen, while Premium users will see "Maximo Predict" along with columns, charts and graphs specific to their predictive models that are scoring assets.  Since Health and Predict are delivered in the Maximo Application Suite, it's easy to start with Health, and then move to Predict.

As the Reliability Engineer, I'll identify assets the need attention, investigate those assets, and finally take an action to avoid unplanned downtime.<br>
`Action:` Select Health Application in the right corner and show grid view of assets in health.

![img](/img/apm_fs21/healthapp.png){:style="height:400px;width:800px"}
![img](/img/apm_fs21/gridview.png){:style="height:400px;width:800px"}

## Review Asset's Health
On the main screen, I can see a universal view of my managed assets in a familiar grid view. This is particularly valuable to me as the Reliability Engineer because I can see a mix of both EAM (Manage) IT data and sensor (Monitor) OT data together in a single view.<br>
 • These assets are coming from Maximo but we can connect to other EAM systems.  The data being shown is a mix of EAM data and calculated data.<br>
 • Different views of our data can be generated to make it easier to identify our critical assets.<br>

To look at the status of my pumps, I'll add the status column.
`Action:` Select `Manage Columns` and search status in the search bar. Check the box next to status and select `Ok`.

![img](/img/apm_fs21/lookupcolumn.png){:style="height:400px;width:800px"}

 • I can also change, move, and resize columns of the grid view.
 `Action:` Move column values around.

![img](/img/apm_fs21/movecolumn.png){:style="height:400px;width:800px"}

To focus on a certain set of pumps, I'll use the search feature and search for "PMP" to limit the list of all my assets.<br>
`Action:` Search `PMP` in search bar above Asset Column.

![img](/img/apm_fs21/pumpstatus.png){:style="height:250px;width:800px"}

 • I can also use filtering and sorting to help find what I'm looking for.  And, there are saved views ideal for different analysis or tasks.<br>

In this view, you can see two columns with calculated data.<br>
 • You can see Health scores, which are created within the Health application for groups of assets from the Scoring tab.<br>
    o Risk tolerance can vary among industries, asset types, and enterprises.  I can define the scoring ranges specific to my tolerance levels.<br>
    o I can even assign my own colors.<br>
 • Similarly, information in the Days to Failure column comes from a predictive model from the Predict Grouping tab.

I can see that my pumps are in various states of health, but in general, my OEM pumps are in better health.  I’ll continue my investigation to determine which assets are expect to fail soon, but don’t have a maintenance plan to address the failure.

## Work Queue
The easiest way to do this is by using the work queue feature.<br>  
`Action:` Show work queues.

Work queues are preconfigured views designed to help you find what you're looking for...and to manage your day-to-day activities.  These are particularly valuable to a Reliability Engineer who needs to address a particular problem.

There are a number of work queues included with Health and Predict.<br>
 • There are work queues specific to Predict, like assets with a High Probability of Failure.<br>
 • There's also a work queue for identifying assets in poor health.<br>
 • And there are work queues that show assets with missing data. These are particularly useful as they can help us fill in data that is necessary to create health scores and prepare our assets for feeding into Predictive failure models.

We can see the number of assets in each queue, and as we address each asset in the queue, that number will decrease.

From each work queue on the page, we have the option to view a complete list of assets in that queue or move immediately to the first asset on the list and start our analysis.

I'll select the Failing Before PM work queue to see all of the assets with scores in that work queue.<br>
•	In this work queue, we can see that there are 3 pumps that have a predicted failure before their next planned maintenance date, and they are all non-OEM pumps.<br>
•	We can see pump 5 here, the one with the bad dampener that our technician discovered.<br>
•	I'll select pump 5 in the queue as we start to manage our workload for the day, investigating and addressing all of the assets in the queue.


## Health Score

`Action:` Show asset detail page.<br>

The asset detail page is an incredibly useful tool for investigating assets.  We can find all the asset information presented on a single page, in easy-to-read tables, charts and graphs.<br>
•	On the top of the page, I see details about my asset, and KPIs that give me a snapshot of its current state.<br>
•	For this asset, we have a health score of XX, which is in our yellow/red/green zone.  We can also see that it has dropped/increase xx points since it was last calculated.<br>
•	This asset also has a criticality and risk score.  These too can be calculated in a similar manner to the Health Score.<br>
•	We can see this asset has xx% of its expected remaining useful life, based on the install date and manufacturers recommended life.<br>
•	We can see that our asset is projected to fail in the next x days, but our next maintenance isn't planned for x days.<br>
•	Another performance indicator can be the ratio of how much we've spent maintaining the asset over its life as compared with its replacement cost (MRR). In this case, we've spent the equivalent of xx% of the replacement cost.<br> 
•	When we started our investigation, we knew the asset was expected to fail before its planned maintenance.  But, just by looking at the KPIs, we have additional evidence that this asset is in trouble, and that some action needs to be taken.

Below the KPI sections, we can see more information about our asset, which comes directly from our EAM system...in this case, Maximo Manage, also included with the Maximo Application Suite. 

There's a breakdown of the health score drivers and factors that give us insight into what's causing its poor health.<br>
•	For this asset, and assets in the same group, we can see that the health score is a weighted average of open work orders, remaining useful life, and meter health.













