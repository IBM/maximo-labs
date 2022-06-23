# Get Started
In this Lab you wil learn how to use Maximo Health and Predict-Utilities to understand the asset health and failure risks for pumps and other utility assets.

The version of Health and Predict - Utilities used in this Lab is for Maximo Application Suite v8.7.

## Description

Maximo Manage includes the ability to manage assets.  Reliability Engineers can use asset data stored in Manage and other data sources to better plan their asset
maintenance and repairs to ensure asset reliability and reduce operational risks.  By leveraging asset health scoring and AI algorithms to detect anomalies and predict asset failures in time to mitigate or avoid their negative impacts. 

Health and Predict - Utilities includes proven  machine learning model templates to make predictions or 
classify asset condition using asset data.  These lab exercises provide you the best practices and guided instructions for how to use Health and Predict - Utilities to set up and asses your asset condition scoring, failure prediction dates and anomaly detection using a real world public pump data set..

The intended audience for this lab are reliability engineers and data scientists who will set up the Maximo Environment and  analyze their 
data to create prediction models for asset end of life using Predict model templates.  Reliability Engineers who need to
plan to address poor asset health and risk with an asset investment plan to repair or replace their assets.

You will use a publicly available [pump data set from Kaggle](https://www.kaggle.com/datasets/nphantawee/pump-sensor-data?resource=download) for predicting a pump failure.   You will also create an Anomaly Detection model for the pump.

The [pump data definition](https://www.kaggle.com/datasets/nphantawee/pump-sensor-data/discussion/131429?resource=download) explains what sensor readings are available based on the known information about the data set provided on the Kaggle site 

**Pre-requisites**

For this exercise ensure you have access to :

-  MAS v8.7  Health and Predict.    
-  Cloud Pak for Data Watson Studio compatible with MAS v8.7
-  App Connect (optional). You can use the App Connect add on included with Maximo Application Suite as an Add On. Or install it yourself using the App Connect exercises.
-  Access to the Jupyter Notebooks used to in this Lab exercise.  They can be provided by the instructor. 

# Exercises

This lab only includes some of the exercises below:

![Lab Flows by User](/img/apm_8.7/lab_flow.png) 


## Asset Setup and Data Loading
There are three possible ways to get data into Health and Predict - Utilities.

1. [Data loading Python Notebooks](hpu_models.md) requires that you have [set up Watson Studio with Predict Libraries and Notebooks ](setup_watson_studio.md).

2. Data loading meter data using EAM CronTask  - Not yet available in this lab

3. [Data loading meter data  and asset types using App Connect](dataload_appconnect.md) requires that you do the App Connect Exercise.


## Exercises 
These are the exercises available in this lab.

1. [Data Dictionary](data_dictionary.md) explains the public pump data that will be used in this hands on lab

2. [Setup Watson Studio](setup_watson_studio.md) with Health and Predict - Utilities libraries and Notebook templates

3. [Failure Prediction Model](failure_prediction.md) explains how to assess the performance of a failure date prediction model using  Health and Predict - Utilities with Watson Studio.

4. [Anomaly Detection Model](anomaly_detection.md) explains how to assess the performance of an anomaly prediction model using  Health and Predict - Utilities with Watson Studio.

4. [Create Prediction Group](create_prediction_group.md) to link a deployed prediction model or algorithm with a selected a group of assets using Health, Predict and Watson Studio.

5. [Understand Health and Predict - Utilities Models](hpu_models.md) explains how to prepare your asset data to be analyzed by Health and Predict - Utilities.

6. [Install and Configure App Connect](appconnect_install.md) flows to load asset metadata and timeseries data into Health and Predict - Utilities.  (Optional)

7. [Asset Health Scoring](appconnect_install.md) Reliability Engineer uses the MAS Health and Predict applications to review the asset conditions and ensure that there aren't any failures predicted before planned maintenance.

## Contributors are needed for the exercises below:

Here are other exercises that we would like to add to this lab.  We are requesting contributors for these exercises .  Email me <carlos.ferreira1@ibm.com> if 
you would like to volunteer as a contributor.  

### Manage Assets
1. Creating a New Asset in Maximo in Web UI
2. Associating Meters w/ an Asset in Web UI
3. Creating New Condition Monitoring Points & Job Plans
4. Create a Saved Query or Asset Group*
5. Edit the IOTHISTORIAN Cron Task & External Systems to synchronize Manage Asset data with Health.

### Understand Asset Health
1. Setup health scores and groups for assets and locations
2. Create historical work orders for Asset Timeline and scheduled preventive maintenance.
3. View asset health on asset detail page.
4. Identify high critical assets that need actioning.
5. Action critical assets in poor health.
6. Find assets that are missing data. View low health work queue.
7. Health scores, and take action by opening a work order in EAM.

### Predict Asset Failures and Detect Anomalies
1. Create asset group
2. Set-up predictive end of life models using [Watson Studio and Predict](setup_watson_studio.md).
3. Understanding asset anomalies.
4. Understanding asset failure predictions.

###  Optimize Asset Investment and Risk
1. Compare Asset Investment Strategies. Understand costs associated with Refurbishment and Replacement Planning and the 
long term impact on Asset health. 
2. Analyze long term asset risk for a selected investment strategy.

### Architecture

Here is the architectural deployment pattern these labs are targeted for:

Maximo v7.6.1 deployment with Maximo Application Suite Health Predict and Utilities
![Deployment Pattern](/img/apm_8.7/EAMbase_architecture.png)

Maximo Application Suite Health Predict and Utilities deployed as a Manage Add On
![Deployment Pattern](/img/apm_8.7/ManageBase_architecture.png)

