# Train a wml model based on assets' history scores and forecast future scores
By default, MAS Health and Predict Utilities supports to forecast Risk and EOL scores. User can enable forecast by setting two parameters `healthlib.set_FutureScore_enablement(enablement=True)` and `healthlib.set_FutureScore_numOfyear(numOfyear=10)` in any notebook, and save to the latest version, healthlib will calculate Risk and EOL future score as EOL is a curve and by default Risk = Criticality * EOL , as time goes by, we can have a future EOL score, hence the future Risk score.

In some cases, user may want to forecast Health score, MAS Health and Predict Utilities also supports to use predict model to train a model based on historical score data, and register in WML, then in actual scoring notebook, write some code to get future scores from WML.   
For this kind of requirement, MAS Health and Predict Utilities has two notebook and one cfg file templates.       `IBM-Asset-HealthScore-Forecast-Sample-6.0.0.ipynb` is for trainning and register a forecast model, `IBM-future-score-from-predict-sample-6.0.0.ipynb` and `IBM-future-score-from-predict-sample-6.0.0.cfg` are for creating a Substation Transformer Score Group which includes forecast Health score.      
Ideally, predict model can be used any score which has historical scores, not just for Health.

In this exercise you will use Watson Studio, MAS Health and Predict Utilities to:   
1. [Create Score Group](#create_sg) Create a Substation Transformer Score Group using IBM-future-score-from-predict-sample-6.0.0.ipynb notebook which include the logic to do Health Score forecast based on wml model.       
2. [Train WML Model](#train_model) Use IBM-Asset-HealthScore-Forecast-Sample-6.0.0.ipynb template to train a forecast model and register in wml.    
3. [Trigger Calculation](#forecast) Trigger calculation in Score Group detail page.    
4. [Check Future Score in Matrix](#confirm_results) Future scores have been forecasted.   
5. [Handle Errors](#error_handling) that may come up in the process.   

## Pre-requisites 

- Ensure you have access to asset data files for the MAS Health and Predict Utilities Demo Data
- Ensure you have loaded the hpu_csv_demo data or hpu_csv_st into the Health and Predict Utilities system by completing the [Load Data into Manage](../../apm_8.7/asset_data_loader) lab for the Utilities data.   
- Data scientist to prepare the new cfg and notebook for forecasting future scores in advance.E.g in the cfg template, Health calculate method is replaced to use `calculate_health_score`, and in notebook template register `calculate_health_score` function, this function will handles both current and future scores.   
    &#8194;&#8194;![Health Function](/img/apm_8.9/future_wml1.png){ width=80% height=80% }

!!! note

    This forecast notebook template that that deployed along with HPU are the Substation Transformers templates.   
    User need refer to the template to customize their own cfg and notebook for other Asset Types or Scores.

## Create a Score Group using forecast notebook template.
<a name="create_sg"></a>
In this step, we’ll create our score using the `Connecting group to notebook` option to connect to the `IBM-future-score-from-predict-sample-6.0.0` notebook.  You will use the query function to identify the Substation Transformer assets in the group then create the group.

1. From the left cascading menu click `Scoring and DGA settings`.  Click the `Groups` tab.
    ![groups](/img/apm_8.9/P8.png)	

2. Click button `Create a scoring and DGA group` and fill in the form, select a query that matches the assets you would like to include in this group. Search for the `Query name` and click `Apply` button.  If you don't see one that fits your need
create a query to choose the right assets to add your score to.    
    &#8194;&#8194;![creat groups](/img/apm_8.9/future_wml2.png){ width=90% height=90% }   

3. Click `Create` button to create and review the assets in the scored assets list to ensure the assets you want to have this score in are are listed.   
    ![group detail](/img/apm_8.9/future_wml3.png)	

4. Click into the score and active it one by one.    
    ![active scores1](/img/apm_8.9/future_wml4.png)	   
    ![active scores2](/img/apm_8.9/future_wml5.png)	   


## Train WML Model
<a name="train_model"></a>

1. Login to waston studio, and open the HPU project.
    
2. Find the trainning template `IBM-Asset-HealthScore-Forecast-Sample-6.0.0.ipynb`, click the notebook name, and then click on the `pencil` icon next to your notebook to open it in edit mode.

3. If the notebook fails to start, restart it.  Click on the `i` icon , `Environment` tab,  `Running status` dropdown select box and choose `Restart`.    
    ![Restarting Environment](/img/apm_8.7/HPU_dataloader_3.png){ width=30% height=30% } 

4. Update the first code cell to fill in the env connection information including `maximoUrl`,`maximoApiKey`,`expgroupname`    
    a. `maximoUrl` can be extracted from health or manage url, e.g Get main.manage.ivt13rel88.ivt.suite.maximo.com from    https://main.manage.ivt13rel88.ivt.suite.maximo.com/maximo/oslc/graphite/relengineer/index.html".    
    b. `maximoApiKey` can be found by go to "Application Administration -> Search and enter the API Keys application, then copy key from admin user card.    
    c. `expgroupname` is the group id which you can find in the group detail page.     
    ![get sgid](/img/apm_8.9/future_wml7.png){ width=60% height=60% }    

    ![update env](/img/apm_8.9/future_wml6.png)	      

5. Update the cfg file name in below two cells if you have customized your own customized future score notebook and cfg based on the `IBM-future-score-from-predict-sample-6.0.0.ipynb` and `IBM-future-score-from-predict-sample-6.0.0.cfg` templates.
    ![update cfg1](/img/apm_8.9/future_wml9.png)
    ![update cfg2](/img/apm_8.9/future_wml8.png)

6. Create a deployment space to match the one used the below cell.
    ![deployment space](/img/apm_8.9/future_wml18.png)
    ![deployment space2](/img/apm_8.9/future_wml19.png)

    If you change the default name space, then also need change the deployment space in `IBM-future-score-from-predict-sample-6.0.0.ipynb` and save to the latest version.
    ![update space3](/img/apm_8.9/future_wml24.png)

7. Prepare a Predict_Envs.json follow the instruction as it's used in the notebook.
    ![predict guide](/img/apm_8.9/future_wml17.png)
    ![predict env](/img/apm_8.9/future_wml12.png)
6. Run the first code cell to set the `maximo_context`.

7. Run the next 13 cells to import and install some required packages including healthlib, then use healthlib to export Health historical scores into a csv file.   
    In the last cell, you'll see the historical scores printed, and also can see the file is registered in the watson studio's data asset.   
        ![csv content](/img/apm_8.9/future_wml10.png)   
        ![csv file](/img/apm_8.9/future_wml11.png)   

8. Run the next 6 cells to set some env variables and install pmilib.

9. Skip the next cell which is scenario 1 using multiple csv files for the each asset's training. 

10. Run the next cell which is scenario 2 to set some basic parameters for training, you can update the `pred_win` under `params`, by default, it will predict next 5 years' future score.
        ![predict env](/img/apm_8.9/future_wml13.png)


11. Run the next cell to train the model, it will take some time cause each asset will need to be trained, you can run the following cell multiple times to check the trainning status.
        ![track 1](/img/apm_8.9/future_wml14.png)
        ![track 2](/img/apm_8.9/future_wml15.png)
    After the trainning is done, you'll see the task number matches the asset total number.
        ![track 3](/img/apm_8.9/future_wml20.png)
   
12. Run the remaining cells to register model in WML.If some error when running 34th cell, please ignore and continue run the rest cells.
         ![success](/img/apm_8.9/future_wml21.png)

## Trigger Calculation
<a name="forecast"></a>
The following steps will trigger the forecast for the created Score Group.   

1. Navigate to `Maximo Health and Predict for Utilities` for the provided environment

2. Go to the `Scoring and DGA Settings` application within Maximo H&PU

3. Search for the Score Group created before.    
        ![search](/img/apm_8.9/future_wml22.png)   

4. Click into the Score Group detail, click `Calculate Scores` and allow the scores to calculate. Wait 15 mins for the calculation to finsih.
    ![Calculate Scores](/img/apm_8.9/future_wml23.png)   


## Check Future Score in Matrix
<a name="confirm_results"></a>
The following steps will confirm that the future score are forcasted, check future score in matrix same as the last topic.

1. Navigate to `Maximo Health and Predict for Utilities` for the provided environment.

2. Go to the `Scoring and DGA Settings` application within Maximo H&PU.

3. Search for the Score Group created before.    
        ![search](/img/apm_8.9/future_wml22.png)     

4. Click into any asset and see that the scores have calculated.   
        ![Scores](/img/apm_8.9/future_wml25.png)     

5. Check future scores in Matrix.   
    Go to Assets page, select the same query that is used in score group. And click the Matrix switch icon to switch to Matrix view.   
    ![Choose query](/img/apm_8.9/future_sg15.png)     

    Click year plus button to check the summary information for future year, e.g 2023
    ![future 1](/img/apm_8.9/future_sg16.png)    
    ![future 2](/img/apm_8.9/future_sg17.png)     
    Click any cell to drill in to see the related assets in a table view. Click year plus button to see which assets are in this range in next year and also show the next year score in the table.
    ![future 3](/img/apm_8.9/future_sg18.png)   


Congratulations you have seen how to use notebook train a WML model, and forecast future score, also check the future scores in Matrix.