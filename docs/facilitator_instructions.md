# Pre-Requisite Instructions

Here are the require pre-requisites for all labs in this hands on lab guide

## All Labs

All labs require that you have:

1.  A computer with a Chrome browser, internet connectivity and Bluetooth connectivity.

2.  User access to a Maximo Asset Environment like the `Monitor-Demo` tenant [URL](https://dashboard-beta.connectedproducts.internetofthings.ibmcloud.com/preauth?tenantid=Monitor-Demo&isAPM=true)  To get access to the `Monitor-Demo` tenant, please send an email to your lab facilitator or `carlos.ferreira1@ibm.com`

3.  An IBM ID.  If you don't have an IBM ID you can get one [here](https://www.ibm.com/account/reg/signup?)

  * Click `Login to MY IBM` button
  * Click `Create an IBM ID` link

4.  Test your access to the Maximo Asset Monitor Environment.  If you are using tenant id  "Monitor-Demo"  you can try using this [URL](https://dashboard-beta.connectedproducts.internetofthings.ibmcloud.com/preauth?tenantid=Monitor-Demo&isAPM=true)

## Lab 1 Connect Devices

1.  You have completed the pre-requisites required for [All Labs](../facilitator_instructions)above.

2.  You have a Nordic Thingy.  See the sections below for purchasing a Nordic Thingy.  


## Lab 2 Monitor Assets

1.  You have completed Lab 1 Connect Devices


## Purchasing a Nordic Thingy
Purchasing a Nordic Thingy is a 4-step process:

1.	Go to the Nordic Semiconductor website:https://www.nordicsemi.com/Software-and-Tools/Prototyping-platforms/Nordic-Thingy-52

2.	Click the green `Buy Now` button shown in the red box to navigate to the distributers page.

3.	Select your region and choose a distributer

4.	Follow the directions on the distributer’s website to checkout. Get manager approval and checkout.

### IBMers can Expense a Nordic Thingy
If you are an IBMer follow these instructions for expensing the Nordic Thingy

1.	Launch SAP Concur

2.	Select the Expense Tab on the top bar

3.	Select the Nordic Thingy Notification and Create a New Report

4.	Create a Report and fill in the boxes: Report Name, Business Purpose, Report Category, and the Cost Center you will be charging it too. Report the purchase under `Non-Travel Expenses`. Save the Report.

5.	Click `Expense` and make the Expense Type `Emergency Purchase` and the Expense Subtype `PC Supplies`. Give the Description box a meaningful description to why you’re purchasing the Nordic Thingy:52. Save the expense.

6.	Submit the Report.

# How to Contribute

You can contribute to this Hands On Lab by:

1.  Submitting issues or enhancements that you would like to see to this hands on lab.
2.  Becoming an author contributor of the labs.

# Adding Content to the Monitor Hands on Lab

## Setup Python 3

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

## Setup MkDocs

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

>http://127.0.0.1:8000
http://127.0.0.1:8000/img/architecture.png

## Add Content

Add the files to /docs/ index.md
Add the files to /docs/ index.md

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


## Deploy to IBM Cloud

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

## For IBMers
