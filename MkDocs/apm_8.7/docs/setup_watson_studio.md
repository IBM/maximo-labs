# Setup Watson Studio

In this exercise you will setup and configure Watson Studio to use the Health and Predict notebook templates.  The templates can be used for detecting anomalies and predicitng failures of assets and for other purposes using Health and Predict and Utilities.

- [Get URL and User credentials](#get-credentials) to access Watson Studio.
- [Create a project](#create-project) and add the setup notebook to your project in Watson Studio.
- [Setup Database Connection]("db-connection") to allow Watson Studio to access DB.
- [Get URL to Download the Healh and Predict Notebooks](download_URL).
- [Create am environment ](create-environemnt-studio)to edit and run your notebooks.
- [Upload the Predict Notebooks]("setup-studio") to Watson Studio Project.



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

    https://`EXTERNAL_APM_API_BASEURL`/ibm/pmi/service/rest/ds/`APM_ID`/`APM_API_KEY`/file/download/filename=pmlib


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
![End Points](/img/apm_8.7/p34.png) 

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

    https://masws.predict.ivt09rel86.fake.suite.maximo.com/ibm/pmi/service/rest/ds/f3fake48/n7gssk_fake_l_fake_486_fake_967_fake_jm8/lib/download

1. Make note of the values and create the URL you can use in the browser to download the zip file. 
Here is an example download URL for Predict model notebook templates zip file using the values from the previous steps. 

2.  Open a browser and use the URL to download and save the Predict Model templates zip file locally.  

3. Unzip the models file and then upload the notebooks one at a time into your Watson Studio Project Assets. In your finder or file explorer, double click on the zip file to extract the notebooks. Make note of where you unzipped the file, as you will need it for the next steps.
![setup assets](/img/apm_8.7/p02.png) 



##  Set up an `Environment` to train and test your models in Watson Studio
<a name="create-environemnt-studio"></a>

The default environment is only 1 vCPU.  You must have an environment with at least 4 vCPUs in order to train the Predict Models.

1. In your Watson Studio project, create a 4 vCPU environment by clicking on `environment` and clicking the `New enviornment definition` link. 
![setup assets](/img/apm_8.7/p39.png) 

2. Enter a name for the environment.  Hit the plus button to increase the vCPUs to 4.   Choose Python v3.8 for the `Software version`.   Press the 'Create' button to create then environment.
![setup assets](/img/apm_8.7/p39.png) 



##  Add Predict Model to a Watson Studio Project
<a name="setup-studio"></a>

1. Add one of the Predict notebooks to your Watson Studio Project.  Return to your Cloud Pak for Data project.  Search for your `project` by name.  Click on the `project name` link to open your project.  
![add_to project](/img/apm_8.7/p46.png) 

2. Add one of Predict notebook you unzipped earlier.  Click `Add to Project` and select `notebook` option.
![setup assets](/img/apm_8.7/p11.png) 

3. Click the `From File" tab.
![setup assets](/img/apm_8.7/p12.png) 

4. Prepend your name initials to the name of the model file template you uploaded.   Select the runtime environment you created in the previous step that has 4 vCPUs.  Drag and drop your notebook template file into the area indicated below.  Click on the `Create` button to create the notebook. 
![add_to notebook](/img/apm_8.7/p41.png) 

5. Confirm that you see 4 vCPUs for the notebook as it starts. 
![confirm notebook](/img/apm_8.7/p45.png) 

6. If the notebook has the wrong number of vCPUs you can change the environment by clicking on the 'information' icon and selecting the right `Environment` from the dropdown select box.
![setup assets](/img/apm_8.7/p42.png) 

7. If you had to change the `environment`,  click the `Confirm` button to restart the notebook editor in Waston Studio
![add_to project](/img/apm_8.7/p43.png) 
    
Congratulations you have seen how to upload a Predict notebook into Watson Studio.   In the next exercises you will learn how to use these notebook templates to detect anomalies and predict asset failures.   You will start by update and running setup notebooks to create asset types in Health and Predict.
