# Setup Local Environment

In this exercise you will setup your local development environment.

-  [Install and Create a Virtual Environment](#install_ve)  for Python v3

-  [Setup and Activate a Virtual Environment](#activate_ve)  Install Python dependencies, clone repository 
    and verify environment

-  [Install and Launch Jupyter](#jupyter) to work with Regression Models

-  [Download,  Install and Configure CyberDuck for View Logs in Monitor](#cyberduck) 

-  [Download, Install and Configure PyCharm](#pycharme)  

-  [Debug Functions](#debug)

## Install and Create a Virtual Environment
<a name="install_ve"></a>

1.  Launch Terminal

2.  Install "pip". (Python Package Installer):
    ```
    sudo easy_install pip
    ```

3.  Install virtual environment to keep dependencies separate from other projects
    ```
    sudo pip install virtualenv
    ```

4.  Create a virtual environment
    ```
    python3 -m venv iot-python3
    ```
    <!-- virtualenv -p python3 env -->

## Setup and Activate a Virtual Environment
<a name="activate_ve"></a>

1.  Open a terminal window and change directory to your Virtual Environment directory.

    ```
    cd iot-python3
    ```

2.  Activate your virtual environment.

    ```
    source bin/activate
    ```

3.  The result in `Terminal` should be something like:

    ```
    (iot-python3) My-Mac: myuserid$
    ```

4.  Clone the github repository.

    ```
    git clone git@github.com:IBM/update with URL .git
    cd 
    ```

5.  Within your project directory in the activated virtual environment, install Monitor Python Custom Functions SDK and 
dependencies.
    
    ```
    pip install numpy
    pip install sqlalchemy pandas ibm_db_sa urllib3 requests lxml sklearn ibm_db python-dotenv future
    pip install git+https://github.com/ibm-watson-iot/functions.git@production --upgrade  
    pip install -r requirements.txt
    ```

6.  Apply export variables in terminal for DYLD_LIBRARY_PATH for DB2 jars on Mac OS X only.

    ```
    cd into the cloned project
    export DYLD_LIBRARY_PATH=/Users/student01/ve/iot-python3/lib/python3.7/site-packages/clidriver/lib:$DYLD_LIBRARY_PATH
    ``` 

7.   Set PYTHONPATH to your project directory.
   
    ```
    export PYTHONPATH="<root_project_directory>"
    export PYTHONPATH=/Users/student01/MAS_AutoAI
    ```

8.  Verify that you can get Python version .

    ```
    python ./scripts/local_test_of_function.py
    ```

## Install and Launch Jupyter 
<a name="jupyter"></a>

is an open-source web application that allows you to create and share documents that contain live code, equations, 
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

Monitor uses Object Storage service to access the log files for custom functions. Install and configure Cyberduck to 
view logs.  You can connect to Cloud Object Storage (COS)  to download the custom function logs.  You can Access 
credentials for COS is shown in Monitor under Services tab.  Use tool called Cyberduck.   Download free version from 
web: https://cyberduck.io/download/ Configure the setting in CyberDuck to connect to the Object Storage service included 
with Monitor.

1.  In Monitor, click on `Services` menu.  Copy the settings for Object Storage as shown in the below into `CyberDuck`.  ![Configure CyberDuck](/img/monitor_autoai_8.4/l01.png) 

2.  Open `CyberDuck` and create a `New Connection`.

3.  Select  `Protocol` is `S3 Amazon`

4.  URL Server is taken from Monitor  Object Storage Service  `Cross Region Endpoints`  choose your region like `US`
https://s3-api.us-geo.objectstorage.softlayer.net

5.  Copy `Access Key ID`  for your `Tenant ID`  

6.  Copy `Secret Access Key`  for your `Tenant ID`

7.  Click `Connect` Button. 

8.  Hit refresh and navigate to your Asset Type and date folder to see and download your log files.

9.  You will see Entity Type ID in the first few lines of the log files for that Asset Type.

10.  Bookmark the page for your Asset Type so that you can navigate here directly next time you want to access logs.


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
![setup assets](/img/monitor_autoai_8.4/l19.png) 

4.  Set the Python Environment variable similar to what is  shown below. It should reflect the installation directory of your virtual environment.
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
![setup assets](/img/monitor_autoai_8.4/l20.png) 

3.  If your calculate metric runs but doesn't give the desired results see the log files for that Asset Type. 
[Download, Install and Configure CyberDuck for View Logs in Monitor](#cyberduck)  