# Create Prediction Models

Prediction models are useful for understanding when an asset is performing differently than expected.  By measuring the 
deviation  between the actual asset metric value versus the predicted metric value you can be alerted to a anomaly with 
your asset.  Monitor includes out of the box [anomaly models](https://www.ibm.com/docs/en/mapms/1_cloud?topic=data-detecting-anomalies).  

Monitor includes alerts that are triggered when a conditional expression for a metric deviation exceeds a threshold value 
specified for the asset.  In some cases you might want to make a customized model that can provide asset specific metric 
predictions and alerts.  Creating models can be a manual and difficult process. It starts with finding candidate algorithms 
that best fit the specific case. Do we know all the appropriate algorithms? Then, we must prepare the data by converting 
any non-numeric fields to numerical values. Do we need to do additional feature engineering? How do we tune all the 
hyper-parameters for each of the chosen algorithms?

AutoAI takes care of all those steps for us and gives us a set of ranked models to choose from. With all the details 
provided, choosing the best model becomes easy and we can go on with implementing our business solution.  More than one
algorithms can fit the business problem.  Model creation might require more feature engineering.  Model creation requires 
hyper-parameters tuning AutoAI removes the complexity of model creation.  It allows you to run an experiment to determine 
what is the best model for your classification or linear regression problem.

In this exercise you will:

-  Confirm you have already created and IBM ID [here](http://ibm.biz/maximo-dev-ibmcloud)

-  Create a Watson Studio [Service](#createstudio) in IBM Cloud.

-  Create a Watson Studio [Project](#createproject) in IBM Cloud Watson Studio Service.

-  [Add Data Assets](#addassets) for the pumps. 

-  [Associate a Watson Machine Learning Service](#wml) to your Watson Studio Service Project.

-  [Perform an Auto AI Experiment](#performexperiment)  to Identify a prediction model using Watson Studio using the provided pump training data. 

-  Assess each models performance and [Choose a Prediction Model](#choosemodel)

### Create a Watson Studio Service
<a name="createstudio"></a>

Create a Watson Studio Service for your data scientist needs.  Open a browser and login to Watson Studio.   Watson Studio Cloud runs as IBM Cloud Pak® for Data as a Service which is included with Maximo 
Application Suite.  the title as "IBM Watson Studio" or "IBM Cloud Pak for Data". The user interface is the same no 
matter what name it comes  under. 

1. After logging into [IBM Cloud](http://ibm.biz/maximo-dev-ibmcloud), click `create resource`button ![sd](img/w01.png) 

2.  Search on `Watson Studio` and then click on `Watson Studio` tile ![sd](img/w02.png) 

3.  Make note of the geographic region in the drop down box.  Select the `Standard v1` plan  ![Create Studio Service](img/w03.png) 
otherwise choose the `lite` plan.   Click the `Create` button ![Create Studio Service](img/w04.png) 

4.  Open `Watson Studio` by clicking on the `Get Started` button to launch `Watson Studio`.  ![sd](img/w05.png) 

6.  Congratulations you are now in Watson Studio and can start working on your datascience projects. ![sd](img/w06.png) 
    
### Create a Project
<a name="createproject"></a>

1. Create a Watson Studio Project to hold your data and models and run Auto AI Experiments. A project us where you can place 
your “assets” like training data and run Auto AI experiments. In the left menu, click `Create a project` link ![crate oroject](img/w07.png) 
 
2.  Click `empty project`. tile option. ![empty oroject](img/d08.png) 

3.  Enter the project name: `student01` or a name you can remember later.  Optionally, enter the `description`
"Monitor AutoAI Hands On Lab Pump Models".![project details](img/d09.png) 

4.  Click `Create` button.

Congratulations you have created a Watson Studio Project to organize your Model Data and artifacts.

### Add Data Assets
<a name="addassets"></a>

In this exercise you will use  pump data to run an AutoAI Experiment. The pump data provided by the instructor in the file named
PumpData.csv is a  comma separated version file that has two pump device data metric readings: 

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

The value we want to predict is `POWER`.  An anomaly could occur then a pump is blocked or bearings have failed which would
make the `POWER` be greater even while still having the low values for the other metrics like `flow`.  In the next exercises you
will see how AutoAI will help us understand which of these metrics have the greatest impact on predicting `POWER`.

1. In Watson Studio, in your project created in the last exercise, click `Add to Project` button. ![Add to project](img/d10.png) 

2. Click the `Data` option.![data](img/d11.png) 

3.  The `data window` on the right side of your project is ready to load data. Drop the file provided by the instructor in the github repo named maximo-auto_ai_pump_data_111137F8.csv 
in to the load window or use the browse option to locate the file on your machine. ![drag and drop data](img/d12.png) 
 
4.  Upload a second asset data file named  [maximo-auto_ai_pump_data_11111096.csv]() for the second pump `11111096`.
![drag and drop data](img/d13.png)  
 
5. Click the `Assets` Tab  ![drag and drop data](img/d14.png)  
 
6. You should now see your  `Data` assets ![drag and drop data](img/d15.png)  for the two pumps.
 
Congratulations you have imported pump data for the two pumps into a Watson Studio Project.  You are ready to start 
creating models by running an Auto AI Experiment.

### Associate a Watson Machine Learning Service
<a name="wml"></a>

Before we can use AutoAI, we need to have a Watson Machine Learning service in our project. Add a Watson Machine Learning 
service to the project.  There are multiple plans available. For this lab, we use the lite plan that provides the
capabilities we need for free.  You will likely only be able to run one AutoAI experiment with the Lite plan so carefully 
follow the instructions.  

1.  Select the Settings tab. ![settings](img/d16.png)
 
2.  Scroll down to the Associated services section.  If there is no machine learning service, click `Add services`,
 ![add service](img/d17.png)
 
3.  Select  `Watson` from the drop down  ![Watson](img/d18.png)

4.  Associate service click `New service` button.   ![Watson](img/d19.png)

5. Search on `Machine learning` and click on `Machine Learning` tile option  ![Watson](img/d19b.png)

6.  Scroll down and select the `Standard plan v2` or if not available select `Lite plan` then click `Create` Button
   ![create service](img/d20.png)

6.  Select your new machine learning service by clicking in the `check box`  and then clicking `x` to close the dialog 
window. ![close dialog](img/d21.png)

7.  Close the dialog window.  ![close dialog window](img/d22.png) 
![close dialog window](img/d23.png)

8. You have associated a machine learning service with Watson Studio. ![service created](img/d24.png)

Congratulations you can now run Auto AI experiments using  Watson Studio Project.  You are ready to start creating models.
 
### Perform an Auto AI Experiment
<a name="performexperiment"></a>

AutoAI can help you choose the right classification or regression algorithm use.  You choose the type of algorithm to 
analyze,  provide Auto AI your data and what you want to predict.  It then runs a pipeline to identify what are the 
relevant dependent features(metrics) to make a prediction.   It summarizes the performance and accuracy of each algorithm 
it considered in a ranked ordered list.  The steps below show you how to perform an Auto AI Experiment to identify  a 
regression model to predict power consumption.  A regression model provides scoring or prediction for continuous values.  
You can learn more about how pumps work in this [Video](https://www.youtube.com/watch?v=WUal9LXc0iM)


1.  Make sure you are in the right IBM Cloud account in the top right of the screen, otherwise AutoAI might not show up 
as an option.  Click `Add to Project` and click `AutoAI experiment`. ![create an Auto AI experiement](img/d26.png)
 
!!! note
    Make sure to replace `co` in the device type name with your own initials.
 
2.  Enter project name `111137F8-power-co`. click `Create` button.  Replace `co` with your own initials since in the next 
exercise you will be  training and deploying your model to a shared service and want to make the name is unique.  Make
sure  your Watson Machine Learning service is selected.  ![Auto AI project details](img/d27.png)

3.  Click `Add a datasource` and `select from project` button. ![select data source project](img/d28.png)
 
4. Select the input data. Click `Select` from project.  Click `maximo-auto_ai_pump_data_111137F8.csv`. Click `Select asset`.
![Auto AI project details](img/d29.png)
 
5.  AutoAI detects that it is a decimal value that contains continuous time series values and selects a Regression model. 
Select `no` to create a time series forecast.  
![Auto AI project details](img/d30.png)

6.  Select the column to predict `POWER`.  Click the `Run experiment`button.
![Auto AI project details](img/d31.png)  

7.  The execution goes through multiple steps and generates multiple  pipeline runs of with `Extra Trees Regessor`, `LGBM` 
and other models.  This process can take 3 - 10 minutes.
![Auto AI project details](img/d32.png)

Congratulations you now know how to run AutoAI Experiments.  In the next exercise you will assess the experiment results
and choose a model to use for predicting power for each pump.

 
### Choose a Prediction Model
<a name="choosemodel"></a>

Watson Studio can identify what are the correlated metrics that have the greatest impact in predicting a metric.  It also 
provides overall accuracy of the model performance. Finally it gives you a ranked ordered list of the models that are 
best fits for making a prediction.  

1.  Review the pipeline leader board for which algorithms performed best. Click on the `Extra Trees Regressor` algorithm.
there maybe more than one.  Select the one that doesn't have feature engineering.
![leader board](img/d33.png)

2.  The Auto AI experiment `Model Evatluation Measures` provides mean absolute error, root mean squared error and other
measures.  These were used to determine what was the most effective algorithm.  ![Auto AI Model evaluation](img/d34.png)

4   Click `Model Information` shows what the target prediction metric was `POWER`.  It also shows how many features
 were considered to be important to predicting pump power consumption.  ![Model Information](img/d35.png)

5   Click `Feature Importance` to see which features are most important to predicting pump power consumption. Note them 
down these will become the input arguments to our prediction model. Also note how only 4 of the 8 total features were 
found to impact the power prediction. Click `Save As button ![Reature importance](img/d36.png)

6.  Notice how Auto AI give you two options for saving your algorithm.  You can save as a Model that gets deployed and you 
can begin scoring in your Watson Machine Learning service.   There is a separate code pattern that shows how you can call
Watson Machine learning using a custom function. See this [code pattern](https://developer.ibm.com/components/maximo/patterns/detecting-anomalies-in-iot-data-with-maximo-monitor/).
You can also save the algorithm as Notebook.  ![Save as Notebook](img/d36.png)  Hit the `Cancel` button.
You will use the provided Juypter Notebook to test, train and deploy your own  `Extra Trees Regressor` algorithm to
Monitor in the next lab.  

7.  When you're done, click `Back` and click `New Auto AI experiment`.   Repeat the previous steps with the other pump 
data `maximo-auto_ai_pump_data_11111096.csv` you previously added to your Watson Studio project.
![Auto AI Model evaluation](img/d37.png)


Congratulations you know have identified the the best model for each pump .  You also have identified that speed, head, voltage, flow, 
and current are the input arguement needed for your model to be able to predict power.  The next lab exercise provides 
you a Jupter Notebook named `maximo_auto_ai-extra-trees-pump.ipynb`
that will allow you to train, test and deploy the an Extra Trees Regressor algorigthm prediction model into to Monitor.


