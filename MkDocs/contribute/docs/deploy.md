# Deploy to IBM Cloud

This part of the contribution is performed by Carlos Ferreia (carlos.ferreira1@ibm.com).</br>
Contact him to accept your Pull Request and then perform the build and deploy.

Build the site:

    cd /Users/carlos.ferreira1ibm.com/ws/mkdocs/mam-hol-project
    ./build_all_mkdocs.sh
 
Kill MK Docs Process and copy site content:
 
    ps -A | grep mkdocs
    cd /Users/carlos.ferreira1ibm.com/ws/mkdocs/mam-hol-project
    cp -R /Users/carlos.ferreira1ibm.com/ws/mkdocs/mam-hol-project/site/* /Users/carlos.ferreira1ibm.com/ws/mkdocs/mam-hol-project/mam-hol/public
    cd mam-hol


Deploy using ibm cloud cf push:
    
    cd /Users/carlos.ferreira1ibm.com/ws/mkdocs/mam-hol-project/mam-hol
    ibmcloud login -sso
    ibmcloud account list
    Select account 1. IBM (10b59068b84d48c48f8300f8e1e63dba)
    ibmcloud target -c <<accpunt_id>>
    ibmcloud api https://api.eu-gb.bluemix.net
    ibmcloud target --cf-api https://api.eu-gb.bluemix.net -o carlos.ferreira1@ibm.com -s dev
    ibmcloud cf push

