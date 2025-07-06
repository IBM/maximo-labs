# Objectives
In this Exercise you will write MultiplyByFactor custom function.

!!! tip
    you can define your calculation as required!

### Define your calculation

<b> Business scenario: </b>

A robotics company is testing new robotic arms and has discovered that testing tools introduce delays affecting speed and travel time measurements. The operations manager needs to adjust these values by a factor of 2 but wants flexibility to change this factor later.

<b> Solution approach: </b>

Create a reusable MultiplyByFactor function that can: </br>
- Accept multiple input items</br>
- Apply a configurable multiplication factor </br>
- Generate corresponding output items</br>
- Be reused across different calculations</br>
- Formula: output_value = input_value * factor</br>

### Package your function and store it in GitHub
<ol>
    <li>Create a new private repository on GitHub for the starter package you cloned.</li>
    <li>Add an empty file (such as README.md) to create the master branch</li>
    <li>Open the project in PyCharm locally for editing.</li>
    <li>Verify that the project has the following directory structure and files:</br>
    <pre><code class="language-bash">
        functions
        |
        |__ setup.py
        |
        |__ scripts
            |
            |_ local_test_of_function.py
        |
        |__ custom
            |
            |_ functions.py
            |_  __init__.py
     </code></pre>
    </li>
</ol>

### Create your custom function

<ol>
    <li>Rename the custom directory to custom{your_initials} (for example, customRS)</li>
    <li>Create a new file multiplybyfactor{your_initials}.py in your custom{your_initials} directory</li>
    <li>Add the following code, Update the variables in <> to match your environment. For example, if your code is in GitHub, you might set PACKAGE_URL to </br>
    'git+https://<XXXXXX>@github.com/github.com/jones/starter@starter_package'.
In this function, you implement two methods. You add your calculation to the execute method. You set the inputs and outputs arguments for the function in the build_ui method.</li></br>
    <li>
    <pre><code class="language-bash">
import inspect
import logging
import datetime as dt
import math
from sqlalchemy.sql.sqltypes import TIMESTAMP,VARCHAR
import numpy as np
import pandas as pd

from iotfunctions.base import BaseTransformer
from iotfunctions import ui

logger = logging.getLogger(__name__)

# Specify the URL to your package here.
# This URL must be accessible via pip install.
# Example assumes the repository is private.
# Replace XXXXXX with your personal access token.
# After @ you must specify a branch.

PACKAGE_URL = 'git+https://XXXXXX@github.com/<user_id><path_to_repository>@starter_package'

class MultiplyByFactor<YourInitials>(BaseTransformer):

    def __init__(self, input_items, factor, output_items):

        self.input_items = input_items
        self.output_items = output_items
        self.factor = float(factor)
        super().__init__()
    def execute(self, df):
        df = df.copy()
        for i,input_item in enumerate(self.input_items):
            df[self.output_items[i]] = df[input_item] * self.factor
        return df

    @classmethod
    def build_ui(cls):
        #define arguments that behave as function inputs
        inputs = []
        inputs.append(ui.UIMultiItem(
                name = 'input_items',
                datatype=float,
                description = "Data items adjust",
                output_item = 'output_items',
                is_output_datatype_derived = True)
                      )        
        inputs.append(ui.UISingle(
                name = 'factor',
                datatype=float)
                      )
        outputs = []
        return (inputs,outputs)   
</code></pre>
</li>
</ol>

### Save your credentials to a file

Set credentials to connect to Maximo Monitor.
<ol>
    <li>Navigate to your starter package directory and locate the credentials_as.json template file</li>
    <li>Replace the variables with your data and then save the file to your local machine.</li>
</ol>   

!!! note
    The credentials file is used to run or test the function locally. Do not push this file to your external repository.

### Push your local changes to your GitHub repository

The files that you modified are still pointing to the GitHub repository that you cloned the code from. Change the remote repository to your GitHub repository.

Verify that your credentials file is not included with your function code before the commit the changes to your external directory.

Push your function code to your external repository in GitHub.

<ol>
    <li>Open a terminal window in the project folder</li>
    <li>Enter: git remote -v. The remote repository is still pointing to https://github.com/ibm-watson-iot/functions</li>
    <li>Change the remote origin URL by using the following commands:</li></br>
    <li>
        <pre><code class="language-bash"> git remote set-url origin URL_To_YOUR_GITHUB_REPOSITORY
        </code> </pre>
        Confirm that the Fetch and Push URLs are pointing to your repository.
    </li>
    <li>Add the upstream remote by using the following command. Enter:</li>
    <li>
        <pre><code class="language-bash"> git remote add upstream https://github.com/ibm-watson-iot/functions.git  </code></pre>
    </li>
    <li>Add your files to GIT and commit them. </br>
     a. In PyCharm, select the custom<your_initials> directory.</br>
     b. Select Git > Add.</br>
     c. Select Git > Commit.</br>
     d. In the Commit Changes window, click Commit.</br>
     e. Select Git > Repository > Push.</br>
     f. Click Push.</br>
    </li>
    <li>Verify that your module was pushed to a starter_package branch in your repository.</li> 
</ol>

---
Congratulations you have successfully written custom function.</br>
