# Manage - Mobile Demo

!!! note
    Please follow the `Action` statements to navigate the steps and perform the lab.

## Service Request to Work Order

Within Manage EAM, the newly created Service Request can be automated into a WO, where a manual review by a supervisor could occur where they can drill into related history records against the PUMP, they can also link directly to the monitor dashboard to review the details of the anomaly/alert.  Part of the evaluation may or may not give enough information to know exactly what needs to be addressed, so in this case an inspection should be performed. The supervisor can approve the work order and assign the appropriate resource.

## Execute Work Order
As a technician, I can login to Maximo Mobile and from the navigation page, tap My Schedule to see work that has been assigned to me whether I’m in the break room, on the other side of the plant, or even offline.<br>
`Action:` Go into Maximo Mobile, click My Schedule. 

I see a new work order assigned to me, which is presented to me in order of priority so that I am focused on the right job at any given time in my shift. I can look at all my work in a list, or use the map view to see work nearby and perform additional tasks like route optimization so I don’t waste time going to the wrong location.   The location information can help direct me to the proper asset within the plant to perform the work order tasks.<br>
`Action:` Click on the map view.

I open the newly assigned work order and follow the indicated touch point to Start the Work.  This will begin recording the time spent on these tasks.   
`Action:` Click Start now in the work order that was generated from Monitor.


I can also see additional information including links in the long description that could take me back to monitor to see details of the anomaly.   
`Action:` Click on alert-based work order, Show the long description of the work order which includes hyperlinks back to Monitor.


By following the applications guidance, I tap on the blue highlighted TASK icon The number 3 is shown indicating there are 3 incomplete tasks. Here I can see the individual steps needed to complete the inspection. It’s important that as a new technician that I have clear instructions available to me to ensure I’m performing the correct steps and gathering the proper information needed to complete this work. In Maximo Mobile, it is all about presenting the right information, in the right place, at the right time. I’m able to track my progress by checking off the tasks as they are being performed.<br> 
`Action:` Review the tasks assigned and click each line complete.

I have determined that the vibration is being caused by the pump skid being loose and has also noticed that this non-OEM damper is degraded and should probably be replaced. I add this to the comments in the work order work log that "Tightened a loose bolt on the skid. Consider replacing dampener"<br>
`Action:` Open the worklog by clicking on the worklog touchpoint and type in the description 

## Close Work Order
I then need to record the failure information so that accurate data on the cause and remedy for this problem is available to support future analysis.  This information gathering is invaluable for our solutions Health, and Predict as it provides rich qualitative data from the human-in-the-loop, to supplement our precise quantitative data coming from Monitor, to pinpoint exactly how, why, and when failures occurred. These failure codes for excessive vibration can now be used to update health and failure prediction dates later by a Reliability Engineer.<br>
`Action:` Add Failure Class ‘PUMPS’, Problem ‘STOPPED’, Cause ‘VIBE’ and Remedy ‘REPLDAMP’. 

I want to also record the time it took to execute the steps of the WO and complete the WO. This data will help future planners and schedulers to estimate how long work like this typically takes, and more efficiently plan and assign these types of jobs.<br>
`Action:` Add time or stop the clock and close out the work order.


I will now hand it over to the reliability engineer to do some further analysis since the technician is only tasked with  working on specific assets in their care whereas the reliability engineer is looking across all sites/pumps.
 


