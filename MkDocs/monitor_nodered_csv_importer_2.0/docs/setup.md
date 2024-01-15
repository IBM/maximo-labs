# Objectives
In this Exercise you will learn how to:

* Install Node-RED locally
* Add required additional nodes

---
*Before you begin:*  
This Exercise requires that you have:

1. completed the pre-requisites required for [all labs](prereqs.md)
 
---
##  Install Node-RED locally

This is a fairly easy step, as you just have to follow this guide:
[Running Node-RED locally](https://nodered.org/docs/getting-started/local){target=_blank}</br>

Once installed and started open the browser and start the [Node-RED](http://localhost:1880/){target=_blank} editor.</br>

!!! attention
    Make sure you are running Node-RED v3+, i.e. if you already have an existing older Node-RED instance installed locally then make sure to upgrade it before proceeding.


##  Add required additional nodes

Before loading the Node-RED script you need to add the required additional node libraries.
Node-RED library dependencies:</br>
- node-red-dashboard</br>
- node-red-contrib-ui-upload</br>
- node-red-contrib-chunks-to-lines</br>

1. Click on the burger menu in upper right hand corner and select `Manage palette`.
![Manage palette](img/Setup_01.png)</br></br>
2. Click on `Install` and write `node-red-dashboard`in the Search field - then click on `Install`.
![Install node-red-dashboard](img/Setup_02.png)</br></br>
3. Click on `Install` again.
![Install node-red-dashboard](img/Setup_03.png)</br></br>
4. Wait until you see the new nodes have been installed.
![Install node-red-dashboard](img/Setup_04.png)</br></br>
5. Repeat step 2-4 for the other 2 libraries: `node-red-contrib-ui-upload` and `node-red-contrib-chunks-to-lines`.


---
Congratulations you have successfully installed and prepared a local instance of Node-RED.</br>
You will now be ready to simulate a device or gateway in the following exercises.