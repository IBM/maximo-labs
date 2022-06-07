# Summary
In this Maximo Health and Predict - Utility AI Lab you wil learn how to use an existing Maximo EAM v7.6.1 instance with 
Maximo Health and Predict-Utilities in MAS v8.7 to understand the health and failure risks of your assets.
  

   
## Description
Maximo EAM includes the ability to manage assets. Reliability Engineers can use that data to better plan their asset
maintenance and repairs  however you may want to create custom machine learning models to make predictions or 
classifications using asset data. With Auto AI the process of selecting the right model and identifying the right 
feature inputs to make metric prediction is greatly simplified.

The intended audience for this tutorial are data scientists who will set up the Maximo Environment and  analyze their 
data to create prediction models for asset end of life using Predict model templates.  Reliability Engineers who need to
plan to address poor asset health and risk with an asset investment plan to repair or replace the assets.


### Asset Data 

You must first set up your local development environment with asset data used in the lab.  You will create `X` assets `assetid X` and 
`asset id Y`.  Some assets will have timeseries metered data that will be used to predict failures.   The lab provides a 
Python script `x_simulator.py` to send asset meter data to the `X` assets.  This lab includes real `X` device data in 
the csv file named `tbd_data.csv`.  

The asset data metric readings include:  TBD 

|   Metric Name        | Metric Description                                               |
|----------------------|------------------------------------------------------------------|
|   evt_timestamp      | Reading timestamp metric data was read by sensor                                               |
|   speed	           | Pump impeller speed                                              |
|   head               | Pump head                                                        |
|   device_id          | The device identifier for the 2 pump devices 11111096 and 111137F8|
|   pump_mode          | Pump mode a for automatic or h for manually operated by hand     |
|   flow               | Pump flow                                                        |
|   voltage            | Pump voltage                                                     |
|   POWER              | Pump power consumption                                           |
|   CURRENT            | Pump current                                                     |


**Pre-requisites**

Ensure you have access to :

-  MAS v8.7  Health and Predict.
-  Cloud Pak for Data Watson Studio.
-  App Connect. You can use the App Connect add on included with Maximo Application Suite as an Add On. Or install it yourself using the App Connect exercises.
-  Asset Class setup and data load scripts for the Labs provided by the Instructor.

# Exercises

This lab only includes the exercises in the flows outlined in red below:

![Lab Flows by User](/img/apm_8.7/lab_flow.png) 

You must choose one of the following ways to load asset data into Health and Predict and Utilities.:

## Asset Setup and Data Loading

1. [Data loading using Python](dataload_python.md) requires that you have [set up a local Python Development environment](setup_local_environment.md).

2. Data loading meter data using EAM CronTask  - Not yet available

3. [Data loading meter data  and asset types using App Connect](dataload_appconnect.md) requires that you do the App Connect Exercise.

Here are excercises that we would like to add to this lab.  We are requesting contributors for these exercies .  Email me <carlos.ferreira1@ibm.com> if 
you would like to volunteer as a contributor.  

## Manage Assets
1. Creating a New Asset in Maximo in Web UI
2. Associating Meters w/ an Asset in Web UI
3. Creating New Condition Monitoring Points & Job Plans
4. Create a Saved Query or Asset Group*
5. Edit the IOTHISTORIAN Cron Task & External Systems to synchronize Manage Asset data with Health.

## Understand Asset Health
1. Setup health scores and groups for assets and locations
2. Create historical work orders for Asset Timeline and scheduled preventive maintenance.
3. View asset health on asset detail page.
4. Identify high critical assets that need actioning.
5. Action critical assets in poor health.
6. Find assets that are missing data. View low health work queue.
7. Health scores, and take action by opening a work order in EAM.

## Predict Asset Failures and Detect Anomalies
1. Create asset group
2. Set-up predictive end of life models using [Watson Studio and Predict](setup_watson_studio.md).
3. Understanding asset anomalies.
4. Understanding asset failure predictions.

##  Optimize Asset Investment and Risk
1. Compare Asset Investment Strategies. Understand costs associated with Refurbishment and Replacement Planning and the 
long term impact on Asset health. 
2. Analyze long term asset risk for a selected investment strategy.

## Architecture

Here is the architectural deployment pattern these labs are targeted for:

Maximo v7.6.1 deployment with Maximo Application Suite Health Predict and Utilities
![Deployment Pattern](/img/apm_8.7/EAMbase_architecture.png)

Maximo Application Suite Health Predict and Utilities deployed as a Manage Add On
![Deployment Pattern](/img/apm_8.7/ManageBase_architecture.png)

