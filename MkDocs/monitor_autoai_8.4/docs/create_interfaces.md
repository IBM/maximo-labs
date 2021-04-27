# Create Physical & Logical Interfaces

IoT device data must be mapped from physical devices that are reading the metrics on assets to a logical interfaces that 
represent that whole asset or system you will monitor. Physical Interfaces are what are used to save the 
device data into the Monitor.   Logical Interfaces are what Monitor uses to create asset types and assets 
with their corresponding metric values. In this exercise you will use Monitor to create:

-  [Create the Physical Interface](#physical)
-  [Create the Logical Interface](#logical)

## Create the Physical Interface
<a name="physcial"></a>


!!! note 
    Alternate option for step 5 is to click `Use Last Event Cache` enter the name of the device ID `111137F8`. Which ever you 
    have in your data.  `pump_co` event will appear if you already have the simulator running. This corresponds to the Python 
    device  simulator script you will run in the next exercise. See image for [Event cache](/img/monitor_autoai_8.4/i3.png) 

1.  Still in the Watson IoT Platform, go to the `Device Types` tab menu, search then select `pump_co`, 
![Interface](/img/monitor_autoai_8.4/p2.png) 

2.  Click on the `Interface` tab menu and click `Create Physical Interface`button. Enter the name `pump_co_pi`, Click `Next`.
![Name Interface](/img/monitor_autoai_8.4/p1a.png)

3.  Click `Create event type` button
![Create Events](/img/monitor_autoai_8.4/p4.png)

4. Click on `Create event type` button.  ![Import](/img/monitor_autoai_8.4/p2a.png) Add `Device Event Type` to the `Physical Interface` by uploading a json file that contains a payload like this
    ```
    {
      "EventName": "event",
      "EventDescription": "Device event",
      "EventID": "pump_co_11111096",
      "Payload": {
          "evt_timestamp": "2020-01-19T03:59:53.03Z",
          "speed": 1124,
          "head": 54.424,
          "pump_mode": "a",
          "flow": 115.934,
          "voltage": 274,
          "POWER": 2.664,
          "CURRENT": 8.69
      }
    }
    ``` 

5. In the dialog click on `Import` link  and drag the event_template.json file into the dialog.
![Import](/img/monitor_autoai_8.4/p2b.png)  

6.  Click the `Add` button 

7.  Click the `Add Property` button.  You must change the `type` from string to `timestamp` for the `evet_timestamp`.  Click `Select` button.  
![Event cache](/img/monitor_autoai_8.4/i3.png)

8. click the `3 dots` on the `evet_timestamp` row.
 
9. Click edit `pencil icon` 

10.  Click  select box for `Event` named.
![Event cache](/img/monitor_autoai_8.4/p6.png)

11.  Click the check box next to `evt_timestamp` and change the `Event`,  `Data Type` to `String(Date Time)` 
![Event metrics](/img/monitor_autoai_8.4/p7.png)

12.  Click `Done`.
![Event cache](/img/monitor_autoai_8.4/p8.png)

13.  Click `Done`. Again.
![Event cache](/img/monitor_autoai_8.4/p9.png)

You now are able to save the device data that is sent from any device to this Device Type physical interface named
 `pump_co_pi`.  Stay on the current page and continue to the next exercise below.  


## Create the Logical Interface
<a name="logical"></a>

Logical interfaces allow you to map the metrics from the physical device types into a single Entity Type for Monitor.

1.  Click `Create Logical Interface` button.
![Event cache](/img/monitor_autoai_8.4/p9.png)

2.  Change the default name `pump_co_li`, click `Next`.
![Event cache](/img/monitor_autoai_8.4/i1.png)

3.  Click the `Add Property` button 
![Event cache](/img/monitor_autoai_8.4/i2.png)

4. Click the `Select` button for the `evet_timestamp`.
![Event cache](/img/monitor_autoai_8.4/i3.png)

5. In the `Add Property` dialog select `String (date-time)` and click `Save` button.
![Timestamp](/img/monitor_autoai_8.4/i4.png)

6. Click `Add Property` again for all the remaining metrics leaving the values as is shown below.
![evt_timestamp](/img/monitor_autoai_8.4/i5.png)
![speed](/img/monitor_autoai_8.4/i6.png)
![head](/img/monitor_autoai_8.4/i7.png)
![pump_mode](/img/monitor_autoai_8.4/i8.png)
![flow](/img/monitor_autoai_8.4/i11.png)
![voltage](/img/monitor_autoai_8.4/i11a.png))
![POWER](/img/monitor_autoai_8.4/i11b.png))
![CURRENT](/img/monitor_autoai_8.4/i12.png)

7.  Tick the `Allow Additional Properties` to `ON` and then  Click `Add Property` button. 
![Event cache](/img/monitor_autoai_8.4/i2.png)

8. Click `Next`, click link `No event notifications` 
![Event cache](/img/monitor_autoai_8.4/i14A.png)

9. change to `All events` and click the `x` to close the dialog box.
![Event cache](/img/monitor_autoai_8.4/i14.png)

10. Click `Apply`, then `Done`.
![Event cache](/img/monitor_autoai_8.4/i15.png)

11. Click `Activate` twice.
![Event cache](/img/monitor_autoai_8.4/i16.png)
![Event cache](/img/monitor_autoai_8.4/i17.png)

12. Click `Done`.
![Event cache](/img/monitor_autoai_8.4/i18.png)

You now are able to create dashboards and calculated metrics using the device data that is sent by any device into 
Monitor.  You must wait upto 10 minutes to start seeing your devices show up in Monitor.
