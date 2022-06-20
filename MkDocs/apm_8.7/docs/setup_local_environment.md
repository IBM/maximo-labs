# Setup Local Environment (optional)

You can skip this exercise if you already have data loaded in your environment or if you are going to use App Connect to setup and load asset data.  

In this exercise you will setup your local development environment so that you can use Python to setup and load data into Health and Predict.

-  [Install and Create a Virtual Environment](#install_ve)  for Python v3.8

-  [Setup and Activate a Virtual Environment](#activate_ve)  Install Python dependencies, clone repository 
    and verify environment

-  [Install and Launch Jupyter](#jupyter) to work with Regression Models

-  [Download,  Install and Configure CyberDuck for View Logs in Monitor](#cyberduck) 

-  [Download, Install and Configure PyCharm](#pycharme)  

-  [Debug Functions](#debug)

!!! note
    These directions for are a Mac. Using Python v3.8 for Maximo Application Suite v8.7.
    Download Python for Windows at  https://www.python.org/downloads/windows/ 
    
## Install and Create a Virtual Environment
<a name="install_ve"></a>

1\.  Launch Terminal

2\.  Install Brew Follow directions here: https://brew.sh/

3\. Install the right Python Version v3.8

```shell script
brew install python 
```
   
4\.  Install "pip". (Python Package Installer):
```shell script
sudo easy_install pip  # for Mac try also removing sudo from the command
```

5\.  Install virtual environment to keep dependencies separate from other projects
    
### For Mac

```shell script
sudo pip install virtualenv 
```

### For Windows

```shell script
pip install virtualenv      
```

6\.  Create a virtual environment use Python 3.8 for Maximo Application Suite v8.7

```shell script
python3 -m venv apm-python3
```

<!-- virtualenv -p python3 env -->

## Setup and Activate a Virtual Environment
<a name="activate_ve"></a>

1\.  Open a new terminal window and change directory to your Virtual Environment directory.

```shell script
cd apm-python3
```

2\.  Activate your virtual environment.

###  For Mac

```shell script
source bin/activate  
```

###  For Windows

```shell script
.\Scripts\activate   
```

3\.  The result in `Terminal` should be something like:

###  For Mac

```shell script
(apm-python3) My-Mac: myuserid$
```

4\.  Install Git.  

### For Windows
See https://git-scm.com/download/win  
    
###  For Mac
The easiest is to install the Xcode Command Line Tools.

5\. Clone the github repository for Python scripts to load data.

```shell script
git clone the repository provided to you by your instructor
cd maxmio_autoai
```

6\.  Within your project directory in the activated virtual environment, install Monitor Python Custom Functions SDK and 
dependencies.  

```shell script
pip install -r requirements.txt
```

7\.  Apply export variables in terminal for DYLD_LIBRARY_PATH for DB2 jars on Mac OS X only.

###  For Mac

```shell script
cd "<replace with the git cloned project directory name>"
export DYLD_LIBRARY_PATH=<"replace with your virtual env directory>"/lib/python3.8/site-packages/clidriver/lib:$DYLD_LIBRARY_PATH
export DYLD_LIBRARY_PATH=/Users/carlosferreira/ve/apm-python3/lib/python3.8/site-packages/clidriver/lib:$DYLD_LIBRARY_PATH
``` 

8\.  Set PYTHONPATH to your project directory where you installed your virtual environment.

###  For Mac

```shell script
export PYTHONPATH="<replace with your root_project_directory>"/apm_lab 
export PYTHONPATH=/Users/carlosferreira/Documents/AutoAILabs/apm-python3/apm_lab 
```

9\.  Go to  Monitor, click on  `Services`, click `View Details` of Watson IOT Analytics.  Click on `Copy and paste` icon 
and copy the credentials into a file named beta-1_credentials.json file.   Save the file in the project git cloned project 
directory name directory `apm_lab`. 
![credentials](/img/monitor_autoai_8.4/s01.png) 

10\.  Verify that you can get a local Python Script to run without errors.

```shell script to validate the version of Python you have installed
python --version
```

  
## Install and Launch Jupyter 
<a name="jupyter"></a>

**This exercise step is optional**. Since we are using Watson Studio notebooks to edit, run and train models .  Jupyter is an open-source web application that allows you to create and share documents that contain live code, equations, visualizations and algorithms for working with AI Models and functions.

1\.  Install Jupyter using [instructions](https://jupyter.org/install) Use the `Pip Install` option.

2\.  Start Jupyter Notebook process.  Using a similar example steps below.

```shell script
cd /Users/student01/ve/apm-python3/bin
source activate
cd /Users/student01/MAS_AutoAI
export PYTHONPATH=/Users/student01/MAS_AutoAI
export DYLD_LIBRARY_PATH=/Users/student01/ve/apm-python3/lib/python3.8/site-packages/clidriver/lib:$DYLD_LIBRARY_PATH
```

3\. Launch Jupyter Notebook to edit Linear Regression Models.

```shell script
jupyter notebook
```

This opens a Jupyter notebook in the new browser window that opened.  Browse to the `notebooks` folder. Click on the `notebook` 
to view the Notebook.

## Download, Install and Configure CyberDuck for View Logs in Monitor###
<a name="cyberduck"></a>

**This exercise step is optional**.  Monitor uses Object Storage service to access the log files for custom functions. Install and configure Cyberduck to 
view logs.  You can connect to Cloud Object Storage (COS)  to download the custom function logs.  You can Access 
credentials for COS is shown in Monitor under Services tab.  Use tool called Cyberduck.   Download free version from 
web: https://cyberduck.io/download/ Configure the setting in CyberDuck to connect to the Object Storage service included 
with Monitor.

1\.  In Monitor, click on `Services` menu.  Copy the settings for Object Storage as shown in the below into `CyberDuck`.  ![Configure CyberDuck](/img/monitor_autoai_8.4/l01.png) 

2\.  Open `CyberDuck` and create a `New Connection`.

3\.  Select  `Protocol` is `S3 Amazon`

4\.  URL Server is taken from Monitor  Object Storage Service  `Cross Region Endpoints`  choose your region like `US`
https://s3-api.us-geo.objectstorage.softlayer.net

5\.  Copy `Access Key ID`  for your `Tenant ID`  

6\.  Copy `Secret Access Key`  for your `Tenant ID`

7\.  Click `Connect` Button. 

8\.  Hit refresh and navigate to your Asset Type and date folder to see and download your log files.

9\.  You will see Entity Type ID in the first few lines of the log files for that Asset Type.

10\.  Bookmark the page for your Asset Type so that you can navigate here directly next time you want to access logs.


## Download, Install and Configure PyCharm
<a name="pycharm"></a>

**This exercise step is optional**.  You can use your own integrated development environment of choise.  Using an integrated development environment helps improve developer productivity when writing Python scripts.  It is recommended that you download and install [Pycharme Community Edition](https://www.jetbrains.com/pycharm/download/#section=mac).  It is a free IDE.  To run Python Scripts in  you should configure your Python Environment for each script you would like to run to reference the virtual environment you setup earlier.

1\.  Follow the instructions to install Pycharm Community Edition.

2\.  Start Pycharm.

3\.  In the `Project` view, right click on the Python script file you want to run.  Select `edit configurations`.   See the
example settings below.
![setup assets](/img/apm_8.7/l19.png) 

4\.  Set the Python Environment variable similar to what is  shown below. It should reflect the installation directory of your virtual environment.

```shell script
PYTHONUNBUFFERED=1;DYLD_LIBRARY_PATH=/Users/student01/ve/apm-python3/lib/python3.8/site-packages/clidriver/lib:$DYLD_LIBRARY_PATH;PYTHONPATH=/Users/student01/MAS_AutoAI
```
    
5\.  Set the `Python interpreter` to your virtual environment.

Congratulations you can now run Python scripts to load asset data into Health and Predict. 