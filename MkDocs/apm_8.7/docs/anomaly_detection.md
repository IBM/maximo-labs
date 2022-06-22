# Anomaly Detection
Maximo Predict includes anomaly detection notebook templates you can use to detect asset anomalies. 

In this exercise you will use Monitor, Predict and Watson Studio to:

1. [Train a model using an Anomaly Detection notebook](#anomaly_notebook) using a template. 
2. Register an Anomaly Detection algorithm in Predict

!!!!
    You must complete the previous exercise for [Data Preparation and Loading Using Notebooks](data_preparation.md) exercise before you start this exercise.

## Train a Anomaly Detection Model
<a name="data_preparation_notebook"></a>
You must load metadata describing your asset and meter data describing the timeseries metrics and failure dates.  There are 3 files needed.  Each file is described below.


**Asset Information Data** 

To load asset data into Health you must have asset date. an anomaly model or failure prediction model using Predict you must include For model training using Predict you must include this file.  If you are using Health and have an existing installation of Manage

Meter data with the following columns:

| Column Name       | Description                                                                                                    |
|-------------------|----------------------------------------------------------------------------------------------------------------|
| asset_id	         | String that is the unique asset identifier like ST_1393137                                                     |
| installation_date | String for timestamp of reading Predict supports formats like date 1998-03-28 or date time 2008-01-08 00:00:00 |
| decommission_date | String for timestamp of reading Predict supports formats like 2008-01-08 00:00:00                              |

Example CSV File:

    asset_id,installation_date,decommission_date
    ST_1393137,1998-03-28,
    ST_1393138,1999-03-28,
    ST_1400501,2002-01-01,
    ST_1400502,1978-01-01,
    ST_1400503,1988-01-01,2017-01-01
    ST_1400504,1972-02-01,2013-09-01
    ST_1400505,1978-04-01,2018-09-01
    ST_1400506,1985-12-01,2000-09-01
    ST_1400507,1990-01-01,2020-09-01
    ST_1400508,1982-12-01,2021-01-01
    ST_1400517,2004-05-29,
    ST_1400518,2001-01-26,
    ST_1400519,2004-03-11,

**Asset Meter Data** 

Meter data with the following columns:

| Column Name                   | Description                                                                                                                                                                         |
|-------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| timestamp                     | String for timestamp of reading Predict supports like 2008-01-08 00:00:00                                                                                                           |
| asset_id	                     | String that is the unique asset identifier like ST_1393137                                                                                                                          |
| replace_with_your_metric_name | String, float, integer values for the metric name that has time series value of the metric. Add columns for each like in the example below for `VELOCITYX`,`VELOCITYY`,`VELOCITYZ`. |
| deviceid                      | The device identifier for the 2 pump devices 11111096 and 111137F8                                                                                                                  |
| devicetype                    | Type of device or asset type.  For example Pump                                                                                                                                     |

Example CSV File:

    timestamp, asset_id,VELOCITYX,VELOCITYY,VELOCITYZ,MOTORTEMP,WINDINGTEMP,CURRENT,PRESSURE,LOAD,deviceid,devicetype
    2008-01-08 00:00:00,ST_1393137,2.789723591922755e-05,1.6746073164430882e-05,8.339162527937205e-05,100.83577170779785,44.35493000421977,248.35431420298488,236.06861760559738,119.19549771099527,ST_1393137,Pump
    2008-01-08 00:00:00,ST_1400503,1.8955077909665885e-05,5.310167683286737e-05,4.929701336603421e-05,117.40003242411258,59.44633346537405,198.43270265068318,135.58041388401696,363.32438733010264,ST_1400503,Pump
    2008-01-08 00:00:00,ST_1393138,5.383833971733809e-05,8.621918766532621e-05,0.00022628816228392745,56.84127240243945,85.39674348536191,320.10652050792254,116.96629884075016,348.63962293620796,ST_1393138,Pump
    2008-01-08 00:00:00,ST_1400504,0.0001924944000548656,1.1741761162809006e-06,8.175834516599423e-05,119.5450558945755,94.7939330989897,236.70840492432868,32.6440692097963,312.4522186383818,ST_1400504,Pump
    2008-01-08 00:00:00,ST_1400501,0.003545132038944409,6.876746074246931e-07,0.0036784498219412103,45.59886793076733,23.05892702945967,286.74721509016484,180.20107874577167,231.70223738465447,ST_1400501,Pump
    2008-01-08 00:05:00,ST_1400504,0.00019302373395002626,0.00016932421485671423,0.00013430225226540582,190.6814045868194,37.57188465045573,137.3792392640947,299.6397304979968,159.14737257788806,ST_1400504,Pump
    2008-01-08 00:05:00,ST_1400503,2.0484241964768835e-05,0.00010325648402054188,5.190215923800423e-05,54.63392121323369,36.27128188087939,300.653034213001,255.42177133667667,354.67651009829115,ST_1400503,Pump
    2008-01-08 00:05:00,ST_1393137,6.366443036021074e-05,7.064831711578456e-05,0.00011524493308429085,54.97140429029558,38.663214620823275,227.54222031273997,156.7913987644162,130.128691037622,ST_1393137,Pump
    2008-01-08 00:05:00,ST_1393138,0.00013067224960744417,0.0008823036374320248,0.00032697196744563284,93.54844644228176,1.0334067253278365,201.09726853381162,177.26721567826152,464.38594263559753,ST_1393138,Pump
    2008-01-08 00:05:00,ST_1400501,0.006280909664161449,0.0010025129547774347,0.004949649433126646,120.43190732195221,56.22655349254132,103.56854139558924,149.58631977664385,327.4758640952711,ST_1400501,Pump
    2008-01-08 00:10:00,ST_1400504,0.00020046116700583871,0.00023040699143567206,0.00019016599105797782,26.21601912040133,17.065778325053998,283.1600018147578,83.84456591349925,214.12986021619156,ST_1400504,Pump
    2008-01-08 00:10:00,ST_1393137,7.602581095239591e-05,7.9852673251668e-05,0.00012796988361707395,34.50644451498961,71.16775071874916,187.36661322063892,213.0005900404975,78.99669369869281,ST_1393137,Pump
    2008-01-08 00:10:00,ST_1400503,8.657794445832145e-05,0.00013001986273436517,7.091561697253335e-05,74.35723049281981,48.2234783756648,126.26599720968146,177.59628306468898,258.13878219243736,ST_1400503,Pump
    2008-01-08 00:10:00,ST_1400501,0.010575435663603527,0.0014778309163699932,0.005209847134218125,98.86547795829622,36.977105925193136,178.05030077180396,79.52583077900974,243.4138352490094,ST_1400501,Pump

**Asset Failure Data** 

Failure data must have the following columns:

The failure dates includes the failure CSV data which identifies start and end  failure dates for each asset id with the following columns:

| Column Name  | Description                                                                                      |
|--------------|--------------------------------------------------------------------------------------------------|
| fail_date    | String for timestamp of day 2008-01-08  and  day-time 2008-01-08 00:10:00 that the asset failed. |
| asset_id	    | String that is the unique asset identifier like ST_1393137                                       |
| description  | String,describes the failure cause or condition.                                                 |
| failure_code | Sting that identifies the fault.                                                                 |
| problem_code | String that desribes the problem code for troubleshooting.                                       |
| site_id   | String of where the asset is located                                                             |
| failure_record | Integer that identifies the Manage record identifier failure instance of failure types.          |

Example CSV File:

    fail_date,asset_id,description,failure_code,problem_code,site_id,failure_record
    2008-01-08,ST_1393137,Pump stopped due to failure,PUMPS,STOPPED,DIST1,1
    2008-02-10,ST_1393137,Pump stopped due to failure,PUMPS,STOPPED,DIST1,1
    2008-03-11,ST_1393137,Pump stopped due to failure,PUMPS,STOPPED,DIST1,1
    2008-04-09,ST_1393137,Pump stopped due to failure,PUMPS,STOPPED,DIST1,1
    2008-05-06,ST_1393137,Pump stopped due to failure,PUMPS,STOPPED,DIST1,1
    2008-05-18,ST_1393137,Pump stopped due to failure,PUMPS,STOPPED,DIST1,1
    2008-06-04,ST_1393137,Pump stopped due to failure,PUMPS,STOPPED,DIST1,1
    2008-06-30,ST_1393137,Pump stopped due to failure,PUMPS,STOPPED,DIST1,1
    2008-01-24,ST_1393138,Pump stopped due to failure,PUMPS,STOPPED,DIST1,1


1. Download data from Kaggle. Name the file `kaggle-pump-sensor.csv`
![Dowload_Pump_data](/img/amp_8.7/p40.png) 

2. Drag the csv file into data asset project
![credentials](/img/amp_8.7/p40.png) 

3. Create a new notebook from file to prepare the date to be used by Predict for predicting failures.  
Browse to open the .notebooks/data_preparation.ipynb

4. The first cell loads needed libraries to process the data.

```shell script
import pandas as pd
import numpy as np
import time
import sys
```

5. The next cell sets the display values to be able to see the data tables and logs in the Jupyter notebook for df head()

```shell script
pd.set_option('display.max_columns', None)
pd.set_option('max_colwidth', 1000)
pd.set_option('max_rows', 100)
pd.set_option('display.max_rows', 100)
pd.set_option('display.max_columns', 100)
```

6. Insert the code to load the sensor_data.csv that you uploaded earlier in the exercise. Click on the code generator icon at the top of Watson Studio.  Click on the sensor data csv file you loaded earlier and nameed 'kaggle-pump-sensor.csv'  
![credentials](/img/amp_8.7/p49.png)

7. The code is added into a new cell below where you are currently active.
![credentials](/img/amp_8.7/p50.png)

## Setup Asset Types
<a name="setup_assetypes"></a>

    
## Load data into Health Predict and Utilities
<a name="load_asset_data_python"></a>

Congratulations.  You now have sample data you can work with.

