#  Connecting a Physical Device
Now that you have done some initial exploring of the IoT Platform and you have connected a simulated device, it’s time to connect a real, physical device. For the purposes of this hands-on exercise you will use a “Nordic Thingy.”

Learn more about the Nordic Thingy and its various sensors here:
https://www.nordicsemi.com/Software-and-tools/Prototyping-platforms/Nordic-Thingy-52

## Connect Nordic Thingy to Network
Let’s connect the Thingy to your laptop via Bluetooth. Google Chrome has a built in Bluetooth listener.  Using the connectivity page below you can connect to the internet and the Maximo Asset Monitor Cloud Service.   

1.  Carefully remove the rubber overlay to find the power switch next to the micro-usb port.  A blue light should illuminate when the device is powered up.

2.  Power on the Nordic Thingy. Push the tiny switch to the left of the micro-web port

3.  Use Bluetooth in the Google Chrome Browser to connect your device to the internet.  Open a tab with this web address:

[https://nrf52t.mybluemix.net/?edit](https://nrf52t.mybluemix.net/?edit).

4.  This method will only work on  you’ll need to revisit if you get disconnected at any point. Click the blue “Connect” button.  

5. In the list of devices, find the one matching your device, select it and click “Pair.” You may need to rename the Thingy if you are in close range with others also using their own Thingy.

6. 	Once paired, you should see the following screen which shows IoTP connection status as well as some of the sensor values coming from the Thingy.

7. 	The top righthand corner button will say “connecting”. Notice the IoTP indicator does not have a checkmark. This is because it is not yet connected to the IoT Platform. To connect it up, copy or make note of the Thingy name and, in a new tab or window, navigate to the IoT Platform service.

## Connect Nordic Thingy to Maximo Asset Monitor
The Nordic Thingy has connectivity to the internet.  You must first register devices with Maximo Asset Manager before they can securely send and persist data there.

1.  Navigate to and bookmark the Maximo Asset Monitor Dashboard page.  You will use this throughout the lab.

[https://dashboard-beta.connectedproducts.internetofthings.ibmcloud.com/preauth?tenantid=Monitor-Demo&APM=true](https://dashboard-beta.connectedproducts.internetofthings.ibmcloud.com/preauth?tenantid=Monitor-Demo&APM=true)

2.	Log in to the platform. After logging in, you’ll land in “Dashboards.”

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
In this next section you will take a look at how you can create physical\logical interfaces, define conditional rules and notifications. You will create an alert notification when the Nordic Thingy has an error condition.

2.1  First, make sure your Nordic Thingy is turned on and actively sending sensor data to the IoTP. You may need to reconnect it using this web link: https://nrf52t.mybluemix.net/?edit

2.2  You can check it is connected by clicking the “Browse” tab in the IoTP and searching the devices list for device status and recent events.

2.3  Navigate to the device type for your Thingy and click on the “Interfaces” tab. Make sure “Advanced Flow” is selected and click the “Create Physical Interface” button.

2.4 Leave the default name for the physical interface and then click “Next.” Click the “+ Create event type” button on the next page. If your Nordic Thingy is still actively sending events, then you should see the “status” event show up. If the ‘status’ event does not automatically appear , check the connectivity back in ‘Browse’ in the device list. Select it and then click “Add.” Finally, click “Done” to complete the creation of the physical interfaces.

2.5 Next, click on the “+ Create Logical Interface” button to begin creating the logical interface. Leave the default name as is and click “Next.” Click the “+ Add Property” button, expand the “d” and select and save the “err” property.  

2.6  Let’s do the same for “temperature”, except this time we’ll use the mapping field to convert the temperature from Celsius to Fahrenheit. So, add property and select temperature. Then in the mapping field, click the pencil to edit and add the following equation: d.temperature * 1.8 + 32. Notice that to input the numbers “1.8” and “32” you have to first select the “Value” operator. If you switch the Advanced Editor button, you may run into syntax issues so be careful if you challenge yourself to type it that way.
Click the green check mark when complete and then click save.  

2.7  Add the remaining properties. You should see the following before clicking “Next.”

2.8 Click “Next” to move onto “Notifications.” Notifications allow you to take action when certain conditions occur.

2.8.1 Change the “State Update Notification” criteria to “State Changes.” Make sure to hit the “Apply” button to save changes.

2.8.2 Click the “Add Notification” button. We want to notify when the Thingy’s error condition is set to 1.
$state.err = 1
Enter the Name, description, criteria and condition as shown below. Then click “Apply” and “Done”.

2.9 The interface creation is almost complete. Back in the interface view, click the “Activate” button and activate the interfaces. If successful, you should see a green rocket ship icon next to each interface.

2.10  You can check to see if your interface is working, by browsing to your device, select the “State” tab and switch the interface to your newly created interface. Temperature should now be shown in Fahrenheit.
