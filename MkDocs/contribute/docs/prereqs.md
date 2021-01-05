# Pre-Requisite Instructions

Here are the required pre-requisites for contributing to The Maximo labs.

## Setup Python 3

You can install Python packages with

    pip3 install <package>

This will install into the site-package directory

    /usr/local/lib/python3.7/site-packages
    
    usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)”
    brew install python3
    python3 --version
    sudo pip3 install virtualenv
    cd ~
    virtualenv iot-python3
    source iot-python3/bin/activate
    python --version
    pip --version

## Setup MkDocs

Install MkDocs. https://www.mkdocs.org/

    pip install mkdocs

Active Virtual Environment 
 
    cd ~/iot-python3/bin
    source activate
   
Change Directory into the Site
   
    cd /Users/carlos.ferreira1ibm.com/ws/mkdocs/mam-hol-project/

Dectivate Virtual Environment 

    deactivate

## Git / Github setup

1. Get a Github account
2. IBMers can get access to the IBM Github area here:<br>
[https://w3.ibm.com/developer/opensource/contribute/ibm-github/](https://w3.ibm.com/developer/opensource/contribute/ibm-github/)
3. Access the Github repo of the IBM Maximo Labs here:<br>
[https://github.com/IBM/monitor-hands-on-lab](https://github.com/IBM/monitor-hands-on-lab)
4. Access the latest published labs here:<br>
[https://mam-hol.eu-gb.mybluemix.net/](https://mam-hol.eu-gb.mybluemix.net/)<br>
(This might not contain the latest changes from the Github repository)

Clone the github repository down to your local machine:

    cd ~
    mkdir Github
    cd ~/Github
    git clone git@github.com:IBM/monitor-hands-on-lab.git
    cd monitor-hands-on-lab

Now build the complete site on your local machine:

    ./build_all_mkdocs.sh
    
Open a browser and navigate to [http://localhost:8080/](http://localhost:8080/) and take a look at the complete IBM Maximo labs locally.  
<br>
To find these contribute instructions navigate to [http://localhost:8080/contribute](http://localhost:8080/contribute)

*You are now ready to either add to existing labs or create a new lab from scratch.*