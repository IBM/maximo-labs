# Objectives
In this Exercise you will learn how to setup Monitor to receive data from your mobile device.

* Create a device type and setup metrics in Monitor
* Create a device in Monitor representing your mobile device

## Create a device type and setup metrics in Monitor

### Create a device type

1. Go to Setup in Monitor
2. Go to Devices tab
3. Click on + button to create a device type
4. Choose Empty/Basic template
5. Next
6. Take note of the name you give as you will need this in the mobile app config
7. Create

### Create Metrics in the device type

1. Under Metrics section click Add metric
2. Click Add metric
    <br>a. Enter lat for metric
    <br>b. Enter latitude for display name
    <br>c. Enter sensorData for event
    <br>d. Choose Number for type 
3. Click Add metric
    <br>a. Enter lng for metric
    <br>b. Enter longitude for display name
    <br>c. Choose sensorData for event
    <br>d. Choose Number for type
4. Click Add metric
    <br>a. Enter ax for metric
    <br>b. Enter accx for display name
    <br>c. Choose sensorData for event
    <br>d. Choose Number for type
5. Click Add metric
    <br>a. Enter ay for metric
    <br>b. Enter accy for display name
    <br>c. Choose sensorData for event
    <br>d. Choose Number for type
6. Click Add metric
    <br>a. Enter az for metric
    <br>b. Enter accz for display name
    <br>c. Choose sensorData for event
    <br>d. Choose Number for type
7. Click Add metric
    <br>a. Enter oa for metric
    <br>b. Enter alpha for display name
    <br>c. Choose sensorData for event
    <br>d. Choose Number for type
8. Click Add metric
    <br>a. Enter ob for metric
    <br>b. Enter beta for display name
    <br>c. Choose sensorData for event
    <br>d. Choose Number for type
9. Click Add metric
    <br>a. Enter og for metric
    <br>b. Enter gamma for display name
    <br>c. Choose sensorData for event
    <br>d. Choose Number for type
10. Click Add
11. Click Save

The metrics should look like this:

![Metrics](img/metrics.png)

## Create a device in Monitor representing your mobile device

1. Click the blue Setup in the top left which will take you to the device types list
2. The device type you created should be selected
3. Add device
4. Enter a name for your mobile device using your initials   i.e.  MLLiPhone
5. Take note of the name you give as you will need this in the app config
6. Click Add
7. Copy the authentication token as you will need it in the mobile app config

Note: One device in Monitor needs to be used per mobile device sending data.  If you want to use more mobile devices then create additional devices in Monitor.

