# Setup Watson Studio

In this exercise you will setup and configure Watson Studio to use the Health and Predict notebook templates.  The templates can be used for detecting anomalies and predicting asset failures of assets and for other purposes using Health and Predict - Utilities.

- [Get URL and User credentials](#get-credentials) to access Watson Studio.
- [Create a project](#create-project) and add the setup notebook to your project in Watson Studio.
- [Setup Database Connection]("db-connection") to allow Watson Studio to access DB.
- [Get URL to Download the Healh and Predict Notebooks](download_URL).
- [Create am environment ](create-environemnt-studio)to edit and run your notebooks.
- [Add Notebook From File]("add-notebook-to-studio") to Watson Studio Project.
- [Download the Predict pmlib Python Library Documentation](download-pmlib-doc) used for working with Predict algorithms and automating device and data tasks in Monitor.


## Get URL and User credentials to access Watson Studio
<a name="get-credentials"></a>

Ask your Maximo Application Suite administrator to get your user name and password for Watson Studio,
API keys and URL that you will use to connect to Watson Studio.  You or he can use these steps to get them.

1. To get the Watson Studio URL, login to Maximo Application Suite.  Click on `Adminstration`
![setup assets](/img/apm_8.7/p01.png) 

2. Click on `Configurations` and `Watson Studio`
![setup assets](/img/apm_8.7/p02.png) 

3. Click on `System`  Make note of the URL, user name and password.  You will use it to login to Cloud Pak for Data. 
![setup assets](/img/apm_8.7/p03.png)

4. Open a browser to the URL and use the credentials from the previous steps to login to Cloud Pak for Data.  After logging in you see your Watson Studio Overview page.
![setup assets](/img/apm_8.7/p04.png) 


## Create a Project in Watson Studio
<a name="create-project"></a>

Watson Studio projects are where you:
- Keep your model templates
- Data Assets
- Train deploy and many the Models
- Create and manage environment for training and deploying your models.

Create a project so that you can add and setup Health, Predict and Utilities notebooks using Watson Studio.

1. Click on 'All Projects' where you will then create a new project.
![setup assets](/img/apm_8.7/p05.png) 
 
2. Click 'New Project'. 
![New Project](/img/apm_8.7/p06.png) 

3. Accept default and click 'Next'. 
![Default Value](/img/apm_8.7/p07.png) 

4. Click 'New Empty Project'. 
![New Empty Project](/img/apm_8.7/p08.png)

5. Enter a project name and description.
![setup assets](/img/apm_8.7/p09.png) 

6. Click `Add to Project`.
![setup assets](/img/apm_8.7/p10.png) 

This is how you will add the Predict notebook templates to your project that you download later in this exercise.


## Setup Database Connection in Watson Studio
<a name="db-connection"></a>

Setup database security to allow Watson Studio to access the Maximo Application Suite databases.   

1. Follow the instructions in the documentation to download the database security certificate file  [Database PEM file](https://www.ibm.com/docs/en/mhmpmh-and-p-u/8.5.0?topic=started-getting-application-administrators#concept_ir4_mc2_jmb__db2cert)

2. Open a separate browser window and login to Cloud Pak For Data Console to get the database pem file.  Click on the `Hamburger` menu, `Instances` Select the database name used by Maximo Monitor.  The database name should include `IOT` in the name. 
![Database instance](/img/apm_8.7/p20.png) 

3. Click on `Console` to download  the database pem file.  If you receive an error saying the console hasn't been provisioned ask your IT Administrator to install it.
![Console](/img/apm_8.7/p21.png) 

4. Click on the `Download SSL Certificate`
![Download](/img/apm_8.7/p23.png) 

5. Return to the browser window that has Watson Studio Project you created earlier.  Add the database pem file as a data asset.  Drag and drop the database pem file into the data assets. 
![drag pem file](/img/apm_8.7/p22.png) 

!!! note

    Ensure Datascience User Belongs to Predict Security Group.   In Maximo Manage, add the user to the PREDICT and PREDICTGROUPING group in the user definition as shown in the screen below.
    
![Security Groups](/img/apm_8.7/p15.png) 


## Get URL to Download the Health and Predict and Utilities Notebooks
<a name="download_URL"></a>

These notebooks templates are what you use to calculate asset health and risk scores, asset end of life probability, anomaly detection, predict EOL failure dates and more.  

The Health and Predict notebooks require programmatic access and credentials to access Maximo Application Suite.  You will need these values to create the URL that allows you to download the Health, Predict and Utilities notebooks zip file.  The URL looks  like:

    https://`EXTERNAL_APM_API_BASEURL`/ibm/pmi/service/rest/ds/`APM_ID`/`APM_API_KEY`/file/download


| Environment Variable | Find It In                                                                                           | Used For                               |
|--------------------------|------------------------------------------------------------------------------------------------------|----------------------------------------|
| APM_ID	                  | The value for the mxe.PMIId system property.                                                         | Used to train and score all notebooks  | 
| APM_API_BASEURL	         | The root of the URL value for the PREDICTAPI endpoint.                                               | Used to train and score all notebooks  |
| EXTERNAL_APM_API_BASEURL | The route location for the Predict project retrieved from the Red Hat® OpenShift® Container Platform. | Used to download the notebooks         |
| APM_API_KEY              | The API key from MAS Integration Application to programatically access Predict APIs.                 | Used to download and use the notebooks |

### Get mxe.PMIId value used for APM_ID

1. To get the value of mxe.PMIId, open a browser and access the Health and Predict application.  See below example of where you can find these values in Health and Predict system properties.  Click on `Application Administration` 
![system properties](/img/apm_8.7/p26.png) 

2. Click on `System Configurations`, `Platform Configurations` and `System Properties`.   Click on `Funnel` icon to filter properties that begin with `property name` PMI.
![PMI Search](/img/apm_8.7/p25.png) 

It should look like:
`APM_ID` = `mxe.PMIId` = f3fake48


### Get PREDICTAPI endpoint used for APM_API_BASEURL

1. To get  `APM_API_BASEURL` from the value from `PREDICTAPI endpoint`. You can find `endpoints` in Health and Predict Adminstration application by searching on `End Points`.  Click on `Application Administration` 
![Adminstration](/img/apm_8.7/p26.png) 

3. Click in search field and search application for `End Points` 
![End Points](/img/apm_8.7/p35.png) 

4. Note the URL for the `PREDICTAPI` endpoint.
![End Points](/img/apm_8.7/p34.png) -

It should look like:
`APM_API_BASEURL` = `PREDICTAPI` endpoint = https://main.predict.ivt11rel87.ivt.suite.maximo.com

### Get root location for the EXTERNAL_APM_API_BASEURL

1. Open a browser and access the Openshift Console MAS is deployed on.  For IBM Cloud deployments goto `https://cloud.ibm.com`, 
select your `account` from the drop down menu and click `Clusters`
![IBM Cloud Account](/img/apm_8.7/p29.png)

2. Under `Resources` click on your cluster resource.
![Choose Cluster Resource](/img/apm_8.7/p30.png) 

3. Click on `Openshift Web Console`
![Openshift Console](/img/apm_8.7/p31.png) 

4. Click on `Projects`. Search on `Predict` and Click on `Project`
![Choose Cluster](/img/apm_8.7/p33.png) 

5. Click on `Project`. Search on `Predict` and Click on `Project`
![Choose Cluster](/img/apm_8.7/p35.png)

6. Click on `Project`. Search on `Predict` and Click on `Project`
![Choose Cluster](/img/apm_8.7/p36.png) 

7. Click on `Project`. Search on `Predict` and Click on `Project`
![Choose Cluster](/img/apm_8.7/p35.png)

8. Pick location

    https://masdev.predict.devtest.hpdevcloud-6xxxxxxxxxxxxxx91ab-0000.us-south.containers.appdomain.cloud/ibm/pmi/service

5. Trim the URL end to get the  `APM_API_BASEURL`  by removing `/ibm/pmi/service`.

It should look like:
`EXTERNAL_APM_API_BASEURL` = https://masdev.predict.devtest.hpdevcloud-6xxxxxxxxxxxxxe91ab-0000.us-south.containers.appdomain.cloud


### Get APM_API_KEY

API keys are used by the notebooks to make program calls to the Health and Predict APIs.   API keys are created for specific users or programs using the `Administration tools`.
1. In Health and Predict and Utilities menus on the left, click on `Application Administration` to open the `Start Center`
![Administration](/img/apm_8.7/p47.png) 

2. Click `Administration` and sub menu `Administration`
![Administration](/img/apm_8.7/p51.png) 

3. Click on `Integration` menu to access the `Start Center` where you can create keys.
![Administration](/img/apm_8.7/p48.png) 

4. Click on `API Keys` menu and the `Add API Key` button to create an API keys or select an API key from those available.
![Administration](/img/apm_8.7/p53.png)

5. Click `Copy key` to get `APM_API_KEY` string you need to create the URL to download the zip file of Predict Notebooks.
![Choose Cluster](/img/apm_8.7/p34.png) 

   
## Download the model template notebooks

Using the key value pairs in the previous steps you wil create the URL to download the Predict notebooks from a browser.

Replace key variable you collected in the previous steps with the values to create the download URL:

For example: 

    https://`EXTERNAL_APM_API_BASEURL`/ibm/pmi/service/rest/ds/`APM_ID`/`APM_API_KEY`/file/download

`EXTERNAL_APM_API_BASEURL` = https://masws.predict.ivt09rel86.fake.suite.maximo.com
`APM_ID` = f3fake48
`APM_API_KEY` = n7gssk_fake_l_fake_486_fake_967_fake_jm8

The final URL becomes:

    https://masws.predict.ivt09rel86.fake.suite.maximo.com/ibm/pmi/service/rest/ds/f3fake48/n7gssk_fake_l_fake_486_fake_967_fake_jm8/file/download

1. Make note of the values and create the URL you can use in the browser to download the zip file. 
Here is an example download URL for Predict model notebook templates zip file using the values from the previous steps. 

2. Open a browser and use the URL to download and save the Predict Model templates zip file locally.  

3. Unzip the models file and then upload the notebooks one at a time into your Watson Studio Project Assets. In your finder or file explorer, double click on the zip file to extract the notebooks. Make note of where you unzipped the file, as you will need it for the next steps.
![setup assets](/img/apm_8.7/p02.png)

!!! note
   Be sure to prepend your name initials to any model you upload to shared project areas when doing labs so you can remember which project notebook template was yours.


##  Set up an `Environment` to train and test your models in Watson Studio
<a name="create-environemnt-studio"></a>

The default environment is only 1 vCPU.  You must have an environment with at least 4 vCPUs in order to train the Predict Models.

1. In your Watson Studio project, create a 4 vCPU environment by clicking on `environment` and clicking the `New enviornment definition` link. 
![setup assets](/img/apm_8.7/p39.png) 

2. Enter a name for the environment.  Hit the plus button to increase the vCPUs to 4.   Choose Python v3.8 for the `Software version`.   Press the 'Create' button to create then environment.
![setup assets](/img/apm_8.7/p39.png) 



##  Add Notebook From File to a Watson Studio Project
<a name="add-notebook-to-studio"></a>
You can use the steps below to add any notebook from File to your Watson Studio Project.   Notebooks are used to create scores, predictions and for other algorithms in Health and Predict - Utilities.  In this exercise you will add a Predict Notebooks you will use to your Project.   Select the `WS - Predicted Failure Date-Survive Analysis.ipynb` notebook template that you will use in the next exercise to predict failure dates of the pump.

1. Add a Predict notebook by file option to your Watson Studio Project.  Return to your Cloud Pak for Data project.  Search for your `project` by name.  Click on the `project name` link to open your project.  
![add_to project](/img/apm_8.7/p46.png) 

2. Add one of Predict notebook you unzipped earlier.  Click `Add to Project` and select `notebook` option.
![setup assets](/img/apm_8.7/p11.png) 

3. Click the `From File` tab.  Drag and drop the notebook you would like to add to the area to add notebooks.  To save time in the next exercise choose the notebook for `WS - Predicted Failure Date-Survive Analysis` replace `WS` with your initials when naming the notebook.
![setup assets](/img/apm_8.7/p12.png) 

4. Prepend your name initials to the name of the model file template you uploaded.   Select the runtime environment you created in the previous step that has 4 vCPUs.  Drag and drop your notebook template file into the area indicated below.  Click on the `Create` button to create the notebook. 
![add_to notebook](/img/apm_8.7/p41.png) 

5. Confirm that you see 4 vCPUs for the notebook as it starts. 
![confirm notebook](/img/apm_8.7/p45.png) 

6. If the notebook has the wrong number of vCPUs you can change the environment by clicking on the 'information' icon and selecting the right `Environment` from the dropdown select box.
![setup assets](/img/apm_8.7/p42.png) 

7. If you had to change the `environment`,  click the `Confirm` button to restart the notebook editor in Waston Studio
![add_to project](/img/apm_8.7/p43.png) 
    

##  To Stop and Restart a Predict Model to a Watson Studio Project
<a name="setup-studio"></a>

If your notebook environment fails to start you can restart the environment by following the steps below.

1. Add one of the Predict notebooks to your Watson Studio Project. Click the `information` icon, `environment` tab and `restart` from the `Runtime Status` select box.
![add_to project](/img/apm_8.7/p54.png) 

2. Confirm your selection to restart the notebook by pressing the `Change` button. 
![add_to project](/img/apm_8.7/p55.png) 


## Download Predict pmlib Python Library Documentation
<a name="download-pmlib-doc"></a>
Predict pmlib Python Library is used for working with Predict algorithms and automating device and data tasks in Monitor.or open the Predicted Failure Data template notebook to your Project.  Use the steps from the previous exercise [Add Notebook From File to a Watson Studio Project](setup_watson_studio.md) Prepend your initials to the template.  If you already have uploaded the notebook, open it with Watson Studio.

1. You can download the documentation using a URL similar to the one you create in the previous Exercise for downloading the `doc-8.5.1.zip` that contains the html files for the `pmilib` documentation.

For example: 

    https://`EXTERNAL_APM_API_BASEURL`/ibm/pmi/service/rest/ds/`APM_ID`/`APM_API_KEY`/file/download

2. Unzip the `doc-8.5.1.zip` file you downloaded

3. Click on the file `index.html` file you unzipped.  The browser should open with the documentation below.
![add_to project](/img/apm_8.7/p59.png)   


Congratulations you have seen how to upload, start and restart Predict notebook in Watson Studio.    You have also learned how to download and access the pmilib documentation that you will use in the next exercises.

In the next exercises you will learn how to use these notebook templates to detect anomalies and predict asset failures.   You will start by update and running setup notebooks to create asset types in Health and Predict.  
