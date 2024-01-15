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
    device  simulator script you will run in the next exercise. See image for [Event cache](img/i3.png) 

1.  Still in the Watson IoT Platform, go to the `Device Types` tab menu, search then select `pump_co`, 
![Interface](img/p2.png) 

2.  Click on the `Interface` tab menu and click `Create Physical Interface`button. Enter the name `pump_co_pi`, Click `Next`.
![Name Interface](img/p1a.png)

3.  Click `Create event type` button
![Create Events](img/p4.png)

44. If your pump simulator is sending data you can wait for the dialog to fill in with your event data.  Otherwise you can
set the payload by click on `Create event type` button.  ![Import](img/p2a.png) Add `Device Event Type` 
to the  `Physical Interface` by uploading a json file that contains a payload similar to the one below.  Replace `co` 
with your initials for your eventID.

    ```
    {
      "EventName": "event",
      "EventDescription": "Device event",
      "EventID": "pump_co",
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
![Import](img/p2b.png)  

6.  Click the `Add` button 

7.  Click the `Add Property` button.  You must change the `type` from string to `timestamp` for the `evet_timestamp`.  Click `Select` button.  
![Event cache](img/i3.png)

8. click the `3 dots` on the `evet_timestamp` row.
 
9. Click edit `pencil icon` 

10.  Click  select box for `Event` named.
![Event cache](img/p6.png)

11.  Click the check box next to `evt_timestamp` and change the `Event`,  `Data Type` to `String(Date Time)` 
![Event metrics](img/p7.png)

12.  Click `Done`.
![Event cache](img/p8.png)

13.  Click `Done`. Again.
![Event cache](img/p9.png)

You now are able to save the device data that is sent from any device to this Device Type physical interface named
 `pump_co_pi`.  Stay on the current page and continue to the next exercise below.  


## Create the Logical Interface
<a name="logical"></a>

Logical interfaces allow you to map the metrics from the physical device types into a single Entity Type for Monitor.

1.  Click `Create Logical Interface` button.
![Create Interface](img/p9.png)

2.  Change the default name `pump_co_li`, click `Next`.
![Name Interface](img/I1.png)

3.  Tick the `Allow Additional Properties` to `ON` and then  Click `Add Property` button. 
![Event cache](img/I2.png)

4. Click the `Select` button for the `evt_timestamp`.
![Change Timestamp](img/i3.png)

5. In the dialog `Type` field, select `String (date-time)` and click `Save` button.
![Timestamp](img/I4.png)

6. Click `Add Property` again for all the remaining metrics leaving the values as is shown below.
![evt_timestamp](img/I5.png)
![speed](img/I6.png)
![head](img/I7.png)
![pump_mode](img/I8.png)
![flow](img/I11.png)
![voltage](img/I11a.png))
![POWER](img/i11b.png))
![CURRENT](img/I12.png)

8. Click `Next`, click link `No event notifications` 
![Event cache](img/I13.png)

9. change to `All events` and click the `x` to close the dialog box.
![Event cache](img/I14.png)

10. Click `Apply`, then `Done`.
![Event cache](img/I15.png)

11. Click `Activate` twice.
![Event cache](img/I16.png)
![Event cache](img/I17.png)

12. Click `Done`.
![Event cache](img/I18.png)

You now are able to create dashboards and calculated metrics using the device data that is sent by any device into 
Monitor.  You must wait upto 10 minutes to start seeing your devices show up in Monitor.
