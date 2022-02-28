# Send Device Simulated Data

In these exercises you will start sending pump data to Monitor IOT Platform.  This will allow us to make predictions on 
power in the later exercises.

-  [Update environment settings](#environment) for pump devices. 

-  [Start Python Simulator](#simulator) for the 1 of devices.

-  [Verify the Device data](#devicedata) is being received by Monitor.

## Update Environment Settings

<a name="environment"></a>

1. The simulator needs to know the name of your organization, device type, device id and security Token. Edit the 
file named `.env_example` and save it as `.env`  using the values below.

2. Get the Organization, API Key and API Token from your MAS Administrator.  Here is an example of the format of an example 
credentials file.
```son
{
    "tenantId": "your_TENANTID",
    "_db_schema": "your_SCHEMA",
    "db2": {
        "username": "your_DBUSERID",
        "password": "your_DBPASSWORD",
        "databaseName": "your_DBNAME",
        "security": "SSL",
        "port": your_DBPORT,
        "httpsUrl": "https://your_DBURL",
        "host": "yourDBURL"
    },
    "iotp": {
        "asHost": "your_TENANTID.api.monitor.your_TENANTNAME.your_TENANTNAME.cloud:443",
        "apiKey": "your_IOTP_APIKEY",
        "apiToken": "your_IOTP_APITOKEN"
    }
}    
```     
3. Get the values for fields like `TOKEN`,  `DEVICE_TYPE` for the devices you created in the [Create Devices](create_devices.md) 
exercise for the 1 of pump devices `111137F8` ![Browse](/img/monitor_autoai_8.4/c13.png) 

4. For `SOURCE_DEVICE_ID` this is the name of the Device ID in the source data csv file.  See example file provided by the
 instructor named `/data/maximo-auto_ai_pump_data_111137F8.csv`

5. For `DEVICE_ID` this is the name of the Device ID in the Monitor.

## Start the Python Simulator
<a name="simulator"></a>
This exercise includes Python Simulator that reads a csv file  `maximo-auto_ai_pump_data_111137F8.csv`.
with the pump data and sends the rows of data for the pump  device you specified in the previous exercise. The `event_payload.json` 
looks like:
```json
     {
        "evt_timestamp": "2020-01-19T03:59:53.03Z",
        "speed": 1141,
        "head": 61.298,
        "pump_mode": "a",
        "flow": 1226.936,
        "voltage": 438,
        "POWER": 18.93,
        "CURRENT": 32.6
     }
 ```    
1. If you are using PyCharm as your Integrated Development Environment select `pump_simulator.py` and right mouse click 
select `Run pump_simulator.py`   ![Run Simuilator](/img/monitor_autoai_8.4/s02.png)

2. If you are using a local virtual environment cd into `../scripts` and invoke the script by typing the following command: 

        python3 pump_simulator.py

## Verify the Device data
<a name="devicedata"></a>
     
1. To be able to ingest device data using Monitor  you must first define the format of the data using a Device  Type.  
In this exercise you will, create a `Device Type` named `pump_co` and 2 `Devices` named `11111096` and 
`111137F8`.

2.  Login to Monitor from the `Maximo Application Suite Navigator` page. Click  ![Launch](/img/monitor_autoai_8.4/c01.png)

3.  Click `Connect devices` tile ![Connect devices tile](/img/monitor_autoai_8.4/c02.png) Or click On the `Connect menu` 

4.  Click `Open Platform Service application` in the top-right corner to open the Watson IoT Platform tenant associated 
with this  Monitor tenant in a separate browser tab. ![Open Platform Services](/img/monitor_autoai_8.4/c03.png)

5.  Go to the `Devices` menu.  Enter the Device ID `111137F8` in the search box.  Click `Recent Events`.  It might take 
a moment to get values as shown in the image below.  ![Recent Events](/img/monitor_autoai_8.4/s03.png)

Optionally you can repeat this exercise with the other pump 11111096 using it's [training data](https://github.com/fe01134/maximo_autoai/blob/main/data/maximo-auto_ai_pump_data_11111096.csv)

Congratulations you now pump device data flowing that you will use make a prediction model and monitor in dashboards. 