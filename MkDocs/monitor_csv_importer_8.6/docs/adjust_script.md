# Objectives
In this Exercise you will learn how to:

* Create the Monitor Device type
* Inject and verify 1 row of data
* Inject historical data from CSV file(s)

---
*Before you begin:*  
This Exercise requires that you:

1. Have completed the pre-requisites required for [all labs](../prereqs)
2. Have completed the [setup of Node-RED locally](../setup)
3. Have [imported the Node-RED script](../get_script)
 

!!! note
    You need the credentials described in the [Pre-Requites](../prereqs) before proceeding with this exercise.

The Node-RED script includes 5 steps which are shown with comment nodes in the script:

1.  Create generic flow data in the "Set Flow Data" function node
2.  Create Asset Table in DB2 using the Monitor API
3.  Inject 1 row of data into the table to verify it works
4.  Update the "Fomat SQL" function node in step 5 to reflect step 3
5.  Upload CSV data to SQL database using the UI uploader


!!! tip
    You can also find the description of the 5 steps within the flow in textual form.</br>
    Simply double-click to open the INFORMATION node:</br></br>
    ![View Information](/img/monitor_csv_importer_8.6/Adjust_00.png)</br></br>
</br>

---
##  Create the Monitor Device type

This section describes how to use the Monitor API to create the demo pump device in Monitor without using the IoT Tool.

1.  Open Node-RED in your browser if not done already.
2.  Find and open the "Set Flow Data" node in Step 1.
![Find node](/img/monitor_csv_importer_8.6/Adjust_01.png)</br></br>
3.  Enter the Monitor API URL `monitorAPIURL`, the API Key `x_api_key` and API Token `x_api_token`.</br>
 Replace XX with your initials in line 5 and 7. Press `Done`.
