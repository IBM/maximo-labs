# Create Devices

In this exercise you will crete the devices that will store the simulated pump data being sent to Monitor.  [Create two pump Devices](#createdevices) 
named `11111096` and `111137F8` for the  Device Type named `pump_co`. 

!!! Note
    Remember to replace `co` in the device type name with your own initials.

## Create Devices
<a name="createdevices"></a>

1.  Stay in the Monitor Watson IoT Platform service, go to the `Devices` menu 
![Add Device](/img/monitor_autoai_8.4/c06.png)

2.  Click `Add Device` ![Add Device](/img/monitor_autoai_8.4/c07.png) .

3.  On the `Add Device` page, select your just-created `pump_co` as `Device Type` and enter `11111096`in `Device ID`.   After 
adding that device you will repeat the following steps for a second device with ID `111137F8`  Replace `co` with your 
initials for the device type you created.  Click `Next`. ![Next](/img/monitor_autoai_8.4/c08.png)

4.  On the `Device Information` page, leave the `Serial Number` value blank and enter the Device ID `11111096`
and other information you want, click Next. ![Next](/img/monitor_autoai_8.4/c09.png)

5.  Depending on the version of IOTP the `Groups` tab may be present, accept the defaults, click `Next`. ![Next](/img/monitor_autoai_8.4/c10.png)

6.  On the `Security` page, accept the defaults, click `Next`. ![Next](/img/monitor_autoai_8.4/c10.png)

7.  On the `Summary` page, accept the defaults, click `Finish`. ![Next](/img/monitor_autoai_8.4/c11.png)

8.  Save the device summary token information.  You will need it later when you connect your simulator to send data.

    ```
    Organization ID  your org id
    Device Type pump_co
    Device ID 111137F8
    Authentication Method use-token-auth
    Authentication Token  your token
    
    Organization ID your org id
    Device Type pump_co
    Device ID 11111096
    Authentication Method use-token-auth
    Authentication Token your token
    ```
9.  Click `Back` and repeat above steps 1. to 6. for 1 more Pump with `Device ID` = `111137F8`. 

10.  On `Devices`, Click `Browse` tab menu.  Click the funnel icon.  Enter `pump_co` in the Search field for `Device Type`,
and you will now see your 2 pump `Devices` for `pump_co`  ![Summary](/img/monitor_autoai_8.4/c14.png).

11.  You have now created the required `pump_co` Device Type and the 2 pump devices `11111096` ![Back](/img/monitor_autoai_8.4/c12.png) 
and `111137F8` ![Browse](/img/monitor_autoai_8.4/c13.png)  we will use 
in this lab.