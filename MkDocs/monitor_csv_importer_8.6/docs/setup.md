# Objectives
In this Exercise you will learn how to:

* Install Node-RED locally
* Add required additional nodes

---
*Before you begin:*  
This Exercise requires that you have:

1. completed the pre-requisites required for [all labs](../prereqs)
 
---
##  Install Node-RED locally

This is a fairly easy step, as you just have to follow this guide:
[Running Node-RED locally](https://nodered.org/docs/getting-started/local){target=_blank}</br>

It will work for Mac, Windows, and various Linux distributions.
I used a local nmp installed version of Node-RED on my Mac.</br>
</br>
In either way, once installed open the browser and start the [Node-RED](http://localhost:1880/){target=_blank} editor.

##  Add required additional nodes

Before loading the Node-RED script you need to add the required additional node libraries.
Node-RED library dependencies:</br>
- node-red-dashboard</br>
- node-red-contrib-ui-upload</br>
- node-red-contrib-chunks-to-lines</br>
- node-red-nodes-cf-sqldb-dashdb</br>

1. Click on the burger menu in upper right hand corner and select `Manage palette`.
![Manage palette](/img/monitor_csv_importer_8.6/Setup_01.png)</br></br>
2. Click on `Install` and write `node-red-dashboard`in the Search field - then click on `Install`.
![Install node-red-dashboard](/img/monitor_csv_importer_8.6/Setup_02.png)</br></br>
3. Click on `Install` again.
![Install node-red-dashboard](/img/monitor_csv_importer_8.6/Setup_03.png)</br></br>
4. Wait until you see the new nodes have been installed.
![Install node-red-dashboard](/img/monitor_csv_importer_8.6/Setup_04.png)</br></br>
5. Repeat step 2-4 for the other 3 libraries.


---
Congratulations you have successfully installed and prepared a local instance of Node-RED.</br>
You will now be able to get and load the Node-RED script.