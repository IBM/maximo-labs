# Setup Local Environment

In this exercise you will setup your local development environment.

-  [Install and Create a Virtual Environment](#install_ve)  for Python v3.9 or later

-  [Setup and Activate a Virtual Environment](#activate_ve)  Install Python dependencies, clone repository 
    and verify environment


!!! note
    These directions for are a Mac. Using Python v3.9 for Maximo Application Suite v8.9.
    Download Python for Windows at  https://www.python.org/downloads/windows/ 
    
## Install and Create a Virtual Environment
<a name="install_ve"></a>

0.  Search for and [download](https://www.python.org/downloads/release/python-376/) the right version of Python 

1.  Launch Terminal

2.  Mac users need to install Brew Follow directions here: https://brew.sh/

3.  Install the right Python Version v3.7.9

Mac users
- In terminal:

   
    ```
    brew install python 
    ```

Window users 

- Please see available public references for [installing Python on Windows](https://medium.com/co-learning-lounge/how-to-download-install-python-on-windows-2021-44a707994013)

   
4.  Install "pip". (Python Package Installer):
    ```
    sudo easy_install pip  # for Mac try also removing sudo from the command
    ```

5.  Install virtual environment to keep dependencies separate from other projects
    ### For Mac
    ```
    sudo pip install virtualenv 
    ```
    ### For Windows
    ```
    pip install virtualenv      
    ```

6.  Create a virtual environment use Python 3.7.9 for Maximo Application Suite v8.3
    ```
    python3 -m venv iot-python3
    ```
    <!-- virtualenv -p python3 env -->

## Setup and Activate a Virtual Environment
<a name="activate_ve"></a>

1. Open a new terminal window and change directory to your Virtual Environment directory.

    ```
    cd iot-python3
    ```

2. Activate your virtual environment.

    ###  For Mac

    ```
    source bin/activate  
    ```

    ###  For Windows

    ```
    .\Scripts\activate   
    ```

3. The result in `Terminal` should be something like:

    ###  For Mac

    ```
    (iot-python3) My-Mac: myuserid$
    ```

4. Install Git.  

    ### For Windows
    See https://git-scm.com/download/win  
    
    ###  For Mac
    The easiest is to install the Xcode Command Line Tools.

5. Install IOT Functions SDK

    See installing section  [instructions](https://github.com/ibm-watson-iot/functions/tree/production) but for MAS v8.5.1 use this:
    
    ```
    pip install git+git://github.com/ibm-watson-iot/functions@master --upgrade

    ```

6. Clone the your project github repository.

    ```
    mkdir hpudemo
    cd hpudemo
    git clone git@github.ibm.com:Watson-IoT/eam-hpu-lab.git
    cd eam-hpu-lab
    ls
    ```
## Add your notebooks to your Watson Studio Project Directory.   

1. Login to MAS https://auth.masinst1.ibmmam.com/login

2. Find where Watson Studio URL is  and ask your MAS Admin for your user credentials



## Add your data to your Watson Studio Data Project


## Save credentials json file for Predict to your project root folder in your Watson Studio Project. If you are using `Predict` in MAS, ask the instructor for your `credentials.json` file.  [Establishing a Connection](https://www.ibm.com/docs/en/maximo-monitor/8.5.0?topic=calculations-using-custom-functions#env) 
Your credentials file should be structured in JSON as follows:

    '''
        {
            "tenantId": "yourtenant",
            "_db_schema": "your_dbSchema",
            "db2": {
                "username": "your_dbuser",
                "password": "your_dbpassword",
                "databaseName": "your_databaseName",
                "security": "SSL",
                "port": 32551,
                "httpsUrl": "https://cp4d-cpd-cp4d.yourdomainURL",
                "host": "yourdomainURL without HTTP prepended"
            },
            "Predict": {
                "asHost": "yourtenant.api.monitor.your_dbSchema.yourlusterdomain:443",
                "apiKey": "vourAPIKey",
                "apiToken": "yourAPIToken"
            }
        }
    '''

4. Verify that you can get a local Python Script to run without errors.  Try running the first cell of the Predict Data Loader notebook.
