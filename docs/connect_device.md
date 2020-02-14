#  Connecting a Physical Device
Now that you have done some initial exploring of the IoT Platform and you have connected a simulated device, it’s time to connect a real, physical device. For the purposes of this hands-on exercise you will use a “Nordic Thingy.”

Learn more about the Nordic Thingy and its various sensors here:
https://www.nordicsemi.com/Software-and-tools/Prototyping-platforms/Nordic-Thingy-52

## Connect Nordic Thingy to the Internet
Let’s connect the Thingy to the internet using  your Chrome on your computer. You first need to pair the Thingy via Bluetooth to your computer.  Google Chrome has a built in Bluetooth listener.  Using the connectivity page below you can connect to the internet and the Maximo Asset Monitor Cloud Service.   

1.  Carefully remove the rubber overlay to find the power switch next to the micro-usb port.  A blue light should illuminate when the device is powered up.

2.  Power on the Nordic Thingy. Push the tiny switch to the left of the micro-web port

3.  Use Bluetooth in the Google Chrome Browser to connect your device to the internet.  Open a tab with this web address:  [https://nrf52t.mybluemix.net/?edit](https://nrf52t.mybluemix.net/?edit).

4.  This method will only work on  you’ll need to revisit if you get disconnected at any point. Click the blue “Connect” button.  

5. In the list of devices, find the one matching your device, select it and click “Pair.” You may need to rename the Thingy if you are in close range with others also using their own Thingy.

6. 	Once paired, you should see the following screen which shows IoTP connection status as well as some of the sensor values coming from the Thingy.

7. 	The top righthand corner button will say “connecting”. Notice the IoTP indicator does not have a checkmark. This is because it is not yet connected to the IoT Platform. To connect it up, copy or make note of the Thingy name and, in a new tab or window, navigate to the IoT Platform service.

## Connect Nordic Thingy to Maximo Asset Monitor
The Nordic Thingy has connectivity to the internet.  You must first register devices with Maximo Asset Manager before they can securely send and persist data there.

1.  Navigate to and bookmark the Maximo Asset Monitor Dashboard page.  You will use this throughout the lab. [https://dashboard-beta.connectedproducts.internetofthings.ibmcloud.com/preauth?tenantid=Monitor-Demo&APM=true](https://dashboard-beta.connectedproducts.internetofthings.ibmcloud.com/preauth?tenantid=Monitor-Demo&APM=true)

2.	Log in to the Monitor. After logging in, you’ll land in “Dashboards.”

3.  Click the “Connect” tab (third icon in the side menu)

4.  Please open and refer to the email sent to you by Paulina Thomas concerning your pre-made Device ID/Thingy name, Device Type, and Authentication Token. Please search and confirm that your Device ID and Device Type are present.

5. 	Navigate back to the Thingy page showing the sensor values and place the following into the “Token” field:

```
<Auth Token>:<Device Type >:<Org ID>
```

Example:
```
+A0@WxGamw*wcGiI+:smith_thingy:eefdu2
```
6.  Click the “Write” button to write the token to the Thingy. You should see the IoTP indicator turn green if successful

7.  You should also now see data flowing from the Thingy to your corresponding Device ID in the IoTP back in the devices tab. Flip the Thingy upside down to create an error condition. It will beep and the light will turn red. Click on one of the rows to see the vent payload json file. Notice the “err” value in the payload changes to 1.

8. Press the large black button on the top of the Thingy to clear the error.

# Interfaces, Rules and Notifications
In this next section you will take a look at how you can create physical and logical interfaces, define conditional [rules and notifications](https://www.ibm.com/support/knowledgecenter/en/SSQP8H/iot/platform/reference/embeddedrules/index.html). After you will create an alert notification when the Nordic Thingy has an error condition.

1.  First, make sure your Nordic Thingy is turned on and actively sending sensor data to the IoTP. You may need to reconnect it using this web link: https://nrf52t.mybluemix.net/?edit

2. You can check it is connected by clicking the “Browse” tab in the IoTP and searching the devices list for device status and recent events.

3.  Navigate to the device type for your Thingy and click on the “Interfaces” tab. Make sure “Advanced Flow” is selected and click the “Create Physical Interface” button.

4.  Leave the default name for the physical interface and then click “Next.” Click the “+ Create event type” button on the next page. If your Nordic Thingy is still actively sending events, then you should see the “status” event show up. If the ‘status’ event does not automatically appear , check the connectivity back in ‘Browse’ in the device list. Select it and then click “Add.” Finally, click “Done” to complete the creation of the physical interfaces.

5.  Next, click on the “+ Create Logical Interface” button to begin creating the logical interface. Leave the default name as is and click “Next.” Click the “+ Add Property” button, expand the “d” and select and save the “err” property.  

6.  Let’s do the same for “temperature”, except this time we’ll use the mapping field to convert the temperature from Celsius to Fahrenheit. So, add property and select temperature. Then in the mapping field, click the pencil to edit and add the following equation: d.temperature * 1.8 + 32. Notice that to input the numbers “1.8” and “32” you have to first select the “Value” operator. If you switch the Advanced Editor button, you may run into syntax issues so be careful if you challenge yourself to type it that way.
Click the green check mark when complete and then click save.  

7.  Add the remaining properties. You should see the following before clicking “Next.”

8. Click “Next” to move onto “Notifications.” Notifications allow you to take action when certain conditions occur.

9. Change the “State Update Notification” criteria to “State Changes.” Make sure to hit the “Apply” button to save changes.

10.  Click the “Add Notification” button. We want to notify when the Thingy’s error condition is set to 1.
$state.err = 1
Enter the Name, description, criteria and condition as shown below. Then click “Apply” and “Done”.

11.  The interface creation is almost complete. Back in the interface view, click the “Activate” button and activate the interfaces. If successful, you should see a green rocket ship icon next to each interface.

12. You can check to see if your interface is working, by browsing to your device, select the “State” tab and switch the interface to your newly created interface. Temperature should now be shown in Fahrenheit.

# Process Data
The remaining sections of these hands-on materials will focus on the Analytics Service of the IoT Platform. The Analytics Service is an add- on component that extends the functionality of the IoT Platform to include analytics features. It can be used to calculate essential key performance indicators for your organization from your IoT and non-IoT data.

1.  Before you can begin using the Analytics Service, you need to make sure you have a device type with an active physical and logical interface and that you have at least one device of that type sending data. If you completed the previous exercises, then you should already have a device actively sending data through a physical and logical interface.

2.  You can check if your device is connected and sending data through an interface by browsing devices in the IoTP and checking your devices status, recent events and state. You should see values update when look at the state interface.

3. When device data flows through a physical and logical interface, the IoT Platform then flows that data into the Data Lake within DB2. It creates a table called IOT_<Device Type Name>. Go back to your Monitor webpage (https://dashboard-beta.connectedproducts.internetofthings.ibmcloud.com/preauth?tenantid=Monitor-Demo) then click the “Usage” tab . Next, click “View Details” next to Db2 Warehouse on Cloud, and click “Launch.”

4. Copy and paste the username and password from the “View Details” window into the Db2 login page.

5. You will see a second log in prompt and an “Attention” banner. Ignore the second prompt to change the password. This is a glitch and will break the instance. Click on the top left hamburger buttom.  Under Explore click tables -> BLUADMIN. Find your IOT_<Device Name> table. Click the “View Data” button to see the data.  

6.  Now that you know the data is successfully flowing into the Data Lake, it is time to take a look at that data in the Analytics Service. Back in the IoTP, click on the “Monitor” tab to view the data lake and access the Analytics Service feature. Here you can see all of the entity types (device types) and metrics (logical interface properties) being collected and analyzed.

7.  Hover over your entity type and click the “View” button to explore your entities.

8.  On the page for your entity type, you should see your device with the same name in a list format under a heading “Instance Dashboards.” Select it, then click on the “Metrics” tab on the right-hand side. Here you can explore charts showing the values of the properties over time. It may take it several minutes to accrue enough data to visualize, take a break and return after ten or so minutes. Scroll down a bit to view the charts for pressure and temperature.

9.  The above charts show data for one device at a time. What if we want to view aggregate data across all devices of the same entity type? You can use the “Data” tab to see that information. Navigate back to the landing page for your entity type. Click on the “Data” tab to view aggregate data for your entity type.

10.  In the data view on the left-hand side, select the “battery” metric. The chart on the right will show the minimum and maximum battery percentage across all entities. This chart fills up over time.

11.  Take some time to explore the data for some of the other metrics. Flip your Thingy over to cause an error condition. After a few minutes, you should see the chart for the “err” metric updated showing the value change.

In the next module you will creating a Monitor Dashboard to monitor your Thingy.
