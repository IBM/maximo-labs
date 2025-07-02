# Objectives
In this Exercise you will learn how to:

* Setup Alert KPI at device type

---
#### Before you begin  
This Exercise requires that you have:

* Review the Monitor Device Type and Devices lab to gain a foundational understanding of device types and devices.
* Set up a sample device type and a corresponding device.

In this lab, a device type has been configured with two metrics: temperature and pressure.
![setup alert](img/alert-setup0.png)</br>

A sample device has also been added to this device type, and the simulator has been started.
![setup alert](img/alert-setup1.png)</br>

---

In this exercise, you will configure an Alert KPI for the device type.

#### Alert Setup

Navigate to the device type you created. click on the calculated metrics tab.
![setup alert](img/alert-setup3.png)<br>

Click on the "Add calculated metrics" button.
![setup alert](img/alert-setup4.png)</br>

In the search box, type "Alert".
![setup alert](img/alert-setup5.png)</br>

Select AlertHighValue from the list and click "Select".
![setup alert](img/alert-setup6.png)

Choose "All devices of this type" and click "Next".
![setup alert](img/alert-setup7.png)</br>    

Select the input item for which you want to configure the alert. Specify the threshold value, severity, and status. Click on "Next".
![setup alert](img/alert-setup8.png)</br>

Provide a name for the alert and click "Create".
![setup alert](img/alert-setup9.png)</br>

You should now see the newly created alert under the Calculated Metrics section as below.
![setup alert](img/alert-setup10.png)</br>

Setting up an alert at the device type level automatically applies the same alert configuration to all devices associated with that type. You will also see the same calculated metric reflected at the individual device level.

You should able to see the same calculated metrics created for device as well.
![setup alert](img/alert-setup11.png)</br>

Pipeline will run and produce an alert after sometime when the threshold value is exceeded.

!!! tip "Tips"
    In this exercise, we used the AlertHighValue KPI. Similarly, you can explore other alert types such as:</br>
    - AlertLowValue</br>
    - AlertExpression</br>
    - AlertOutOfRange. </br>
    You can read more about these alert types [here](https://www.ibm.com/docs/en/masv-and-l/maximo-monitor/cd?topic=data-alerts){target=_blank}.


---
Congratulations you have successfully setup Alerts at device type level 🤗.</br>
