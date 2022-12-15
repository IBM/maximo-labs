# Load Utitlies Health and Future Scores via Notebook
This notebook will create a health scoring group and the associated OOTB score type, like Health, Risk, Criticallty, End of Life and do the current scoring and feed future scores from a csv file that defined or extract future scores from third party for each asset. These instructions will be based off using the '1.3_Create-ST-SG_FutureScores.ipynb' file with the ST demo data which included in hpu_csv_demo or hpu_csv_st data set at `https://github.ibm.com/Watson-IoT/eam-hpu-lab/csv-files`.

In this exercise you will use Watson Studio, MAS Health and Predict Utilities to:

1. [Upload the and Run the HPU Health Score Group notebook](#run_notebook) to create score group using forecast notebook template from `https://github.ibm.com/Watson-IoT/eam-hpu-lab/notebooks`. 
2. [Confirm](#confirm_upload) Scoring groups have been created and scores have been calculated
3. [Handle Errors](#error_handling) that may come up in the process

This notebook can only be run once per environment per site with the same set of assets. 

## Pre-requisites 

- Ensure you have access to asset data files for the MAS Health and Predict Utilities Demo Data
- Ensure you have loaded the hpu_csv_demo data or hpu_csv_st into the Health and Predict Utilities system by completing the [Load Data into Manage](../../apm_8.7/asset_data_loader) lab for the Utilities data.
- Upload future notebook cfg file in HPU project as a data asset.   
    &#8194;&#8194;Upload `IBM-future-score-from-csv-sample-6.0.0-demo.cfg` from `https://github.ibm.com/Watson-IoT/eam-hpu-lab/notebooks` to HPU project.
    ![Upload data asset1](/img/apm_8.9/future_sg5.png){ width=30% height=30% }
    ![Upload data asset2](/img/apm_8.9/future_sg6.png)

- Upload future notebook HPU project.
<a name="upload_notebook"></a>   
    &#8194;&#8194;I. Upload the Creat Substation Transformer Future Scores' notebook from the github in the `https://github.ibm.com/Watson-IoT/eam-hpu-lab/notebooks` to your project.    
    Click 'New asset' button in the project, and filter for notebook type.   
        &#8194;&#8194;![New Asset](/img/apm_8.9/pump_sg1.png)     
        &#8194;&#8194;![Choose notebook type](/img/apm_8.9/pump_sg2.png){ width=50% height=50% }

    &#8194;&#8194;II. Select the `IBM-future-score-from-csv-sample-6.0.0-demo.ipynb` notebook, and then click Create button. 
        &#8194;&#8194;![Choose notebook](/img/apm_8.9/future_sg7.png)   

    &#8194;&#8194;III. Save the notebook to a latest version.   
        &#8194;&#8194;![Save version](/img/apm_8.9/future_sg8.png){ width=50% height=50% }

    &#8194;&#8194;IV. Create a job named 'Run-IBM-future-score-from-csv-sample-6-0-0-demo' for the notebook.
        &#8194;&#8194;![Create job1](/img/apm_8.9/future_sg9.png)   
        &#8194;&#8194;![Create job2](/img/apm_8.9/future_sg10.png)   
    &#8194;&#8194;Click Next, Next, Next, then Create. A pop up message will show indicate the job is created successfully.   
        &#8194;&#8194;![Create job3](/img/apm_8.9/future_sg11.png){ width=80% height=80% }   


!!! note

    This forecast notebook cfg file and notebook should upload to the configured project for HPU.   
    ![Peoject info](/img/apm_8.9/future_sg1.png)   
    Check the project id after entering a project to ensure that's the same one that's configured in system properties for HPU.
    ![Peoject id](/img/apm_8.9/future_sg2.png)   

## Upload files and run the Data Loader Notebook
<a name="run_notebook"></a>

1. Upload the Creat Substation Transformer Future Score Groups' notebook from the github in the `https://github.ibm.com/Watson-IoT/eam-hpu-lab/notebooks` to your project.    
Click 'New asset' button in the project, and filter for notebook type.And select the `1.3_Create-ST-SG_FutureScores.ipynb` notebook, and then click Create button. Refer to the snapshot in [Upload future notebook HPU project](#upload_notebook)

2. Click on the `pencil` icon next to your notebook to open it in edit mode.

3. If the notebook fails to start, restart it.  Click on the `i` icon , `Environment` tab,  `Running status` dropdown select box and choose `Restart`

    ![Restarting Environment](/img/apm_8.7/HPU_dataloader_3.png){ width=30% height=30% } 

4. Run the first code cell to import packages

5. Fetch MX_BASE_URL and MX_APIKEY as instructued below and store it as HPU_Envs.json file in below format, then upload to ws project(If it's already prepared in previous exercises, skip this step).    
    ```
    {
    "Instruction":{
        "MX_BASE_URL":"Extract health or manage host, and replace ******* in https://*******/maximo/, e.g Get main.manage.ivt13rel88.ivt.suite.maximo.com from https://main.manage.ivt13rel88.ivt.suite.maximo.com/maximo/oslc/graphite/relengineer/index.html",
        "MX_APIKEY":"Application Administration -> Go To Administration -> Integration -> API Keys -> Copy key from admin user card (e.g. 6805t46gn3tef37pu0picpg9vcq3hsmamm1enc43), or Add API key if not exist."
    },
    "MX_APIKEY":"********************",
    "MX_BASE_URL":"http://health-team31.fyre.ibm.com:9084/maximo/"
    }
    ```   

6. Update the site id value to your `SITE_ID` in the second cell

7. Run the next cell to define the API call for Maximo

8. Run the next 3 cells to define function for creating the following:

    1. The query that will be used to build the health scores
    
    2. Get the scores list and activate the scores
    
    3. Create the asset group, create scores for the asset group and clean up
    
9. Run the next cell to create the query for the Asset Scoring Group. This query will be made up of Asset Type and Site ID and prefix

10. Clean up and then create the Asset Scoring Group using the query from the previous cell, Build the scores with future notebook, and activate the scores, trigger the calculation. Wait for 5 minutes for the calculation to finish.

## Confirm Proper Score Group Created And Check Future Scores in Matrix
<a name="confirm_upload"></a>
The following steps will confirm that the score group was created properly

1. Navigate to `Maximo Health and Predict for Utilities` for the provided environment.

2. Go to the `Scoring and DGA Settings` application within Maximo H&PU.

3. Search for your Org or Site and notice that there are one score group created for Substation Transformer Assets. 
    ![Score Groups](/img/apm_8.9/future_sg12.png)   
4. Click into the score group and notice all the score types created via the the notebook listed in the `Group Details` section, and it's connect to the future notebook.   
    ![Group Info](/img/apm_8.9/future_sg13.png)   
5. Click into any asset and see that the scores have calculated.   
    ![Scores](/img/apm_8.9/future_sg14.png)   
6. Check future scores in Matrix.   
    Go to Assets page, select the same query that is used in score group. And click the Matrix switch icon to switch to Matrix view.   
    ![Choose query](/img/apm_8.9/future_sg15.png)     

    Click year plus button to check the summary information for future year, e.g 2023
    ![future 1](/img/apm_8.9/future_sg16.png)    
    ![future 2](/img/apm_8.9/future_sg17.png)     
    Click any cell to drill in to see the related assets in a table view. Click year plus button to see which assets are in this range in next year and also show the next year score in the table.
    ![future 3](/img/apm_8.9/future_sg18.png)   


Congratulations you have seen how to use this notebook to create some future score and check the future scores in Matrix.

In the next exercise you will learn how to train a wml model, and forecast future score for each asset using the registered wml model in a notebook.