# Forecast Custom Scores using a Notebook
Use an instructor provided notebook and demo data to create a Health score group and associate it to a score type like Health, Risk, Criticallty, End of Life.  Calculate the current scoring and future forecasted scores using an historical score values provided in a csv file.  Learn also how to extract future scores from third party for each asset. These instructions will be based off using the:

- `1.3_Create-ST-SG_FutureScores.ipynb` file with the ST demo data which included in`hpu_csv_demo` or `hpu_csv_st` data set at  [github.ibm.com/Watson-IoT/eam-hpu-lab](https://github.ibm.com/Watson-IoT/eam-hpu-lab/csv-files)``.

In this exercise you will use Watson Studio, MAS Health and Predict Utilities to:

1. [Upload the and Run the HPU Health Score Group notebook](#run_notebook) to create score group using forecast notebook template from `https://github.ibm.com/Watson-IoT/eam-hpu-lab/notebooks`. 
2. [Confirm](#confirm_upload) Scoring groups have been created and scores have been calculated
3. [Handle Errors](#error_handling) that may come up in the process

This notebook can only be run once per environment per site with the same set of assets. 

## Pre-requisites 

- Ensure you have access to asset data files for the MAS Health and Predict Utilities Demo Data
- Ensure you have loaded the hpu_csv_demo data or hpu_csv_st into the Health and Predict Utilities system by completing the [Load Data into Manage](../../apm_8.7/asset_data_loader) lab for the Utilities data.
- Upload future notebook cfg file in HPU project as a data asset.  Upload `IBM-future-score-from-csv-sample-6.0.0-demo.cfg` from `https://github.ibm.com/Watson-IoT/eam-hpu-lab/notebooks` to HPU project.
    ![Upload data asset1](/img/apm_8.9/future_sg5.png){ width=30% height=30% }
    ![Upload data asset2](/img/apm_8.9/future_sg6.png)


## Upload future notebook HPU project.
<a name="upload_notebook"></a>   

1. Upload the `Create Substation Transformer Future Scores` notebook from the github in the `https://github.ibm.com/Watson-IoT/eam-hpu-lab/notebooks` to your project.    

2. Click 'New asset' button in the project, and filter for notebook type.   
![New Asset](/img/apm_8.9/pump_sg1.png)     

3. Choose notebook type
![Choose notebook type](/img/apm_8.9/pump_sg2.png)

4. Select the `IBM-future-score-from-csv-sample-6.0.0-demo.ipynb` notebook, and then click `Create` button. 
![Choose notebook](/img/apm_8.9/future_sg7.png)   

5. Save the notebook to a latest version.   
![Save version](/img/apm_8.9/future_sg8.png)

6. Create a job named `Run-IBM-future-score-from-csv-sample-6-0-0-demo` for the notebook.
![Create job1](/img/apm_8.9/future_sg9.png)   

7. Click Next, Next, Next, then Create.
![Create job2](/img/apm_8.9/future_sg10.png)   

8. A `Pop up` message will show indicate the job is created successfully.   
![Create job3](/img/apm_8.9/future_sg11.png) 

9. The forecast notebook `cfg` file and notebook should upload to the configured project for HPU.   
![Peoject info](/img/apm_8.9/future_sg1.png)   

!!! note

    Check the project id after entering a project to ensure that's the same one that's configured in system properties for HPU.
    ![Peoject id](/img/apm_8.9/future_sg2.png)   

## Upload Files and run the Data Loader Notebook
<a name="run_notebook"></a>

1. Upload the `Create Substation Transformer Future Score Groups` notebook provided by the instructor from the [github repository](https://github.ibm.com/Watson-IoT/eam-hpu-lab/notebooks) to your project.    
Click `New asset` button in the project, and filter for notebook type.  Select the `1.3_Create-ST-SG_FutureScores.ipynb` notebook, and then click `Create` button. Refer to the instructions in [Upload future notebook HPU project](#upload_notebook)

2. Click on the `pencil` icon next to your notebook to open it in edit mode.

3. If the notebook fails to start, restart it.  Click on the `i` icon , `Environment` tab,  `Running status` dropdown select box and choose `Restart`

    ![Restarting Environment](/img/apm_8.7/HPU_dataloader_3.png){ width=30% height=30% } 

4. Run the first code cell to import packages.

5. Fetch MX_BASE_URL and MX_APIKEY as instructued below and store it as HPU_Envs.json file in below format, then upload to ws project(If it's already prepared in previous exercises, skip this step).    

    
    {
    "Instruction":{
        "MX_BASE_URL":"Extract health or manage host, and replace ******* in https://*******/maximo/, e.g Get main.manage.ivt13rel88.ivt.suite.maximo.com from https://main.manage.ivt13rel88.ivt.suite.maximo.com/maximo/oslc/graphite/relengineer/index.html",
        "MX_APIKEY":"Application Administration -> Go To Administration -> Integration -> API Keys -> Copy key from admin user card or add an API key if does not exist.
    },
    "MX_APIKEY":"********************",
    "MX_BASE_URL":"http://health-team31.fyre.ibm.com:9084/maximo/"
    }
       

6. Update the site id value to your `SITE_ID` in the second cell.

7. Run the next cell to define the API call for Maximo.

8. Run the next 3 cells to define function to create the following:

   - The query that will be used to build the health scores.
    
   - Get the scores list and activate the scores.
    
   - Create the asset group, create scores for the asset group and clean up.
    
9. Run the next cell to create the query for the `Asset Scoring Group`. This query will be made up of `Asset Type` and `Site ID` and `prefix`.

10. Clean up and then create the `Asset Scoring Group` using the query from the previous cell.  Build the scores with future 
notebook, and activate the scores, trigger the calculation. Wait for 5 minutes for the calculation to finish.

## Confirm  Score Group and Scores
<a name="confirm_upload"></a>
To confirm if the Score Group and Scores were created do the following: 

1. Navigate to `Maximo Health and Predict for Utilities` for the provided environment.

2. Go to the `Scoring and DGA Settings` application within Maximo Health and Predict - Utilities.

3. Search for your `Org` or `Site`. Notice that there is a score group created for `Substation Transformer Assets`. 
    ![Score Groups](/img/apm_8.9/future_sg12.png)   

4. Click into the `Score Group` and notice all the `Score Types` created via the notebook listed in the `Group Details` section, and how it's connected to the future notebook.   
    ![Group Info](/img/apm_8.9/future_sg13.png)   

5. Click into any asset and see that the scores have calculated.   
    ![Scores](/img/apm_8.9/future_sg14.png)   

6. Check future scores in `Matrix Page`. Go to `Assets` page, select the same query that is used in score group. Click the 
`Matrix` icon to switch to Matrix page.   
    ![Choose query](/img/apm_8.9/future_sg15.png)     

7. Click `year plus` button to check the summary information for future year, like 2023.
    ![future 1](/img/apm_8.9/future_sg16.png)    
    ![future 2](/img/apm_8.9/future_sg17.png)     

8. Click any cell to drill in to see the related assets in a table view. Click `year plus` button to see which assets are 
in this range in next year and  show the next year score values in the table.
    ![future 3](/img/apm_8.9/future_sg18.png)   


Congratulations you have learned how to use a notebook to create future score forecasts and verified the future scores in Matrix appeared.

In the next exercise you will learn how to train a WML model to forecast future score for each asset using the registered WML model in a notebook.