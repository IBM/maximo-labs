# Summary
In this Maximo Auto AI Lab you wil learn how to use Auto AI to identify a prediction machine learning model
that you can train and then deploy to Maximo Asset Monitor. You will learn how to:

1.  Use the provided Jupyter notebook that will contain Python code to train, test and deploy machine learning model to
    Maximo Asset Monitor
2.  Use the provided Maximo Asset Monitor custom function to make predictions as new time series data is received in
    Maximo Asset Monitor
3.  Create Asset Types and devices using simulated pump data. 
4.  Create an Asset Type and Asset dashboards to see the pump data and model predictions in Monitor
     
## Description
Maximo Asset Monitor provides a powerful analytics platform to ingest time series data from a variety of historians and 
devices.  Monitor includes a variety of model functions that can be use to predict performance of assets or detect 
performance anomalies.  Sometimes however you may want to create custom machine learning models to make predictions
or classifications using asset data. With Auto AI the process of selecting the right model and identifying the right
feature inputs to make metric prediction is greatly simplified.

The intended audience for this tutorial are developers and data scientists who would like to analyze their data in 
Maximo Asset Monitor using customized machine learning models that are deployed in the Maximo Asset Monitor Service 
schedule pipeline.

## Pump Data and Devices

To apply AI and Monitor assets you will create 2 pump devices `11111096` and `111137F8`.  To simulate sending data to the 
pumps, you can use the provided Python script `pump_simulator.py` to send device data to  Monitor IOT Platform.  This lab 
uses real pump device data in the csv file named `maximo-auto_ai_pump_all_data.csv`.  The two pump device data metric readings 
that will sent are: 

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


!!! note
    If your lab is instructor led steps 1, 2, 3, 4, 5, 6 and 9 have already been done for you in the environment provide to you 
    by your instructor.  You should  only do steps 7, 8 and 10. 


## Exercises

Find the detailed instructions in the each exercise below:

1.  [Setup Local Environment](setup_local_environment.md)

2.  [Create Device Types](create_device_types.md)

3.  [Create Devices](create_devices.md)

4.  [Send Simulated Pump Data](send_device_simulated_data.md)

5.  [Create Physical and Logical Interfaces](create_interfaces.md)

6.  [Create Dashboards](create_dashboards.md) in Maximo Asset Monitor using simulated pump data

7.  [Identify Prediction Models](create_model.md) to predict Power consumption using Watson Studio Auto AI

8.  [Train Test and Deploy Models in Monitor](train_test_save_model_in_monitor.md) to Monitor using Juypter Notebook

9.  [Deploy and Configure a PredictionModel Custom Function in Monitor](deploy_prediction_model_function.md)

10.  [Update Dashboards](update_dashboards.md) with power prediction calculated metric in Maximo Asset Monitor 

## Architecture

Here is the Architecture flow for this tutorial
![](/img/monitor_autoai_8.4/architecture.png)
