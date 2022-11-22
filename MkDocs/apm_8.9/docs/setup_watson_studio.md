# Setup Watson Studio for Predict

In this exercise you will setup and configure Watson Studio to use the Health and Predict notebook templates. The templates can be used for detecting anomalies and predicting asset failures of assets and for other purposes using Health and Predict - Utilities.

Starting with v8.9, you can use the new auto upload feature to more efficiently upload Predict notebooks into your Watson Studio project. This is an enhancement from the previous method, which required users to manually retrieve multiple credentials and upload notebooks into Watson Studio one-by-one.

After the auto upload is complete, you can start using the Predict library PMlib and the Watson Studio notebooks right away.

- [Get URL and User credentials](#get-credentials) to access Watson Studio.
- [Create a project](#create-project) in Watson Studio.
- [Auto upload Predict notebooks](#auto-upload) to automatically retrieve credentials and upload Predict notebooks into Watson Studio.
- [Use Watson Studio Python library](#watson-studio-library) `ibm_watson_studio_lib` to do to work with data assets in your project.


## Get URL and User credentials to access Watson Studio
<a name="get-credentials"></a>

Ask your Maximo Application Suite administrator to get your user name and password for Watson Studio,
API keys and URL that you will use to connect to Watson Studio.  You or he can use these steps to get them.

1. To get the Watson Studio URL, login to Maximo Application Suite.  Click on `Adminstration`
![setup assets](/img/apm_8.7/p01.png) 

2. Click on `Configurations` and `Watson Studio`
![setup assets](/img/apm_8.7/p02.png) 

3. Click on `System`  After you create the Watson Studio User be sure to make note of the URL, user name and password.  You will use it to login to Cloud Pak for Data later with it. 
![setup assets](/img/apm_8.7/p03.png)

4. Open a browser to the URL and use the credentials from the previous steps to login to Cloud Pak for Data.  After logging in you see your Watson Studio Overview page.
![setup assets](/img/apm_8.7/p04.png) 

!!! note

    Ensure Datascience User Belongs to Predict Security Group.   In Maximo Manage, add the user to the PREDICT and PREDICTGROUPING group in the user definition as shown in the screen below.
    
![Security Groups](/img/apm_8.7/p15.png) 


## Create a Project in Watson Studio
<a name="create-project"></a>

Watson Studio projects are where you:

- Keep your model templates
- Data Assets
- Train deploy and many the Models
- Create and manage environment for training and deploying your models.

Create a project so that you can add and setup Health, Predict and Utilities notebooks using the auto upload feature.

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

6. After creating the project, you can now continue to upload your Predict notebooks into Watson Studio.
![Empty project](/img/apm_8.9/p86.png) 


## Auto Upload Predict Notebooks
<a name="auto-upload"></a>

The new auto upload feature saves considerable amount of time and allows the user to start using Predict right away. It should take less than 15 minutes to complete the entire upload. All the work is automatically done by Predict workspace’s Ansible operator in the background.

To start the auto upload, you need to get the Project ID from the Watson Studio project you just created and add it to Predict’s workspace configuration.

1. Go to the `Manage` tab. Find and copy the Project ID. Alternatively, you can also retrieve it from the URL.
![Copy project ID](/img/apm_8.9/p70.png) 

2. Login to MAS to enter the Project ID.

3. Click on the `Administration` icon on the top right corner.
![Enter project ID](/img/apm_8.9/p71.png) 

4. On the sidebar menu, select `Workspace`
![Go to Workspace](/img/apm_8.9/p72.png)

5. Make sure that you are on the `Overview` tab. Scroll down to find the `Predict` widget.
![Workspace page](/img/apm_8.9/p73.png)

6. Click on `Predict` to access the Predict workspace details.
![Predict widget](/img/apm_8.9/p74.png)

7. Click on he `Action` menu. Click on `Update configurations`.
![Action menu button](/img/apm_8.9/p75.png)
![Update configurations](/img/apm_8.9/p76.png)

8. Click the `Edit` button next to `IBM Watson Studio Settings` to update Predict configurations.
![Edit configuration](/img/apm_8.9/p78.png)

9. Scroll down to `Advanced settings` and find `IBM Watson Studio Project Settings`. The `System managed`setting is turned on by default. Toggle it off so that you can enter the project ID.
![Toggle setting OFF](/img/apm_8.9/p79.png)

10. You should be able to see the project ID field after turning the toggle off. Paste the project ID that you retrieved from your Watson Studio project.
![Paste project ID](/img/apm_8.9/p80.png)

11. A popup will show up asking for confirmation to activate Predict. Click `Activate` to apply change and start activation.
![Activate Predict](/img/apm_8.9/p81.png)

12. It should take roughly 15 minutes to upload all the data files and notebooks into Watson Studio. You can see the status in a widget in the details section.
![Preload status](/img/apm_8.9/p82.png)

13. Once the upload is complete, go back to Cloud Pak for Data and go to your Watson Studio project. Click on the `Assets` tab, and you should see that all the data files are successfully uploaded, including the Predict Python PMlib zip file and the Db2 certificate file, in the data section.
![PMlib and Db2 certification files](/img/apm_8.9/p83.png)

14. The process also auto-constructs an environment file. This is done by automatically retrieving 3 credentials needed to construct the file: `APM _ID`, `APM_API_BASEURL`, and `EXTERNAL_APM_API_BASEURL`. The only piece that was not automatically constructed is the `APM_API_KEY`. Please refer to one of the previous lab versions if you would like to manually find environment variables used in Predict.
![Environment file](/img/apm_8.9/p84.png)
![Environment file preview](/img/apm_8.9/p85.png)


##  Using Watson Studio Library
<a name="watson-studio-library"></a>

The Watson Studio Python Library named `ibm_watson_studio_lib` allows you to do to work with data assets in your project.  Some examples you will learn later are reading and writing data from your project.    Another example is getting the Watson Studio Project Information. 

You will use a Watson Studio Python library named `ibm_watson_studio_lib` that is available in your environment by default to get your project information.  See this [API reference](https://www.ibm.com/docs/en/cloud-paks/cp-data/4.0?topic=lib-watson-studio-python) for more information. 

**Sample Code**

    #  Get the Watson Studio Project Information
    from ibm_watson_studio_lib import access_project_or_space
    wslib = access_project_or_space()
    project_name = wslib.here.get_name()
    wslib.show(project_name)
    project_id = wslib.here.get_ID()
    wslib.show(project_id)

Congratulations you have seen how to create a project auto upload Predict notebooks in Watson Studio, including the PMlib documentation you will use in the next exercises. Finally you learned how to use the `ibm_watson_studio_lib` to work with assets in your project.

In the next exercises you will learn how to use these notebook templates to detect anomalies and predict asset failures.   You will start by update and running setup notebooks to create asset types in Health and Predict.  
