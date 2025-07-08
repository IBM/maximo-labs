# Objectives
In this Exercise you will learn how to add/edit devices in device type.

---
*Before you begin:*  
This Exercise requires that you have:

1. completed the pre-requisites required for [all labs](prereqs.md)
2. completed the previous exercises
 
---

## Add Device
There are two ways to add device :</br>
We can add Device in Device Types navigation.</br>
We can create Device through Devices Navigation.</br>
Click on `Add Device +` button.
![Add Device](img/add_edit_device01.png)</br></br>

![Add Device](img/add_edit_device02.png)</br></br>

It will show device creation through device library or custom device.Select add custom device and click `Continue`.
![Add Device](img/add_edit_device03.png)</br></br>

It will redirect to Add Device page where device Id and token type is required.Token type can be auto-generated or custom.Also need to mention Device Type name and click `Save`.
![Add Device](img/add_edit_device04.png)</br></br>
!!! note "Note"
     The device type will not be pre-populated when creating a device via the Devices navigation. If it is not automatically selected, please choose the appropriate device type from the dropdown menu.

Device will be available in specified Device Type.
![Add Device](img/add_edit_device05.png)</br></br>


## Add Second Device

Follow the steps outlined above to add a second device to the device type. Once completed, the configuration will appear as shown below.
![Add Device](img/add_edit_device06.png)</br></br>

## Edit Device

Click on the device that you wish to edit.
![Edit Device](img/add_edit_device07.png)</br></br>

Go on Overview page of device.
![Edit Device](img/add_edit_device08.png)</br></br>

It will provide device details and its relationship with asset and location. Click on `Edit`.
![Edit Device](img/add_edit_device09.png)</br></br>

We can edit device alias, description and also enable data simulator through edit option in Overview.Finally, click `Save` to modify data for the device.
![Edit Device](img/add_edit_device10.png)</br></br>

Device alias and description successfully updated.
![Edit Device](img/add_edit_device11.png)</br></br>

## Data Simulation

!!! note "Note"
     Using Data simulator we receive simulated data to the device.

Go on Overview page of device. Click on `Edit`.
![Data Simulation](img/add_edit_device12.png)</br></br>

Toggle the 'Data Simulator' switch to enable it. Then, specify the frequency by entering the desired number of events per minute.
![Data Simulation](img/add_edit_device13.png)</br></br>

Data Simulation is Enabled now for this device.
![Data Simulation](img/add_edit_device14.png)</br></br>

The simulated event payload will appear under the 'Recent Events' section.
![Data Simulation](img/add_edit_device15.png)</br></br>

## View Metric data

Navigate to the Data page of the device. Click the arrow next to Metric to expand the list.
![View Metric](img/add_edit_device16.png)</br></br>

Select the metric name for which you want to view data. Click on the Data Table to display the metric data.
![View Metric](img/add_edit_device17.png)</br></br>

Data is available for multiple metrics and can be reviewed individually.
![View Metric](img/add_edit_device18.png)</br></br>

![View Metric](img/add_edit_device19.png)</br></br>

![View Metric](img/add_edit_device20.png)</br></br>

## View Dimension data

Navigate to the Data page of the device. Click the arrow next to Dimension to expand the list.
![View Dimension](img/add_edit_device21.png)</br></br>

Select the dimension name for which you want to view data.
![View Dimension](img/add_edit_device22.png)</br></br>
![View Dimension](img/add_edit_device23.png)</br></br>

Alternatively, you can navigate to the device's Dimension page to view dimension data.
![View Dimension](img/add_edit_device24.png)</br></br>


## Edit Device Dimension

Navigate to the Dimension page of the device. Click on Edit icon.
![Edit Dimension](img/add_edit_device25.png)</br></br>

The default value displayed here reflects the dimension value configured at the device type level. To update it, modify the dimension value as needed and click the `Save` button to apply the changes.
![Edit Dimension](img/add_edit_device26.png)</br></br>

The dimension details have been successfully updated for this device.
![Edit Dimension](img/add_edit_device27.png)</br></br>

Since we modified the dimension data for Device 1, its current values differ from those originally configured at the device type level. In contrast, Device 2 still reflects the default values, as no changes have been made to its dimension data.
![Edit Dimension](img/add_edit_device28.png)</br></br>

---
Congratulations you have successfully added and modified devices in device type.</br>