![Enter credentials](/img/monitor_csv_importer_8.6/Adjust_02.png)</br>
The metricTimestampColumn in the "Set Flow Data" function node tells Monitor which column should be used as timestamp, which is important when injecting historical data.</br>
The metrics are already adjusted to contain the same columns as in Pump CSV data files that you will use later in the lab.</br></br>
4.  Deploy the script and if you enterred the correct credentials you should see the below message at [Node-RED Dashboard](http://localhost:1880/ui){target=_blank} (unless the DEMO_PUMP table has already been created).
![Verify connection to Monitor](/img/monitor_csv_importer_8.6/Adjust_03.png)</br></br>
5.  Step 2 is really easy, as it only requires you to click on the inject node called "Create Table".
![Create Table](/img/monitor_csv_importer_8.6/Adjust_04.png)</br></br>
6.  Navigate to the [Dashboard](http://localhost:1880/ui){target=_blank} once the `requesting` status of the `http request` node is gone.
![Table Created](/img/monitor_csv_importer_8.6/Adjust_05.png)</br></br>

    
!!! attention
    The order and names of the metrics MUST be the same as in the CSV file!!
</br>

##  Inject and verify 1 row of data

!!! note
    You can use the Maximo Monitor application to verify that the Device type has been created.</br>
    However I will be using [DBeaver Community Edition](https://dbeaver.io/download/){target=_blank} during this lab.</br>
    Now you should be able to see the DEMO_PUMP tables have been created:</br></br>
    ![View Information](/img/monitor_csv_importer_8.6/Adjust_10.png)</br></br>
</br>

1.  Find and open the "MAS (8.6)" dashDB In node in Step 3.
![Find node](/img/monitor_csv_importer_8.6/Adjust_11.png)</br></br>
2.  Click on the pencil to edit the Server data.
![Edit Server](/img/monitor_csv_importer_8.6/Adjust_12.png)</br></br>
3.  Enter the credentials to the DB2 Warehouse server and press `Update` and then `Done`.
![Edit Server](/img/monitor_csv_importer_8.6/Adjust_13.png)</br></br>
4.  Find and open the "Format SQL" function node.
![Find node](/img/monitor_csv_importer_8.6/Adjust_14.png)</br></br>
5.  Scroll down and you will see two sections where you can enter data.</br>
The first `"line"` section is populated with some simulated data which is in the same order as the CSV file data you will be using soon.
The second section is where the SQL statement is being created which will be used to inject that data into the DB2 Warehouse.</br>
You can leave these sections untouched for now, as this excercise will use the provided CSV files that matches that data set - Click on `Done` or `Cancel` to close the function node.
![Describe Sections](/img/monitor_csv_importer_8.6/Adjust_15.png)</br></br>
6.  Deploy the script and click on the `Inject 1 row` inject node.
![Inject 1 row](/img/monitor_csv_importer_8.6/Adjust_16.png)</br></br>
7.  My first try failed due to wrong password as you can see in the debug pane.</br>
The second attempt was successful as shown in the red box.</br>
You can also see the actual complete SQL statement that was send to the database. This might help you when you want to experiment with your own data set after you have completed this lab.
![Inject 1 row](/img/monitor_csv_importer_8.6/Adjust_17.png)</br></br>
8.  And you can also verify that the data was injected into the database using DBeaver.
![Show 1 row in DBeaver](/img/monitor_csv_importer_8.6/Adjust_18.png)</br></br>



##  Inject historical data from CSV file(s)

Now is the time you have been waiting for ;-)</br></br>
You will be using the two csv files which was downloaded together with the Node-RED script</br>
(in your Downloads folder). Please remember that location.</br>
The first three steps of the total of five is done and you will now execute the last two steps.

!!! tip
    The uploadSql and the chunks-to-lines nodes makes it possible to handle rather large data sets as they make sure the data set is handled in smaller chunks to avoid memory issues - but at the same time ingest 2048 rows into the database at the time (it seems to be a good number from a performance and error avoidance perspective).


1.  As you can see in the script Step 4 is about copying the second section from `Format SQL` in Step 3 to `Format SQL` in Step 5.
![Show Step 4](/img/monitor_csv_importer_8.6/Adjust_20.png)</br></br>
2.  Open the `Format SQL` in Step 3, scroll to the end and make a copy of the lines between:</br>
`// BEGIN: THIS SECTION CAN BE COPIED TO STEP 5 "Format SQL" NODE, ONCE IT WORKS.
:
// END`</br>
Click `Cancel`.
![First Format SQL node](/img/monitor_csv_importer_8.6/Adjust_21.png)</br></br>
3.  Open the `Format SQL` in Step 5, scroll to the end.</br>
You can see that the content you copied from Step 3 is already there, but now you know the process when experimenting with your own data sets. Just click `Cancel`.
![Second Format SQL node](/img/monitor_csv_importer_8.6/Adjust_22.png)</br></br>
4.  It is a good idea to delete the test rows that was injected in Step 3 before injecting the CSV data from the files. Scroll down in the workspace and you will see some additional Step 4 nodes to empty the table (but not removing it), click on the `Truncate table` inject node.
![Truncate table](/img/monitor_csv_importer_8.6/Adjust_23.png)</br></br>
5.  It is now time to inject the first small data set of 10 data lines. The file `PumpDataSmall.csv` will be used for that purpose.</br>
Navigate the the [Node-RED Dashboard](http://localhost:1880/ui){target=_blank} and click on `Choose file` (or `Browse...` on Windows).
![Choose file](/img/monitor_csv_importer_8.6/Adjust_30.png)</br></br>
6.  Select `PumpDataSmall.csv` and press `Open`.
![Select file](/img/monitor_csv_importer_8.6/Adjust_31.png)</br></br>
7.  Press the `Play` button.
![Run](/img/monitor_csv_importer_8.6/Adjust_32.png)</br></br>
8.  It took 1 second to inject 10 rows of data.
![Injected 10 rows](/img/monitor_csv_importer_8.6/Adjust_33.png)</br></br>
9.  If that is not the case, then verify that the separator is correct. Open the `csv` node.
![csv node](/img/monitor_csv_importer_8.6/Adjust_34.png)</br></br>
10.  Verify that the Separator is the same as that being used in the CSV file.</br>
`semicolon` is used in the pump csv files.
![csv separator](/img/monitor_csv_importer_8.6/Adjust_35.png)</br></br>
11.  It is a good idea to disable the two debug nodes before injecting the larger csv file. Click on the green (enabled) button so it become grey (disabled).
![Disable debug nodes](/img/monitor_csv_importer_8.6/Adjust_40.png)</br></br>
12.  Now it is time to inject the large CSV file. Click on `Choose file` and open `PumpData.csv`. 
![Choose large file](/img/monitor_csv_importer_8.6/Adjust_41.png)</br></br>
13.  Click on the `Play` button and you will see the progress as data is being injected.
![Running](/img/monitor_csv_importer_8.6/Adjust_42.png)</br></br>
14.  You have now injected 132479 rows of data in total from the two CSV files :-)
![Done](/img/monitor_csv_importer_8.6/Adjust_43.png)</br></br>


!!! attention
    Please empty the table when it is no longer being used.


---
Congratulations you have successfully adjusted and prepared your script as well as injected the data from the two CSV files.</br>
You will now be able to adjust according to your own data sets and inject those data sets into Maximo Monitor - Enjoy!