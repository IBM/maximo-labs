# Manage - Mobile Demo

!!! note
    Please follow the `Action` statements to navigate the steps and perform the lab.

## Service Request to Work Order

Within Manage EAM, the newly created Service Request can be automated into a WO, where a manual review by a supervisor could occur where they can drill into related history records against the PUMP, they can also link directly to the monitor dashboard to review the details of the anomaly/alert.  Part of the evaluation may or may not give enough information to know exactly what needs to be addressed, so in this case an inspection should be performed. The supervisor can approve the work order and assign the appropriate resource. <br>
`Action:` Manually create a work order in EAM from the service request you created in Monitor. 

## Execute Work Order
As a technician, I can login to Maximo Mobile and from the navigation page, tap My Schedule to see work that has been assigned to me whether I’m in the break room, on the other side of the plant, or even offline.<br>
`Action:` Go into Maximo Mobile, click My Schedule. 

![img](/img/apm_fs21/mobileschedule.png){: style="height:400px;width:250px;margin-left:40px"}

!!! note
    Main Screen could look like Tiles or Tabs depending which display setting you choose. This main screen is currently using Tabs.

I see a new work order assigned to me, which is presented to me in order of priority so that I am focused on the right job at any given time in my shift. 

![img](/img/apm_fs21/workorders.png){: style="height:400px;width:250px;margin-left:40px"}

I can look at all my work in a list, or use the map view to see work nearby and perform additional tasks like route optimization so I don’t waste time going to the wrong location.   The location information can help direct me to the proper asset within the plant to perform the work order tasks.<br>
`Action:` Click on the map view icon in top right corner, then go back to My Schedule using the List menu next to Map icon.

![img](/img/apm_fs21/map.png){: style="height:400px;width:250px;margin-left:40px"}
![img](/img/apm_fs21/map2.png){: style="height:400px;width:250px;margin-left:40px"}

I open the newly assigned work order and follow the indicated touch point to Start the Work.  This will begin recording the time spent on these tasks.   
`Action:` Click Start Work in the work order that was generated from Monitor, then go into the Work Order.

![img](/img/apm_fs21/startwo.png){: style="height:400px;width:250px;margin-left:40px"}
![img](/img/apm_fs21/enterwo.png){: style="height:400px;width:250px;margin-left:40px"}

I can also see additional information including links in the long description that could take me back to monitor to see details of the anomaly.   
`Action:` Click on alert-based work order, Show the long description of the work order which includes hyperlinks back to Monitor.

![img](/img/apm_fs21/longdescr.png){: style="height:400px;width:250px;margin-left:40px"}
![img](/img/apm_fs21/monitorlinks.png){: style="height:400px;width:250px;margin-left:40px"}

By following the applications guidance, I tap on the blue highlighted TASK icon The number 3 is shown indicating there are 3 incomplete tasks. Here I can see the individual steps needed to complete the inspection. It’s important that as a new technician that I have clear instructions available to me to ensure I’m performing the correct steps and gathering the proper information needed to complete this work. In Maximo Mobile, it is all about presenting the right information, in the right place, at the right time. I’m able to track my progress by checking off the tasks as they are being performed.<br> 
`Action:` Select the List Number Icon under the details of the Work Order. Review the tasks assigned and click each line to mark complete. Then select Done.

![img](/img/apm_fs21/worktasks.png){: style="height:400px;width:250px;margin-left:40px"}
![img](/img/apm_fs21/worktasks2.png){: style="height:400px;width:250px;margin-left:40px"}

I have determined that the vibration is being caused by the pump skid being loose and has also noticed that this non-OEM damper is degraded and should probably be replaced. I add this to the comments in the work order work log that "Tightened a loose bolt on the skid. Consider replacing dampener"<br>
`Action:` Open the Worklog by clicking on the Worklog Icon next to the List Number Icon that we were just working in. Type in the description of comments.

![img](/img/apm_fs21/worklog.png){: style="height:400px;width:250px;margin-left:40px"}

## Close Work Order
I then need to record the failure information so that accurate data on the cause and remedy for this problem is available to support future analysis.  This information gathering is invaluable for our solutions Health, and Predict as it provides rich qualitative data from the human-in-the-loop, to supplement our precise quantitative data coming from Monitor, to pinpoint exactly how, why, and when failures occurred. These failure codes for excessive vibration can now be used to update health and failure prediction dates later by a Reliability Engineer.<br>
`Action:` Select Report Work Icon in same view of the other icons. Add Failure Class ‘Pump Failures’, Problem ‘Stopped’, Cause ‘Vibration’ and Remedy ‘Replaced Part’. 

![img](/img/apm_fs21/failurereport.png){: style="height:400px;width:175px;margin-left:40px"}
![img](/img/apm_fs21/failure1.png){: style="height:400px;width:175px;margin-left:40px"}
![img](/img/apm_fs21/failure2.png){: style="height:400px;width:175px;margin-left:40px"}

I want to also record the time it took to execute the steps of the WO and complete the WO. This data will help future planners and schedulers to estimate how long work like this typically takes, and more efficiently plan and assign these types of jobs.<br>
`Action:` Add time or stop the clock and close out the work order by selecting Complete work.

![img](/img/apm_fs21/timecard1.png){: style="height:400px;width:250px;margin-left:40px"}
![img](/img/apm_fs21/timecard2.png){: style="height:400px;width:250px;margin-left:40px"}


I will now hand it over to the reliability engineer to do some further analysis since the technician is only tasked with  working on specific assets in their care whereas the reliability engineer is looking across all sites/pumps.
 


