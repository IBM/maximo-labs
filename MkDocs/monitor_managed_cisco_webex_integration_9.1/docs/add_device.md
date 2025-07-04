# Objectives
In this Exercise you will learn how to add the Cisco Webex device in Monitor.

---
*Before you begin:*  
This Exercise requires that you have:

1. completed the pre-requisites required for [all labs](prereqs.md)
2. completed the previous exercises

---

# Subscribe to Cisco Webex device

Once we successfully create Cisco Webex configurations, we will establish connection with the Webex control hub. This will internally trigger the schedular to fetch Webex devices from Webex control hub.</br>

!!! tip
    It will take upto 15 minutes to fetch device list from Webex control hub.</br>

Once Webex devices are fetched from Webex control hub. We can `Subscribe` device using three dot in right side and It will add in Device Type created by Cisco Webex integration.</br>
![Subscribe Cisco Webex](img/add_device_1.png)</br></br>

It will show `Subscribed` to those devices which we subscribed in above step.</br>
![Subscribe Cisco Webex](img/add_device_2.png)</br></br>

!!! note
    The type of device type will be same as Integration name mentioned in Cisco Webex. This is automatically handled by Monitor.</br>

</br>
To check `Devices` in device type expand Setup under the Monitor setup section in the left menu and select `Device types`:</br>
![Search for Cisco Webex](img/add_device_3.png)</br></br>

Search for `Cisco Webex` in device types and select the `Cisco_Webex`:</br>
![Select Cisco Webex](img/add_device_4.png)</br></br>

</br>
Once these devices are subscribed, we will be able to get the people presence count in the Metrics. We will be able to see the Trends and the Data table which will have the peopleCountCurrent along with the timestamp. For it we need to click that device visible in above image and go to `Data` tab and expand `Metric` and select it.</br>

`people presence count` Trands:</br>
![Configure Device ID](img/add_device_5.png)</br></br>

`people presence count` data table:</br>
![Configure Device ID](img/add_device_6.png)</br></br>

You have now successfully `Subscribed` the Cisco Webex device to Monitor:

---
Congratulations you have successfully added Cisco Webex device to your Monitor from Cisco Webex integration.</br>