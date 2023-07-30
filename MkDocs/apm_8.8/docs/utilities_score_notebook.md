# Load Utilities Health Scores via Notebook
Maximo Predict comes with notebook templates to assist in streamlining data uploads of the industry standard health score for utilities assets into Maximo Health. This notebook will Create a health scoring group and the associated health, risk, criticality, effective age, end of life, duval triangle and the history of combustible gases scores. These instructions will be based off using the '1_Create-HPU-ScoreGroups.ipynb' file with the Substation Transformer Health and Predict for Utilities Demo Assets.

In this exercise you will use Watson Studio, Manage and Predict to:

2. [Upload the and Run the HPU Health Score Group notebook](#run_notebook) using a template to upload new Asset and Location Data to Maximo Manage. 
3. [Confirm](#confirm_upload) Scoring groups have been created and scores have been calculated
4. [Handle Errors](#error_handling) that may come up in the process

!!! note

    You must complete the previous exercise for [Setup Watson Studio](setup_watson_studio.md) before you start this exercise.

This notebook can only be run once per environment per site with the same set of assets. 

## Pre-requisites 

- Review Predict documentation for the [list of available models](https://www.ibm.com/docs/en/mhmpmh-and-p-u/8.5.0?topic=overviews-maximo-predict-850).
- Ensure your MAS Predict environment is running and you have access.  Try your server URL that might look something like: [https://main.predict.ivt11rel87.ivt.suite.myhost.com/ibm/pmi/service/rest/system/info](https://main.predict.ivt11rel87.ivt.suite.myhost.com/ibm/pmi/service/rest/system/info)
- Ensure you have Access to Asset data files for the Health and Predict Utilities Demo Data
- Complete the [Load Data into Manage](asset_data_loader.md) lab for the Utilities data.
- Have the following information from the previous lab: `MX_BASE_URL`, `API_KEY`, `SITE_ID` and `ORG_ID`

!!! note

    It is best to perform this lab in your own Watson Studio Project created using [Setup Watson Studio](setup_watson_studio.md) instructions. If you are using a shared project, ensure you append each file uploaded with your initials and update the file paths in the notebooks to include that change.



## Upload files and run the Data Loader Notebook
<a name="run_notebook></a>

1. Upload the Creat HPU Health Score Groups' notebook from the github in the [Load Data into Manage](asset_data_loader.md) lab to your project. Use the steps from the previous exercise [Add Notebook From File to a Watson Studio Project](setup_watson_studio.md).

2. Select the `1_Create-HPU-ScoreGroups.ipynb` notebook template. 

3. Click on the `pencil` icon next to your notebook to open it in edit mode.

4. If the notebook fails to start, restart it.  Click on the `i` icon , `Environment` tab,  `Running status` dropdown select box and choose `Restart`

![Restarting Environment](/img/apm_8.7/HPU_dataloader_3.png)

5. Run the first cell to import packages

6. Add the `MX_BASE_URL` and `API_KEY` from the previous lab to cell 2

7. Update the site id value to your `SITE_ID` and the prefix value to your org id `ORG_ID` in the second cell

8. Uncomment the asset class you will be uploading. In this lab we will be focusing on only Substation Transformer, so the first `ASSET_CLASS` list containing only one item is uncommented. If we were uploading all demo asset classes available in the github, uncomment the second section. If you have additional assets, use the third list and uncomment as needed.

   1. Here are two ways to comment out a cell: add a `#` to the beginning of each line or add `'''` to the beginning and end of a section of code for it to be ignored when run

![Updated Cell](/img/apm_8.7/HPU_ScoreGroup_1.png)

9. Run the next cell to define the API call for Maximo

10. Run the next 3 cells to define function for creating the following:

    1. The query that will be used to build the health scores
    
    2. Get the scores list and activate the scores
    
    3. Create the asset group, create scores for the asset group and clean up
    
11. Run the next cell to delete any existing asset score groups for your data. If none exists, the cell will output `None`. 

![Output](/img/apm_8.7/HPU_ScoreGroup_2.png)

13. Run the next cell to create the query for the Asset Scoring Group. This query will be made up of Asset Type and Site ID

14. Run the next cell to create the Asset Scoring Group using the query from the previous cell, Build the scores from the Industry Standard Provided notebooks, and activate the scores.

## Confirm Proper Data Upload
<a name="confirm_upload"></a>
The following steps will confirm that the data was uploaded properly

1. Navigate to `Maximo Health and Predict for Utilities` for the provided environment

2. Go to the `Scoring and DGA Settings` application within Maximo H&PU

3. Search for your Org or Site and notice that there are two score groups created - One for Assets and One for Locations. Notice the calculation type is `Connect group to notebook` since the scores are built via notebooks for the specific Asset Classification

![Score Groups](/img/apm_8.7/HPU_ScoreGroup_3.png)
4. Click into the Score Groups and notice all the score types created via the Asset Type specific notebook listed in the `Group Details` section

![Group Configuration](/img/apm_8.7/HPU_ScoreGroup_4.png)
5. Click `Recalculate Scores` and allow the scores to calculate

![Recalculate Scores](/img/apm_8.7/HPU_ScoreGroup_5.png)
6. Click into any asset and see that the scores have calculated
![Scores](/img/apm_8.7/HPU_ScoreGroup_6.png)

Congratulations you have seen how to upload Health and Predict for utilities data via a notebook. You have also gained experience using Jupyter Notebooks in Watson Studio!

In the next exercises you will learn how to use the `1_Create-HPU-ScoreGroups.ipynb` Notebook template to create health scores for Health and Predict for Utilities assets and associate the asset notebook to that created group.