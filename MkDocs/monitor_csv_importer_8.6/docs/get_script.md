# Objectives
In this Exercise you will learn how to:

* Get the required Node-RED script
* Import the script into Node-RED

---
*Before you begin:*  
This Exercise requires that you have:

1. completed the pre-requisites required for [all labs](../prereqs)
2. completed the [setup of Node-RED locally](../setup)
 
---
##  Get the required Node-RED script

1.  Open a browser and navigate to [monitor_csv_importer github repository](https://github.com/ekstrom-ibm/monitor_csv_importer){target=_blank}.
2.  Click on the green `Code` button and select `Download ZIP`.
![Download Github Repo](/img/monitor_csv_importer_8.6/Get_01.png)</br></br>
3.  Save it in your Downloads directory.
4.  Extract the ZIP file (double-click on Mac) and you will have a directory with the files you need:
![View files](/img/monitor_csv_importer_8.6/Get_02.png)</br></br>

!!! tip 
    You can Right-Click on the images in this lab and select `Open Image in New Tab` </br>
    to view the details in the screen shots:</br></br>
    ![View details](/img/monitor_csv_importer_8.6/Get_03.png)</br></br>


##  Import the script into Node-RED

Now it is time to import the downloaded Node-RED script.

1.  Start the Node-RED instance if not already done (in a CMD/Terminal/iTerm window).
![Start Node-RED](/img/monitor_csv_importer_8.6/Import_01.png)</br></br>
2.  Open the browser and navigate to [localhost:1880](http://localhost:1880){target=_blank}.
3.  Click on the burger menu in upper right hand corner and select `Import`.
![Select Import](/img/monitor_csv_importer_8.6/Import_02.png)</br></br>
4.  Click on `select a file to import`.
![Select File](/img/monitor_csv_importer_8.6/Import_03.png)</br></br>
5.  Select the `Upload CSV to Db2 Pump.json`and click Open.
![Open File](/img/monitor_csv_importer_8.6/Import_04.png)</br></br>
6.  Click `Import`.
![Import File](/img/monitor_csv_importer_8.6/Import_05.png)</br></br>
7.  Click the `Deploy` button</br>
![Deploy](/img/monitor_csv_importer_8.6/Import_06.png)</br></br>
8.  and see this:
![View Dashboard](/img/monitor_csv_importer_8.6/Import_07.png)</br>
which is OK for now, as you need to add the credentials for your MAS instance.


---
Congratulations you have successfully downloaded and imported the Node-RED script.</br>
You will now be able to adjust the Node-RED script to your environment.