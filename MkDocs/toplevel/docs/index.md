# Welcome to the IBM Maximo Labs

In these hands-on labs you will learn how to get started with the different products that are available in the IBM Maximo 
portfolio.  The labs are in different states of readiness for use shown below. Feel free to [open issues](https://github.com/IBM/monitor-hands-on-lab/issues/new) and provide us feedback.

!!! tip
    Using the Search capability in the upper left corner to help you find topics quicker in the labs.

---

## Converting to Github Pages (to be removed when done)


Instructions for the migration: [Github Pages](github_pages/)  

| Lab                                                                    | Converted  |
|------------------------------------------------------------------------|------------|
| ***Maximo Labs Top Level***                                            | |
| [Maximo Labs Top Level](./)                                            | ![Ready](img/ready_small.png)|
| [Github Pages](github_pages/)                                          | ![Ready](img/ready_small.png)|
| ***Maximo Application Suite 8.11***                                    | |
| [Maximo Monitor Edge Data Collector](edc_8.11/)                        | ![Not started](img/not_started_small.png)|
| ***Maximo Application Suite 8.11 (Under Development)***                | |
| [Health, Predict and Utilities](apm_8.11/)                             | ![Not started](img/not_started_small.png)|
| ***Maximo Application Suite 8.10***                                    | |
| [Monitor Node-RED CSV Importer V2](monitor_nodered_csv_importer_2.0/)  | ![Not started](img/not_started_small.png)|
| ***Maximo Application Suite 8.9***                                     | |
| [Deploy MAS 8.9](ocp_8.9/)                                             | ![Not started](img/not_started_small.png)|
| [Health, Predict and Utilities](apm_8.9/)                              | ![Not started](img/not_started_small.png)|
| [Monitor Connect](mas_monitor_connect/)                                | ![Not started](img/not_started_small.png)|              
| ***Maximo Application Suite 8.8***                                     | |
| [Health, Predict and Utilities](apm_8.8/)                              | ![Not started](img/not_started_small.png)|
| [Monitor Connect](mas_monitor_connect/)                                | ![Not started](img/not_started_small.png)|              
| ***Maximo Application Suite 8.7***                                     | |
| [Health, Predict and Utilities](apm_8.7/)                              | ![Not started](img/not_started_small.png)|
| [Monitor Asset Hierarchy](mas_monitor_hierarchy/)                      | ![Not started](img/not_started_small.png)|
| ***Maximo Application Suite 8.6***                                     | |
| [Monitor Node-RED CSV Importer](monitor_nodered_csv_importer_1.0/)     | ![Not started](img/not_started_small.png)|
| [Suite Overview](mas_8.6/)                                             | ![Not started](img/not_started_small.png)|
| [Health and Predict Utilities v8.6](hpu_8.6/)                          | ![Not started](img/not_started_small.png)|
| ***Maximo Application Suite 8.5***                                     | |
| [Monitor Functions](monitor_8.5/)                                      | ![Not started](img/not_started_small.png)|
| [Monitor Auto AI](monitor_autoai_8.5/)                                 | ![Not started](img/not_started_small.png)|
| [MAS Environmental Monitoring](sustain_mas/)                           | ![Not started](img/not_started_small.png)|
| ***CONTRIBUTE TO MAXIMO LABS***                                        | |
| [Contribute to Labs](contribute/)                                      | ![Not started](img/not_started_small.png)|
| [New Lab Template](template_1.0/)                                      | ![Not started](img/not_started_small.png)|

![Not started](img/not_started_small.png)
![Under Development](img/under_development_small.png)
![Ready](img/ready_small.png)

---

### Maximo Application Suite 8.11
| Lab                                              | Exercise                                                     |
|--------------------------------------------------|--------------------------------------------------------------|
| [Maximo Monitor Edge Data Collector](edc_8.11/)  | [Setup Simulator Environment](edc_8.11/setup)                |
|                                                  | [Create Monitor Devices](edc_8.11/monitor_devices)           |
|                                                  | [Create EDC Integration](edc_8.11/edc_integration)           |
|                                                  | [Deploy and Verify Integration](edc_8.11/deploy)             |
|                                                  | [Create Monitor Metrics](edc_8.11/monitor_metrics)           |


### Maximo Application Suite 8.11  (Under Development)
| Lab                                         | Exercise                                    |
|---------------------------------------------|---------------------------------------------|
| [Health, Predict and Utilities](apm_8.11/)  | [Setup Demonstration](apm_8.11/build_demo)  |
|                                             | [Overview Task Guide](apm_8.11/demo_script) |


### Maximo Application Suite 8.10
| Lab                                                                    | Exercise                                                                                          |
|------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------|
| [Monitor Node-RED CSV Importer V2](monitor_nodered_csv_importer_2.0/)  | [Setup Node-RED Environment](monitor_nodered_csv_importer_2.0/setup)                              |
|                                                                        | [Inject device data directly to Monitor](monitor_nodered_csv_importer_2.0/setup_device)           |
|                                                                        | [Inject device data through a gateway to Monitor](monitor_nodered_csv_importer_2.0/setup_gateway) |


### Maximo Application Suite 8.9
| Lab                                        | Exercise                                                                                     |
|--------------------------------------------|----------------------------------------------------------------------------------------------|
| [Deploy MAS 8.9](ocp_8.9/)                 | [Logistics](ocp_8.9/logistics)                                                               |
|                                            | [Infrastructure](ocp_8.9/technical)                                                          |
|                                            | [Preparation](ocp_8.9/preparation)                                                           |
|                                            | [Deployment](ocp_8.9/deployment)                                                             |
|                                            | [Post Deployment](ocp_8.9/post_deployment)                                                   |
| [Health, Predict and Utilities](apm_8.9/)  | [Setup Demonstration](apm_8.9/build_demo)                                                    |
|                                            | [Overview Task Guide](apm_8.9/demo_script)                                                   |
|                                            | [Setup Watson Studio](apm_8.9/setup_watson_studio)                                           |
|                                            | [Setup Custom Scores](apm_8.9/asset_scores)                                                  |
|                                            | [Create a Custom Score Using a Notebook](apm_8.9/utilities_pump_score_notebook)              |
|                                            | [Forecast a Customer Score Using a Notebook](apm_8.9/utilities_st_futurescore_demo_notebook) |
|                                            | [Train and Deploy Custom Score Forecast](apm_8.9/utilities_st_futurescore_using_wml_model)   |
| [Monitor Connect](mas_monitor_connect/)    | [Setup Mobile Device in Monitor](mas_monitor_connect/setup_device)                           |              
|                                            | [Connect Mobile Device in Monitor](mas_monitor_connect/connect_device)                       |              
|                                            | [Verify Data Sent to Monitor](mas_monitor_connect/verify_data)                               |
 
### Maximo Application Suite 8.8
| Lab                                           | Exercise                                                                            |
|-----------------------------------------------|-------------------------------------------------------------------------------------|
| [Health, Predict and Utilities](apm_8.8/)     | [Setup Watson Studio](apm_8.8/setup_watson_studio)                                  |
|                                               | [Understand Health and Predict Utilities Models](apm_8.8/hpu_models)                |
|                                               | [Data Preparation for Remaining Useful Life](apm_8.8/data_preparation)              |
|                                               | [Setup Utilities Assets in Manage](apm_8.8/asset_data_loader)                       |
|                                               | [Understand Asset Health Scores](apm_8.8/health_score)                              |
|                                               | [Create Health Scores using Notebooks ](apm_8.8/utilities_score_notebook)           |
|                                               | [Create Utilities Predict Group and Load Sensor Data](apm_8.8/utilities_devicedata) |
|                                               | [Create Predict Asset Anomaly Detection Model](apm_8.8/utilities_anomaly_detection) |
|                                               | [Create Predict Asset End of Life Curve](apm_8.8/utilities_EOL)                     |
|                                               | [Create Predict Asset Failure Date](apm_8.8/utilities_Failure_date)                 |
|                                               | [Create Predict Asset Failure Probability](apm_8.8/utilities_Failure_Probability)   |
|                                               | [Understanding Asset Metrics Data](apm_8.8/data_dictionary)                         |
|                                               | [Load Asset Meter Data into Monitor](apm_8.8/fast_start_loader)                     |
|                                               | [Asset Investment Optimization](apm_8.8/asset_investment)                           |
|                                               | [View and Configure Asset Matrix](apm_8.8/matrix)                                   |
|                                               | [Installing App Connect for Data Loading](apm_8.8/appconnect_install)               |
| [Monitor Connect](mas_monitor_connect/)       | [Setup Mobile Device in Monitor](mas_monitor_connect/setup_device)                  |              
|                                               | [Connect Mobile Device in Monitor](mas_monitor_connect/connect_device)              |              
|                                               | [Verify Data Sent to Monitor](mas_monitor_connect/verify_data)                      |

### Maximo Application Suite 8.7
| Lab                                                | Exercise                                                                            |
|----------------------------------------------------|-------------------------------------------------------------------------------------|
| [Health, Predict and Utilities](apm_8.7/)          | [Setup Watson Studio](apm_8.7/setup_watson_studio)                                  |
|                                                    | [Understand Health and Predict Utilities Models](apm_8.7/hpu_models)                |
|                                                    | [Data Preparation for Remaining Useful Life](apm_8.7/data_preparation)              |
|                                                    | [Setup Utilities Assets in Manage](apm_8.7/asset_data_loader)                       |
|                                                    | [Understand Asset Health Scores](apm_8.7/health_score)                              |
|                                                    | [Create Health Scores using Notebooks ](apm_8.7/utilities_score_notebook)           |
|                                                    | [Understand Asset Investment Optimization](apm_8.7/asset_investment)                |
|                                                    | [Create Utilities Predict Group and Load Sensor Data](apm_8.7/utilities_devicedata) |
|                                                    | [Create Predict Asset Anomaly Detection Model](apm_8.7/utilities_anomaly_detection) |
|                                                    | [Create Predict Asset End of Life Curve](apm_8.7/utilities_EOL)                     |
|                                                    | [Create Predict Asset Failure Date](apm_8.7/utilities_Failure_date)                 |
|                                                    | [Create Predict Asset Failure Probability](apm_8.7/utilities_Failure_Probability)   |
|                                                    | [Understand Asset Metrics Data](apm_8.7/data_dictionary)                            |
|                                                    | [Load Asset Meter Data into Monitor](apm_8.7/fast_start_loader)                     |
|                                                    | [Installing App Connect for Data Loading](apm_8.7/appconnect_install)               |
| [Monitor Asset Hierarchy](mas_monitor_hierarchy/)  | [Create Hierarchy](mas_monitor_hierarchy/create_hierarchy)                          |              
|                                                    | [Assign Devices](mas_monitor_hierarchy/assign_devices)                              |

### Maximo Application Suite 8.6
| Lab                                                                 | Exercise                                                                              |
|---------------------------------------------------------------------|---------------------------------------------------------------------------------------|
| [Monitor Node-RED CSV Importer](monitor_nodered_csv_importer_1.0/)  | [Setup Environment](monitor_nodered_csv_importer_1.0/setup)                           |
|                                                                     | [Get Node Red Script](monitor_nodered_csv_importer_1.0/get_script)                    |
|                                                                     | [Edit and Run Script](monitor_nodered_csv_importer_1.0/adjust_script)                 |
| [Suite Overview](mas_8.6/)                                          | [Monitor and Visual Inspection](mas_8.6/demo-monitor-mvi)                             |
|                                                                     | [Import Digital Twin into Visual Inspection](mas_8.6/demo-dtx-mon-mvi)                |
|                                                                     | [Import Digital Twin into Manage](mas_8.6/demo-dtx-manage)                            |
|                                                                     | [Service Requests to Work Orders with Mobile Assist](mas_8.6/demo-mobile-assist-safe) |
|                                                                     | [Understand Safety](mas_8.6/demo-safety)                                              |
|                                                                     | [Understand Asset Health and Predictive Maintenance](mas_8.6/demo-health-predict)     |
| [Health and Predict Utilities v8.6](hpu_8.6/)                       | [Understand Health and Predict](hpu_8.6/demo-health-predict/)                         |  


### Maximo Application Suite 8.5
| Lab                                           | Exercise                                                                  |
|-----------------------------------------------|---------------------------------------------------------------------------|
| [Monitor Functions](monitor_8.5/)             | [Setup_Local Python Environment](monitor_8.5/setup_local_environment)     |
|                                               | [Setup Device Types](monitor_8.5/hopper_asset)                            |
|                                               | [Create Constant](monitor_8.5/constant)                                   |
|                                               | [Create Python Function](monitor_8.5/python_function)                     |
|                                               | [Create Python Expressions](monitor_8.5/python_expressions)               |   
|                                               | [Create Value Card in Dashboard](monitor_8.5/add_value_card)              |
| [Monitor Auto AI](monitor_autoai_8.5/)        | [Setup Local Environment](monitor_autoai_8.5/setup_local_environment)     |
|                                               | [Create Device Types](monitor_autoai_8.5/create_device_types)             |
|                                               | [Setup Devices](monitor_autoai_8.5/create_devices)                        |
|                                               | [Send Simulated Data](monitor_autoai_8.5/send_device_simulated_data)      |
|                                               | [Create Logical and Physical Interfaces](monitor_8.5/create_interfaces)   |
|                                               | [Create Dahsboards](monitor_autoai_8.5/create_dashboards)                 |    
|                                               | [Identify Model](monitor_autoai_8.5/create_model)                         |
|                                               | [Deploy Model](monitor_autoai_8.5/deploy_prediction_model_function)       | 
|                                               | [Add KPIs and Alerts to Dashboards](monitor_autoai_8.5/update_dashboards) |
| [MAS Environmental Monitoring](sustain_mas/)  | [Sustainability Lab](sustain_mas)                                         |

### Maximo SaaS (DEPRECATED)

| Lab                                           | Exercise                                                                     |
|-----------------------------------------------|------------------------------------------------------------------------------|
| [Monitor SaaS](monitor_saas/)                 | [Connect Devices](monitor_saas/connect_device)                               |
|                                               | [Monitor Anomalies](monitor_saas/monitor_anomalies)                          |
|                                               | [Create Service Requests From Alerts](monitor_saas/service_request)          |
|                                               | [Create Image Cards on Dashboards](monitor_saas/add_imagecard)               |    
|                                               | [Create Summary Dashboards Using Dimensions](monitor_saas/create_dimensions) |
|                                               | [Create Value Cards on Dashboards](monitor_saas/addvaluecard)                |
| [Visual Inspection (1.3.0)](mvi_saas/)        | [Create a Data Set and Prepare Images](mvi_saas/exerciseOne/exercise1-1)     |
|                                               | [Train and Deploy a Model](mvi_saas/exerciseOne/exercise1-2)                 |
|                                               | [Project Creation for Inspections](mvi_saas/exerciseOne/exercise1-3)         |
|                                               | [Conduct Inspections](mvi_saas/exerciseTwo/exercise2-2)                      |
|                                               | [Setup Fail Pass Rate](mvi_saas/exerciseTwo/exercise2-3)                     |
 
### CONTRIBUTE TO MAXIMO LABS

You can contribute by providing feedback or content for the Maximo Labs. 

1.  Submit issues or enhancements that you would like to see to these labs.
2.  Contribute Content by becoming an author contributor of the labs.


***Submit issues or enhancements***

You can submit any feedback, questions or issues on the labs.  We will address them in the issue or with improvements to
future versions of the lab. Submit issues you encounter with the lab at [https://github.com/IBM/maximo-labs/issues](https://github.com/IBM/maximo-labs/issues).  Provide a description of the problem.  Steps to reproduce the problem.  What you expected should be there or happen in the lab.

For bugs please include steps to reproduce your issue.  For enhancements please include why you need the improvement and suggestions for how we can improve a lab.

***Contribute Content***

If you want to write new labs or improve the existing labs, then find the instructions to do so here:<br>

| Lab                                           | Exercise                                                                     |
|-----------------------------------------------|------------------------------------------------------------------------------|
| [Contribute to Labs](contribute/)             | [Add content](contribute/add_content)                                        |
|                                               | [Create new lab](contribute/create_new)                                      |
| [New Lab Template](template_1.0/)             | [Do something](template_1.0/something)                                       |
|                                               | [Do something else](template_1.0/something_else)                             |


---
**UPDATED: 2023-12-29**
---

© 2023 International Business Machines Corporation
