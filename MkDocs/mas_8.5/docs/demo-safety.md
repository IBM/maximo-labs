# Safety Lab (Under Construction)

Companies have policies on communicating with their lone workers.   These policies range from having lone technicians check in at periodic intervals or when then arrive/depart a job site.  Safety regulations require the lone worker to be provided a communication device and do not specify the regularity of the communication.  Thus, little insight to the safety and wellbeing of a lone worker is known and when assistance is needed, it often is known later than it could be.  Additionally, one of the top safety violations that clients are fined with is in regard to safety hazard communications.  Clients ask one question “How do I protect my lone workers”   

## Man Down Event

Now that the work order has been completed the technician, who is also a lone worker, is leave the work area.   While leaving the technician slips and falls because of moisture on the floor that was not easily detected due to low light.  The technician hits their head and is non-responsive.  The technician is equipped with wearable IoT sensors and additional IoT sensors are in the work environment.  The Sensor data is utilized by Maximo Safety to detect client identified safety risk concerns with near real time analytical rules that go beyond what a single sensor can do by aggregating all the sensor data to provide necessary context.  In this case one sensor has detected a fall, another sensor has detected no movement for 30 seconds and another has detected an elevated or abnormal heart rate and triggers a “Man Down “event with the event location.
 
The Man Down event is communicated by the Event action (Shield) engine to the technician’s supervisor, which determines immediate action to get assistance for the lone technician.  Time matters when someone is injured.  Additionally, the event and location are provided to the Maximo Safety system for historical analytics.  

## Hot Spots
 
As the Safety Officer, I'll use Maximo Safety to identify areas of concern based on the identified Hot Spots so those areas can be investigated, and action taken to avoid future incidents. 
`Action:`  Go to Maximo Safety, examine the “HotSpots” on the Dashboard.  

<!-- ![img](/img/mas_8.5/empty.png){:style="height:400px;width:800px"} -->
 
With the Hotspots the Safety Officer can determine areas of high risk, based upon the number of Safety events captured.  This leading metric may be identifying actual incidents as well as near misses.  If you minimize the “near misses” you minimize the number of minor and major events and thus the number of injuries.
`Action:` Filter on identified Location to focus on that particular area.  Look at trend chart to determine the top events in that area are “fall detection” and “man down”. 

<!-- ![img](/img/mas_8.5/empty.png){:style="height:400px;width:800px"} -->
 
The map view shows the exact location of the safety events, overlayed with the site floor plans.<br>   
`Action:` Create a work order in MAS to investigate the area of concern for safety events.

<!-- ![img](/img/mas_8.5/empty.png){:style="height:400px;width:800px"} -->
 
Upon investigation, it is discovered that there is a slippery surface due to an HVAC system causing condensation and a minor leak that is collecting in the AM when the system is first regulating the temperature for the environment.   Investigators knew exactly where to look at the time to look.  Additionally, poor lighting left this moisture undetected.  By addressing, the safety incidents were reduced saving the company 40K per actual incident.  

<b>TRANSITION:</b> I will now hand it over to the reliability engineer to do some further analysis since the technician is only tasked with working on specific assets in their care whereas the reliability engineer is looking across all sites/pumps.

