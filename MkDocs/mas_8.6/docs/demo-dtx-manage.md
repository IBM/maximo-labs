# Digital Twin Exchange - Manage Lab (Under construction)

!!! note
    Please follow the `Action` statements to navigate the steps and perform the lab.

An asset manager, I can leverage the Digital Twin Exchange to purchase various artifacts related to an asset. The contents that are available in the Exchange range from simple asset related artifacts such as BOM, job plan and spare parts to AI model that you can deploy on other applications such as Monitor and MVI. The exchange also has the capability to import the purchased content to the Manage. I am going to browse through the artifacts available on the exchange and find contents related to a Centrifugal pump to import into Manage . You can also see the data models for the data scientist such as the isolation forest model that helps to detect anomalies in Monitor’s data.<br>

## Digital Twin Data

`Action:` Show how to browse the DTX and browse through the contents. Purchase a job plan and spare parts list related to a centrifugal pump- use the dev environment.
 
1.	Click this [link](https://digitaltwinexchange.ibm.com/) for DTX.
2.	Browse the Exchange and highlight the Isolation Forest Anomaly Detection Model as an artifact that feeds into Monitor to detect anomalies in the monitored asset
3.	Type `centrifugal` in search to look for relevant asset data in the Exchange
4.	Choose `Centrifugal Pump 12 month Job Plan` and `Centrifugal Pump Assembly Spare Parts Item`, add to basket 
5.	Checkout and purchase(verbally)

![img](/img/mas_8.6/dtx1.png){:style="height:400px;width:800px"} 
![img](/img/mas_8.6/dtx2.png){:style="height:400px;width:800px"} 
![img](/img/mas_8.6/dtx3.png){:style="height:400px;width:800px"} 

The availability of digital contents and integration between the DTX and Manage helps me save time and effort locating and registering the relevant information as well as ensuring the accuracy of the data If you are a provider of the contents, the DTX allows you to monetize on the digital contents such as data models, asset related information and IP some of which you have seen in our demo for Monitor and MVI.<br>
 

## Import into Manage

`Action:` Show how to import purchased job plan and the spare parts list into Manage
 
1.	Log in to Manage. 
2.	Go to Assets
3.	Click `Import Digital Data` under Common Actions
4.	Select Data Source `Digital Twin`
5.	Type in `Digital Twin Email` and `Key`
6.	Click `Request Data`
7.	Verify purchased DTX contents
8.	Choose `Centrifugal Pump 12 month Job Plan` and `Centrifugal Pump Assembly Spare Parts Item`
9.	Click `Import Data` and confirm `Success` on the status
10.	Go to Job Plans and search Job Plan with `DT`, confirm the imported job plan
11.	Go to item master and search the item with `DT`, confirm 4 items are imported

![img](/img/mas_8.6/manage1.png){:style="height:400px;width:800px"} 
![img](/img/mas_8.6/manage2.png){:style="height:400px;width:800px"} 
![img](/img/mas_8.6/manage3.png){:style="height:400px;width:800px"} 


<b>TRANSITION:</b> I’m going to turn it over to the technician who is assigned to work on the pump.

!!! alert 

    After each demo, please clean up the imported items from the Maximo instance. 

