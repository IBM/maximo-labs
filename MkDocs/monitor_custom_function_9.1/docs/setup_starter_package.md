# Objectives
In this Exercise you will learn how to:

* setup starter package with IOT fucntions

---
#### Prerequisites
*Before you begin:*  
This Exercise requires that you have:

1. Install [Python 3.11.x](https://www.python.org/downloads/) in your environment.
2. Install [Git](https://git-scm.com/downloads).
3. Install [pip3](https://pip.pypa.io/en/stable/installation/) package manager for Python.
4. Install an editor such as [Pycharm Community Edition](https://www.jetbrains.com/pycharm/download/)

#### Setup Starter Package
<ol>
  <li>Clone the <a href='https://github.com/ibm-watson-iot/functions/tree/'> HelloWorld starter package </a>.</li>
  <li>Open a terminal window.</li>
  <li>Make a new project folder for the starter package. For example, mkdir custom_function.</li>
  <li>Change to the project directory. For example, cd custom_function.</li>
  <li>Clone the starter package. Enter:
    <pre><code class="language-bash">git clone --branch starter_package https://github.com/ibm-watson-iot/functions.git</code></pre>
  </li>
  <li>Verify that you cloned the starter package to the custom_function directory.</li>
  <li>Change to the functions directory in the starter package. Enter: cd functions</li>
  <li>Open the setup.py file. The setup.py file defines the package name and the list of packages that are required for the project.</li>
  <li>Set the name parameter to custom{your_initials}. Replace the {your_initials} variable with  
       your initials or with another unique value.</li>
  <li>In the ibm-watson-iot/functions repository, verify that the iotfunction package is the    
        correct version. For example, for Maximo Monitor 9.1, the package must be from the 9.1.X GitHub branch. Do not replace the x in the version with another value. The following text is an example setup.py file. The name parameter is set to customId and the 9.1.X branch is used.</br>
        <pre><code class="language-bash">
        #!/usr/bin/env python 
        from setuptools import setup, find_packages
        setup(name='customld', version='0.0.1', packages=find_packages(),
        install_requires=['iotfunctions@git+https://github.com/ibm-watson-iot/functions.git@9.1.x'])
        </code></pre> 
  </li>
</ol> 

#### Setup Pycharm
<ol>
  <li> Install the <a href = 'https://www.jetbrains.com/pycharm/download/'> PyCharm </a> community edition
  </li>
  <li>Open PyCharm and select Open to browse to your cloned directory.</li>
  <li>Next, create a Python virtual environment (venv) inside the custome_function folder by running the following command:</li></br>
  <li> 
     <pre><code class="language-bash">
        python3 -m venv venv-cust
        cd venv-cust/bin source activate
     </pre></code>
  </li>
  <li>
    <ol>Set up a virtual environment: 
        <li> Go to PyCharm > Preferences > Project > Python Interpreter </li>
        <li>Click the settings icon and select Add</li>
        <li>Set your venv folder location</li>
        <li>Set the base interpreter to your Python 3.11.x directory</li>
    </ol>
  </li>
  <li>Run the following command to install the iotfunctions package into your Python environment. Ensure that you use   the correct branch name for your version</br>
  <pre><code class="language-bash">
            pip3 install git+https://github.com/ibm-watson-iot/functions.git@9.1.x --upgrade
     </pre></code>
  </li>
  </ol>


!!! note
    Always use the IoT Functions version that matches your Maximo Monitor version to avoid pipeline issues.

!!! attention
    If you're using a Mac Machine, you might encounter compatibility issues with the ibm_db package. Here's how to resolve them:</br>
    Open the requirements.txt file</br>
    Change ibm_db==3.2.3 to ibm_db==3.2.5</br>
    Save the file</br>
    pip3 install -r requirements.txt

---
Congratulations you have successfully setup the starter package.</br>
