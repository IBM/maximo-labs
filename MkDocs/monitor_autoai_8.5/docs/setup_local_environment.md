# Setup Local Environment

In this exercise you will setup your local development environment.

-  [Install and Create a Virtual Environment](#install_ve)  for Python v3.7.9

-  [Setup and Activate a Virtual Environment](#activate_ve)  Install Python dependencies, clone repository 
    and verify environment

-  [Install and Launch Jupyter](#jupyter) to work with Regression Models

-  [Download,  Install and Configure CyberDuck for View Logs in Monitor](#cyberduck) 

-  [Download, Install and Configure PyCharm](#pycharm)  

-  [Debug Functions](#debug)

!!! note
    These directions for are a Mac. Using Python v3.7.9 for Maximo Application Suite v8.4.
    Download Python for Windows at  https://www.python.org/downloads/windows/ 
    
## Install and Create a Virtual Environment
<a name="install_ve"></a>

1. Launch Terminal

2. Install Brew Follow directions here: https://brew.sh/

3. Install the right Python Version v3.7.9
    ```
    brew install python 
    ```
   
4. Install "pip". (Python Package Installer):
    ```
    sudo easy_install pip  # for Mac try also removing sudo from the command
    ```
    
    For Python 3.8.10 try using [instructions](https://packaging.python.org/en/latest/tutorials/installing-packages/):
    ```
    python3 -m ensurepip --default-pip
    ```
   
6. Install virtual environment to keep dependencies separate from other projects
    ### For Mac
    ```
    sudo pip install virtualenv 
    ```
    ### For Windows
    ```
    pip install virtualenv      
    ```

7. Create a virtual environment use Python 3.7.9 for Maximo Application Suite v8.3
    ```
    python3 -m venv iot-python3
    ```
    <!-- virtualenv -p python3 env -->

## Setup and Activate a Virtual Environment
<a name="activate_ve"></a>

1.  Open a new terminal window and change directory to your Virtual Environment directory.

    ```
    cd iot-python3
    ```

2.  Activate your virtual environment.

    ###  For Mac

    ```
    source bin/activate  
    ```

    ###  For Windows

    ```
    .\Scripts\activate   
    ```

3.  The result in `Terminal` should be something like:

    ###  For Mac

    ```
    (iot-python3) My-Mac: myuserid$
    ```

4.  Install Git.  

    ### For Windows
    See https://git-scm.com/download/win  
    
    ###  For Mac
    The easiest is to install the Xcode Command Line Tools.

5. Clone the github repository.

    ```
    git clone repo provided by your instructor
    cd maxmio_autoai
    ```

6.  Within your project directory in the activated virtual environment, install Monitor Python Custom Functions SDK and 
dependencies.  

    ```
    pip install -r requirements.txt
    ```

7.  Apply export variables in terminal for DYLD_LIBRARY_PATH for DB2 jars on Mac OS X only.

    ###  For Mac

    ```
    cd "<replace with the git cloned project directory name>"
    export DYLD_LIBRARY_PATH=<"replace with your virtual env directory>"/lib/python3.7/site-packages/clidriver/lib:$DYLD_LIBRARY_PATH
    export DYLD_LIBRARY_PATH=/Users/carlosferreira/ve/iot-python3/lib/python3.7/site-packages/clidriver/lib:$DYLD_LIBRARY_PATH
    ``` 

8.  Set PYTHONPATH to your project directory where you installed your virtual environment.

    ###  For Mac

    ```
    export PYTHONPATH="<replace with your root_project_directory>"/maximo_autoai 
    export PYTHONPATH=/Users/carlosferreira/Documents/AutoAILabs/iot-python3/maximo_autoai 
    ```

9.  Go to  Monitor, click on  `Services`, click `View Details` of Watson IOT Analytics.  Click on `Copy and paste` icon 
and copy the credentials into a file named beta-1_credentials.json file.   Save the file in the project git cloned project 
directory name directory `maximo_autoai`. 
![credentials](img/s01.png) 

10.  Verify that you can get a local Python Script to run without errors.
    ```
    python ./scripts/local_test_of_function.py
    ```

## Install and Launch Jupyter 
<a name="jupyter"></a>

Jupyter is an open-source web application that allows you to create and share documents that contain live code, equations, 
visualizations and algorithms for working with AI Models and functions.

1.  Install Jupyter using [instructions](https://jupyter.org/install) Use the `Pip Install` option.

2.  Start Jupyter Notebook process.  Using a similar example steps below.

    ```
    cd /Users/student01/ve/iot-python3/bin
    source activate
    cd /Users/student01/MAS_AutoAI
    export PYTHONPATH=/Users/student01/MAS_AutoAI
    export DYLD_LIBRARY_PATH=/Users/student01/ve/iot-python3/lib/python3.7/site-packages/clidriver/lib:$DYLD_LIBRARY_PATH
    ```

3. Launch Jupyter Notebook to edit Linear Regression Models.

    ```
    jupyter notebook
    ```

This opens a Jupyter notebook in the new browser window that opened.  Browse to the `notebooks` folder. Click on the `notebook` 
to view the Notebook.

## Download, Install and Configure CyberDuck for View Logs in Monitor###
<a name="cyberduck"></a>

Depending on the version of Monitor it may use either the Database or Object Storage service store logs.  To access the 
log files for custom functions in Cloud Object Storage. Install and configure Cyberduck to view logs.  Connect to the 
Cloud Object Storage (COS)  to download the custom function logs.  You can access the  credentials for accessing the 
service in Monitor under Services tab.  Use tool called Cyberduck.   Download free version from: 
Web: https://cyberduck.io/download/ Configure the setting in CyberDuck to connect to the Object Storage service included 
with Monitor.

1.  In Monitor, click on `Services` menu.  Copy the settings for Object Storage as shown in the below into `CyberDuck`.  ![Configure CyberDuck](img/l01.png) 

2.  Open `CyberDuck` and create a `New Connection`.

3.  Select  `Protocol` is `S3 Amazon`

4.  URL Server is taken from Monitor  Object Storage Service  `Cross Region Endpoints`  choose your region like `US`
https://s3-api.us-geo.objectstorage.softlayer.net

5.  Copy `Access Key ID`  for your `Tenant ID`  

6.  Copy `Secret Access Key`  for your `Tenant ID`

7.  Click `Connect` Button. 

8.  Hit refresh and navigate to your Asset Type and date folder to see and download your log files.

9.  You will see `Entity_Type_ID` in the first few lines of the log files for that `Asset Type`.

10.  Bookmark the page for your `Asset Type` so that you can navigate here directly next time you want to access logs.


##  Download, Install and Configure DBeaver
<a name="dbeaver"></a>

Depending on the version of Monitor it may use either the Database or Object Storage service store logs.  To access the 
log files for custom functions in Database, install and configure Dbeaver client to view logs in the database table.  
Connect to the Monitor Database Service to query database for custom function logs.  You can get the database credentials 
for accessing the database service in Monitor under Services tab.  Use a universal database client tool like Dbeaver to 
access the table.   Download the free community edition from https://dbeaver.io/download/  Configure the setting in 
Dbeaver to connect to the Database service included with Monitor.

1.  In Monitor, click on `Services` menu.  Copy the settings for Database and enter them as as shown in `DBeaver`.  ![Get DB Connection Details](img/sdb00.png) 

2.  Open `Dbeaver`.  Select a `New Database Connection` option from the `Database` menu.
 ![New DB Connection](img/sdb01.png)

3.  Select  `IBM DB2` and click on  `Next` button.
 ![Get DB Connection Details](img/sdb02.png)
 
4.  Enter the database settings from Monitor Database Service in `DBeaver` connection settings dialog.
 ![Get DB Connection Details](img/sdb03.png)

5.  Click `test Connection` Button. 

7.  Click `OK` Button to save the connection.


##  Query Logs using DBeaver
<a name="dbeaver"></a>

Depending on the version of Monitor it may use either the Database or Object Storage service store logs.  To access the 
log files for custom functions in Database use the following queries with Dbeaver client to view logs.


1.  Open `Dbeaver`.  Click a `Monitor Database Connection` for `BLUDB` schema.

3.  Select  `New SQL Script` from the `SQL Editor` menu.  ![New SQL Statement](img/sdb04.png)
 
4.  Enter the the following query to get status of execution for all functions.

    ```
    SELECT E.NAME, K.ENTITY_TYPE_ID, K.STATUS, 
    COUNT(*) AS Count FROM MAS82_MAM.KPI_LOGGING K, IOTANALYTICS.ENTITY_TYPE E 
    WHERE K.ENTITY_TYPE_ID = E.ENTITY_TYPE_ID  GROUP BY E.NAME ,K.ENTITY_TYPE_ID,K.STATUS ;
    ```
    
5.  Enter the the following query to delete old logs.

    ```
    DELETE FROM MAS82_MAM.KPI_LOGGING 
    WHERE DATE(UPDATED_TS)!=CURRENT_DATE; 
    ```

6.  Enter the the following query to purge successful runs.

    ```
    DELETE FROM MAS82_MAM.KPI_LOGGING 
    WHERE STATUS='SUCCESS' AND ENTITY_TYPE_ID IN (13,14);
    ```
    
7.  Enter the the following query to get last 10 logs.

    ```
    SELECT E.NAME, K.ENTITY_TYPE_ID, K.STATUS, K.LOGFILE, K.LOG_MESSAGE, K.ERROR_MESSAGE, K.STARTED_TS FROM MAS82_MAM.KPI_LOGGING K, IOTANALYTICS.ENTITY_TYPE E 
    WHERE K.ENTITY_TYPE_ID = E.ENTITY_TYPE_ID 
    ORDER BY K.STARTED_TS DESC LIMIT 10; 
    ```

## Download, Install and Configure PyCharm
<a name="pycharm"></a>

Using an integrated development environment helps improve developer productivity when writing Python scripts and Monitor 
Custom Functions.  It is recommended that you download and install [Pycharme Community Edition](https://www.jetbrains.com/pycharm/download/#section=mac). 
It is a free IDE.  To run Python Scripts in  you should configure your Python Environment for each script you would like 
to run to reference the virtual environment you setup earlier.

1.  Follow the instructions to install Pycharm Community Edition.

2.  Start Pycharm.

3.  In the `Project` view, right click on the Python script file you want to run.  Select `edit configurations`.   See the
example settings below.
![setup assets](img/l19.png) 

4.  Set the Python Environment variable similar to what is  shown below. It should reflect the installation directory of 
your virtual environment.

    ```
    PYTHONUNBUFFERED=1;DYLD_LIBRARY_PATH=/Users/student01/ve/iot-python3/lib/python3.7/site-packages/clidriver/lib:$DYLD_LIBRARY_PATH;PYTHONPATH=/Users/student01/MAS_AutoAI
    ```
    
5.  Set the `Python interpreter` to your virtual environment.

## Debug Functions
<a name="debug"></a>

Functions can be run locally and also run within the pipeline.   You typically want to make sure your function works 
locally before you git commit your function and register your function with Monitor.

1.  To run your function locally run Python script `../scripts/local_test_of_function.py`

2.  Git commit your function to a Github and they see if your data item for the calculated metric that calls your function 
runs.  Functions that have a problem will cause an error and cause the pipeline to stop for all other function on on the 
Entity Type.  You should resolve those issues quickly so that others aren't prevented from
monitoring their own calculated metrics on the same Asset Type. If you see error message saying `Analysis Stopped` this 
means you have a pipeline processing error and that a custom function likely is causing it. It may also mean an input or 
output argument required by a calculated metric has been deleted or doesn't have a needed value. 
![setup assets](img/l20.png) 

3.  If your calculate metric runs but doesn't give the desired results see the log files for that Asset Type. 
[Download, Install and Configure CyberDuck for View Logs in Monitor](#cyberduck)  