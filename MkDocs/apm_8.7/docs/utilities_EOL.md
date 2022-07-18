# Create End of Life Curve

Maximo Predict comes with notebook templates to assist in streamlining data uploads to Maximo. This notebook will create the End of Life Curve using provided csv files.

These instructions use the notebook named `4_PMI - End of Life Curve HPU.ipynb` file with the Substation Transformer for Health and Predict for Utilities Demo Assets. Note that this uses simulated Pump Data for the sensor readings.

In this exercise you will use Watson Studio and Health and Predict - Utilities to:

2. [Upload the and Run the End of Life Curve Notebook](#EOL_notebook) using a template to Train and Display an End of Life Curve
3. [Confirm](#confirm_upload) the Data Has been uploaded for your assets

!!! note

    You must complete the previous exercise for [Setup Watson Studio](setup_watson_studio.md) before you start this exercise.

## Pre-requisites 

- Review Predict documentation for the [list of available models](https://www.ibm.com/docs/en/mhmpmh-and-p-u/8.5.0?topic=overviews-maximo-predict-850).
- Ensure your MAS Predict environment is running and you have access.  Try your server URL that might look something like: [https://main.predict.ivt11rel87.ivt.suite.myhost.com/ibm/pmi/service/rest/system/info](https://main.predict.ivt11rel87.ivt.suite.myhost.com/ibm/pmi/service/rest/system/info)
- Ensure you have Access to Asset data files for the Health and Predict Utilities Demo Data
- Complete the [Load Data into Manage](asset_data_loader.md) lab for the Utilities data.
- Complete the [Load Utilities Health Scores via Notebook](utilities_score_notebook.md) lab
- Complete the [Create Utilities Predict Group and Upload Sensor Data](utilities_devicedata.md) lab 
- Have the following information from the previous lab: `Predict_Envs.JSON` and `Fast_Execution.JSON`

!!! note

    It is best to perform this lab in your own Watson Studio Project created using [Setup Watson Studio](setup_watson_studio.md) instructions. If you are using a shared project, ensure you append each file uploaded with your initials and update the file paths in the notebooks to include that change.


## Upload and Start the End of Life Curve Notebook
<a name="EOL_notebook"></a>

1. Upload or open the End of Life Curve template notebook to your Project.  Use the steps from the previous exercise [Add Notebook From File to a Watson Studio Project](setup_watson_studio.md)  If you are using a shared project, rename the notebook template by prepending your initials to the template. If this is done, ensure any paths or file names within the notebook are updated as well. If you already have uploaded the notebook, open it with Watson Studio.
Select the `4_PMI - End of Life Curve HPU` notebook template. 

2. Open the notebook. Click on the `pencil` icon next to your notebook.

3. If the notebook fails to start, restart it.  Click on the `i` icon , `Environment` tab,  `Running status` drop down select box and choose `Restart`
![Restarting Environment](/img/apm_8.7/HPU_dataloader_3.png)

## Run the Notebook
<a name="run_notebooks"></a>


### Install the Maximo Predict SDK

1. Read the introduction to the End of Life Curve Notebook.

2. Run the first cell to define the requirements and some environment variables to run this notebook. This cell also checks that the precursor notebook has been run.

3. Run the next cell to set the `asset_group_id` from the stored asset group id in the JSON file produced from the Fast Start Data Loader notebook. Ensure the printed asset group ID matches your asset group.

![Asset Group ID](/img/apm_8.7/hpu_eol_1.png)

4. Run the next cell to define the API keys used to call Maximo Predict from the `Predict_Envs.JSON` file

5. Skip the next cell. It should be commented out, but it would be used to define the API and Predict Environment variables manually if the `Predict_Envs.JSON`file was not available.

6. Run the next cell to import the os, trim the provided base url to be used when downloading `pmlib` later in the notebook and used to contact the environment via API.

7. Run the following two cells to uninstall and reinstall the `pmlib` library. This is done to ensure you have the correct version.

### Set up the Model Training Pipeline, Train, Register and Enable the Model

1. Run the first cell define the model settings for the Pipeline.

2. Run the next cell to train the model. Some models take time to train.

3. Once that process is complete, register the model to your asset group by running the next cell

4. Finally, Run the next cell to enable it and determine how often it will be run in monitor. This is the last cell to be run in this notebook.

## Confirm Model Registration
<a name="confirm_upload"></a>

1. Navigate to Maximo Health and Predict for Utilities within your environment

2. Use the left-hand menu to go into `Predict Grouping`
   ![Predict Grouping](/img/apm_8.7/hpu_fs11.png) 

3. Select your asset group
![Predict Grouping](/img/apm_8.7/hpu_2fsl_8.png)

4. Click into your asset group and ensure you have End of Life Curve listed under `Trained instances registered for this group` and select an asset to go to the Health Dashboard

![Predict Grouping](/img/apm_8.7/hpu_eol_2.png)

8. Scroll down and expand the `Predict` section to ensure the End of Life Curve is visible.

![End Of Life Curve](/img/apm_8.7/hpu_eol_3.png)

!!! note

    Recall in the [Create Utilities Predict Group and Upload Sensor Data](utilities_devicedata.md) lab only some assets have sensor data. If an asset does not have sensor data, it will not have Predict data


Congratulations you have created an End of Life Curve and associated it to your assets!

