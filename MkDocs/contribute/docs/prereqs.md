# Pre-Requisite Instructions

Here are the required pre-requisites for contributing to The Maximo labs.

## Contribute Content
Writing new labs or improve the existing labs 

1. Get a Github account:  
* IBMers can get an account here: [https://w3.ibm.com/developer/opensource/contribute/ibm-github/](https://w3.ibm.com/developer/opensource/contribute/ibm-github/)
* Others can access and get an Github Here [https://github.com/IBM/monitor-hands-on-lab](https://github.com/IBM/monitor-hands-on-lab):
* Access the published doc here:[https://mam-hol.eu-gb.mybluemix.net/](https://mam-hol.eu-gb.mybluemix.net/)

2.  Setup your local editing environment to contribute content.

3.  Do a pull request to update content.   See details below.

4.  Deploy the web app to IBM CLoud.  See details below.


## How to Add Content to the Monitor Hands on Lab

### Setup Python 3

You can install Python packages with

    pip3 install <package>

This will install into the site-package directory

    /usr/local/lib/python3.7/site-packages
    
    usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)”
    brew install python3
    python3 —version
    sudo pip3 install virtualenv
    virtualenv iot-python3
    source iot-python3/bin/activate
    python --version

### Setup MkDocs

Install MkDocs. https://www.mkdocs.org/

    pip install mkdocs

Active Virtual Environment 
 
    cd /Users/carlos.ferreira1ibm.com/ve/iot-python3/bin
    source activate
   
Change Directory into the Site
   
    cd /Users/carlos.ferreira1ibm.com/ws/mkdocs/mam-hol-project/

Dectivate Virtual Environment 

    deactivate

Building the Site

    mkdocs build
    mkdocs serve

You will then find the build site here: http://127.0.0.1:8000

### Add Content

Add the files to /MkDocs/<Lab_version>/docs/ starting with the index.md

GitHub

HOL Repo  https://github.com/IBM/monitor-hands-on-lab
Open an Github account to contribute https://w3.ibm.com/developer/opensource/contribute/ibm-github/

IBM Cloud PHP Static WebSite Repo url https://github.com/carlosibm/mam-hol
team https://github.com/orgs/IBM/teams/watson-iot

IBM Cloud Public MAM HOL Pages Website url https://mam-hol.eu-gb.mybluemix.net/

URL to Hosted Labs on IBM Cloud  https://monitor-hol.eu-gb.mybluemix.net/

To Add Content First Pull Latest Content Locally

    git pull  https://github.com/IBM/monitor-hands-on-lab.git master
    git status 
    git add   files shown as changed in status
    git commit -m “message of changes”
    git push origin master

Review and Accept Pull Requests


### Deploy to IBM Cloud

Use command line to deploy ibm cloud cf push

    mkdocs build
    mkdocs serve
 
Kill MK Docs Process
 
    ps -A | grep mkdocs
    cd /Users/carlos.ferreira1ibm.com/ws/mkdocs/mam-hol-project
    cp -R /Users/carlos.ferreira1ibm.com/ws/mkdocs/mam-hol-project/site/* /Users/carlos.ferreira1ibm.com/ws/mkdocs/mam-hol-project/mam-hol/public
    cd mam-hol

Re-Add Google Analytics
To each file like  public/analyze_data/index.html

    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-159649729-1"></script>
    <script>
    window.dataLayer = window.dataLayer || [];
    function gtag(){dataLayer.push(arguments);}
    gtag('js', new Date());
    gtag('config', 'UA-159649729-1');
    </script>

Deploy
    
    cd /Users/carlos.ferreira1ibm.com/ws/mkdocs/mam-hol-project/mam-hol
    ibmcloud login -sso
    ibmcloud account list
    Select account 1. IBM (10b59068b84d48c48f8300f8e1e63dba)
    ibmcloud target -c <<accpunt_id>>
    ibmcloud api https://api.eu-gb.bluemix.net
    ibmcloud target --cf-api https://api.eu-gb.bluemix.net -o carlos.ferreira1@ibm.com -s dev
    ibmcloud cf push

