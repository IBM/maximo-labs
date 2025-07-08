# Objectives
In this Exercise you will learn how to add and remove locations in Cisco Webex devices.</br>

---
*Before you begin:*  
This Exercise requires that you have:

1. completed the pre-requisites required for [all labs](prereqs.md)
2. completed the previous exercises

---
 
# Assign Location to Cisco Webex device

Please again go to Cisco Webex integration page. Click on `Configure device subscription`.</br>
![Cisco Webex device](img/assign_location_11.png)</br></br>

It will show all available devices and subscribed devices. From there, we get an option `Assign location` in the ellipses icon to assign the Cisco Webex device to a location.</br>
![Cisco Webex device](img/assign_location_1.png)</br></br>

On click `Assign location`, we get a pop-up to assign device to a location in the Real Estate and Facilities location hierarchies:</br>
![Assign Location](img/assign_location_2.png)</br></br>

After we assign a Webex device to a location. We can view that in Monitor Hierarchies as well as in the `Devices` section of that particular location.</br>

Expand Setup under the Monitor setup section in the left menu and select `Hierarchies`:</br>
![Add new device](img/assign_location_3.png)</br></br>

In `Hierarchies`, we can check `Location` in below manner.</br>

`Organisation` -> `Site` -> `System` -> `Location`.</br>

Under `Location` where we have assigned Cisco Webex device, that specific device will be incorporated.</br>
![Select Location](img/assign_location_4.png)</br></br>


# View Location in Cisco Webex device

To check `Location` under `Device`, we need to click that device under `Hierarchies`. It will redirct to device page in Monitor. Select `Cisco_Webex: BigBang` device which we check above steps. It will open device page.</br>
![Select Device](img/assign_location_9.png)</br></br>

Here go to `Overview` tab, under `Relationship` section we can see all assign location.</br>
![Select Location](img/assign_location_8.png)</br></br>

# View Cisco Webex device in Location

We can even see `Device` under `Location` also. For it again we need to go to `Hierarchies` select location `Charlotte Watson Center`:</br>
![Select Location](img/assign_location_4.png)</br></br>

It will redirct to `Location` page in Monitor.</br>
![Select Device](img/assign_location_10.png)</br></br>

Now we need to go `Devices` tab under it. It will show all assigned devices.</br>
![Select Device](img/assign_location_5.png)</br></br>

---

# Unassign Location to Cisco Webex device

We can `remove` device from location. For it we need to select checkbox of assign device in Location `Device` tab. Click on `remove` button. It will unassign device from that location and vice versa:</br>
![Select Device](img/assign_location_6.png)</br></br>

Same way we can remove `Location` from `Device` also. In `Device` there is one `Overview` tab. Under overview there is one `Relationship` section which contains `Asset` and `Location` details for that device. We can unassign location by clicking `remove` from there.</br>
![Select Location](img/assign_location_7.png)</br></br>

---
Congratulations you have successfully add and remove location in Cisco Webex device to your Cisco Webex integration.</br>
