# Build MAS Health and Predict Demonstration

Follow the steps in this lab in your own environment to create the necessary components to deliver the Maximo Application Suite (MAS) v9 Health and 
Predict Demo Script. The data for your system can be provided by the instructor or you can create your own assets too for some of the exercises.

1. Login to MAS Applications 
2. Setup Health Asset Permissions 
3. Setup Default Health Asset Condition Scores
4. Create an Asset
5. Setup Health Score Groups 
6. Create a Score Group
7. Create score type 
8. Create group using Custom Scoring Methodology 
9. Create custom matrix 
10. Plan replacement plan template for Substation Transformers 
11. Create investment project

To keep track of the items that you create, append your initials to the end of the name, so that they’ll be easy to find and delete.

**Prerequisites**

This lab requires the following:

- A working MAS environment with Maximo Manage, or another Enterprise Asset Management (EAM) 
system, Maximo Health, Maximo Health and Predict, IBM Maximo Models for Electrical Distribution and Maximo Optimizer installed.
- Sufficient asset data to run the analysis and get insights
- User id with application access to `Health` application.
- User id with access to a site. Otherwise you will get a warning `This user doesn't have access to any site. Site access is required to access ASSET object`

##  Login to MAS Applications

Launch `Health` on the `Applications` tab.  If `Health` tile is not present on applications tab,  ask your MAS admin has to enable it. 

1. After you login using the credentials provided by your instructor,  navigate to the 
2. From the main MAS page, select the `Applications` tab
![navigate_to_health](../../../maximo-labs/apm_8.11/img/hpu_8.11/health1.png)
3. Click the `Launch` link on the `Manage`, `Health` or `Predict` tile.  To setup permissions in the next exercise you will go to Manage.
4. This displays the assets grid page with a table of assets and their health scores for the user's currently assigned site.
![assets_page](../../../maximo-labs/apm_8.11/img/hpu_8.11/assets_grid_page.png)

**Note if  the user isn't assigned to a site they will not see any assets. ** 

## Setup Health Asset Permissions in Manage
<a name="setup-health-asset-permissions"></a>

In order to allow users to `edit source record` on `Action` button on the Health asset details page you must first configure the Health application security groups in Manage using the steps below.

1. Go to Manage Application.
![assets_page](../../../maximo-labs/apm_8.11/img/hpu_8.11/select_manage.png)
2. Choose the `Security group` application. 
![assets_page](../../../maximo-labs/apm_8.11/img/hpu_8.11/select_security_groups.png)
3. Search on the `HEALTH` group and click `enter` key. 
![assets_page](../../../maximo-labs/apm_8.11/img/hpu_8.11/search_health_group.png)
4. Click the `Applications` tab.
5. Select `Assets`
![assets_page](../../../maximo-labs/apm_8.11/img/hpu_8.11/click_applications_assets.png)
6. Click the `Grant listed options for the application` 
7. Enable options for asset actions
![assets_page](../../../maximo-labs/apm_8.11/img/hpu_8.11/turn_on_options.png)
8. Click `Save Group`. 
![assets_page](../../../maximo-labs/apm_8.11/img/hpu_8.11/confirmation_save.png)
9. Go back to `Health`application and login using the user to ensure the operation is now possible.

## Setup Default Health Asset Condition Scores
<a name="default_score"></a>

Maximo Health v9 includes the ability to automatically active Asset Condition scoring for all assets that don't belong to
a score group.  After you activate the default asset condition scores, any new asset you create will also use 
the out of the box default score group to calculate asset condition for Health Risk and Criticality.   Asset that are 
already part of score group will be skipped.

Watch the [video on Default Asset Condition Scores](https://mediacenter.ibm.com/media/1_2k8jqivj)

### Activate the Default Score

In this exercise you enable the `Default Score`. 

1. After you Log into IBM Maximo for the first time you will be reminded to enable the `Default Score`. 
2. Press the `Activate` Button to enable the Default Scores.
![default_scores_form_](../../../maximo-labs/apm_8.11/img/hpu_8.11/default_scores_form.png)
3. Make sure you have create assets and they have the required dependencies set.  An Asset Priority,  Work orders or 
Service Requests set against the asset.  Asset installation date and asset expected life based on Manufacture.
4. Optionally you can choose to `activate the scores later`.  Go to `Setting Group` and `Groups` tab to find the 
`Default_Score` group to enable it.
5. Check the group to see if the default scores have been activated.  You will see Health, Risk and Criticality 
calculated for all your assets.
![default_scores_group_](../../../maximo-labs/apm_8.11/img/hpu_8.11/defaultscores_activated.png)

Asset scores will begin to be calculated using the `Default_Score` group.  You can also verify if the scoring is working by
viewing assets using the `Asset Table List` page.  If the Health, Risk ad Criticality score don't apper it likely because
there data missing for it to be calculated.   You can bulk update missing data for Installation Date in the `Asset Table 
List` page simply by clicking on the column and row asset value and entering the information in the pop up dialog.   
You can also view the Asset Condition Scores for `Health`, `Risk` and `Criticality` on the `Asset Details` page.

## Create an Asset
<a name="create_asset"></a>

In this exercise you create an asset in IBM Maximo Manage.  You will use this asset later to measure it's Meantime 
Between Failure and see how it's value performs versus other assets using a Chart. 

In order for the Meantime Between Failure Score to be calculated you also are required also create an unscheduled emergency work 
order.   Let's start by first creating the asset and then a work order.

To create an example asset for Meantime Between Failure score make sure you enter the following asset fields:

- Asset Number: "AH016"
- Description: "Submersible pump 20 hp rotary"
- Asset Type: "Pump"
- Status: Active
- Installation Date: 6/1/20
- Expected Life: 10  ( Manufacture suggested life - 20% for example)
- Vendor: Armstrong
- Manufacturer: Armstrong

1. Log into IBM Maximo.  Open IBM Maximo Application Suite. 
- Open your web browser and navigate to the IBM Maximo login page.
- Enter your `username` and `password` to log in.
- Launch `Manage` on the `Applications` tab.  If `Manage` tile is not present on `Applications` tab,  ask your MAS 
administrator to enable it for your user id.

2. Navigate to the `Asset` Module. Select to `Asset` Module.  From the main Maximo menu, select `Assets > Assets`.

3. Create a New Asset:

- Open `New Asset` Form. In the `Asset` module, click on the `New Asset` button to open the `asset creation` form.

4. Fill in Asset Details:

- Enter `Asset Number`. In the `Asset Number` field, enter a unique identifier for the asset (e.g., AH016).
- Enter `Description`.  In the `Description` field, enter a detailed description of the asset (e.g., Submersible pump 20 hp rotary).
- Select `Asset Type`. Locate the `Asset Type` field and select the appropriate type from the dropdown menu (e.g., Pump).
- Enter `Installation Date`. Enter the `date` the asset was installed. Use the date picker to select the date (e.g., 2024-05-21).
- Enter `Vendor Information`. In the `Vendor` field, enter the name of the vendor from which the asset was purchased (e.g., Siemens).
- Enter `Manufacturer Information`. In the `Manufacturer` field, enter the name of the manufacturer of the asset (e.g., ABB).
- Enter `Expected Life` in Years. In the `Expected Life` field, enter the expected operational life of the asset in years (e.g., 20).

5. Save the `Asset`. After filling in all the required fields, click the `Save` button to create the asset record in Maximo.

- Click `Save` to store the new asset record.

6. Select  the asset status to `Active`:

- From the `Common Actions` menu on the left, find the `Status` menu to launch the status Form.
![change_asset_status](../../../maximo-labs/apm_9.0/img/change_asset_status.png)
- Choose  `Active` from the `New Status` dropdown menu and click `Save` button.
![change_asset_status](../../../maximo-labs/apm_9.0/img/change_asset_status.png)

##  Setup Health Score Groups
<a name="setup_health_score_group"></a>

When you first login to the Health Application,  there is a universal table list view of all managed assets.

Scores that are shown in this view, and others, are created from the `Scoring Settings` section on the left nav bar.

1. Hover over the left nav bar to expand it. Select the `Scoring Settings` section on the left nav bar
![setup_settings menu](../../../maximo-labs/apm_9.0/img/score_settings.png)	

2. Create a scoring group by choosing assets that have similar behavior.  `Groups` are bound to an `asset query`. 

If there are any scoring groups already created, they will appear on the `Groups` tab of the `Scoring settings` page.

3. Scroll through the pages to see what groups have already been created.
![setup_assets](../../../maximo-labs/apm_8.9/img/HPU_8.9/HPU 5.png)

There are 2 ways to create asset condition scores in Maximo Health. The first way is using the [Maximo Formula Engine]( ).  
The second way is use Watson Studio to customize the Jupyter notebook templates provided in Maximo Health or accelerators . 
Each asset class has it's own notebook template.  See the <a href="https://www.ibm.com/docs/en/mhmpmh-and-p-u/continuous-delivery?topic=cm-asset-class-notebooks-in-maximo-health-predict-utilities">documentation</a> 
for the list of asset classes IBM provides.  You can configure the `Score Settings` using a text file with a `.cfg` 
extension to specify how to calculate Asset Health, Risk and Criticality.

Alternatively, scoring methodologies can be created from scratch directly in the UI.


### Create a Scoring Group

To create a score group for Substation Transformers, click the `Create a scoring and DGA group` button, and complete the form.

1. Click the `Create a scoring group +` button. 
![setup_assets](../../../maximo-labs/apm_9.0/img/create_score_group.png)
2. Complete the open fields for `Name` and `Description`. 
3. Select the radio button for `asset` to identify the `Object`. 
4. Select the radio button `Connecting group to notebook` in response to `Configure scoring and DGA by`. 
5. Click `Select` to pick a notebook. 
![setup_assets](../../../maximo-labs/apm_8.9/img/HPU_8.9/HPU 7.png)
6. When prompted, scroll and select the `IBM Transformers Tap Changers DGA 6.0.1`. 
7. Click `Use notebook`. 
![setup_assets](../../../maximo-labs/apm_8.9/img/HPU_8.9/HPU 8.png)


### Pick a Query

To identify which assets each notebook your formula engine setting are applied to a the group of assets you must
pick a asset query.  In this case select, substation transformers. 

1. Click `select` to pick a query. 
![setup_assets](../../../maximo-labs/apm_8.9/img/HPU_8.9/HPU 9.png)
2. When prompted, scroll and select the `EUORG1_EUDEMO_ST`
3. Click `Apply`
![setup_assets](../../../maximo-labs/apm_8.9/img/HPU_8.9/HPU 10.png)
4. Click `Create`
![setup_assets](../../../maximo-labs/apm_8.9/img/HPU_8.9/HPU 11.png)

### Activate Score

Once created, the group will display.  The next step is to activate each of the scoring methodologies from the notebook. 

1. Click each score in sequence, starting at the top. 
![setup_assets](../../../maximo-labs/apm_8.9/img/HPU_8.9/HPU 12.png)
2. On each `score` screen, review the scoring methodology, and select `Active`. 
![setup_assets](../../../maximo-labs/apm_8.9/img/HPU_8.9/HPU 13.png)
3. Use the breadcrumb to return the `Scoring Group` page. 
4. Ensure that all of the scores are `Active`. 
![setup_assets](../../../maximo-labs/apm_8.9/img/HPU_8.9/HPU 14.png)


## Create Score Type
<a name="create-score-type"></a>

To create your own asset conditions scores, you can use custom score from the UI, return to the `Scoring Settings` page by clicking the breadcrumb at the top of the page.

Select the `Score types` tab on the page to create a new score type.  Existing score types will display on the page.

1. Click the `Scoring Settings` breadcrumb at the top of the page. 
![setup_assets](../../../maximo-labs/apm_8.9/img/HPU_8.9/HPU 15.png)
2. Select the `Score types` tab. 
![setup_assets](../../../maximo-labs/apm_8.9/img/HPU_8.9/HPU 18.png)
3. Click the `Create new score type` button. 
![setup_assets](../../../maximo-labs/apm_8.9/img/HPU_8.9/HPU 19.png)

### Create a New Score Type

Complete the form for the new custom score type.  The score type can be customized with new ranges, colors and icons. 

1. Complete the open fields for `Name` and `Description`. 
2. Leave the remaining fields as they default. 
3. Click `Save`. <br/>
![setup_assets](../../../maximo-labs/apm_8.9/img/HPU_8.9/HPU 20.png)
4. Return to the `Groups` tab to set up the custom score methodology. Select the `Groups` tab. 


## Create Group for Using Custom Score Using Notebooks
<a name="create-group-custom-score"></a>

### Create a Scoring Group

Follow similar steps as those using the notebook to create a custom score methodology for substation transformers 
in this case, a proxy for efficiency.

1. Click the `Create a scoring and DGA group` button. 
![setup_assets](../../../maximo-labs/apm_8.9/img/HPU_8.9/HPU 6.png)
2. Complete the open fields for `Name` and `Description`. 
3. Select the radio button for `asset` to identify the `Object`. 
4. Select the radio button `Building scores` in response to `Configure scoring and DGA by`. 
5. Click `select` to pick a query. 
![setup_assets](../../../maximo-labs/apm_8.9/img/HPU_8.9/HPU 16.png)
6. When prompted, scroll and select the `EUORG1_EUDEMO_ST`. 
7. Click `Apply`. 
![setup_assets](../../../maximo-labs/apm_8.9/img/HPU_8.9/HPU 10.png)
8. Click `Create`. <br/>
![setup_assets](../../../maximo-labs/apm_8.9/img/HPU_8.9/HPU 11.png)

### Add Score Type

Once created, the group will display.  The next step is to create the custom score methodology itself.

When adding a score type, existing score types with appear, including the Substation Efficiency just created.

1. Click the `Add score` button. 
![setup_assets](../../../maximo-labs/apm_8.9/img/HPU_8.9/HPU 22.png)
2. Select `Substation Efficiency` from the score options. 
3. Click `Done`. 
![setup_assets](../../../maximo-labs/apm_8.9/img/HPU_8.9/HPU 23.png)

### Add Contributor

From the Substation Efficiency score page, the custom score methodology can be built using various contributors, formulas, or groups.

1. Click the `+` in the contributor section of the page. 
![setup_assets](../../../maximo-labs/apm_8.9/img/HPU_8.9/HPU 24.png)
2. From the `Add a contributor` popup, select the tile `FACAGESAMPLE`. 
3. Click `Add`. 
![setup_assets](../../../maximo-labs/apm_8.9/img/HPU_8.9/HPU 25.png)

### Add Contributor Weight

For this example, only one contributor is used, but often there will be several contributors.  Therefore, a weight must be assigned to each contributor.  In this case, 100%.

**Value:**  The ability to create custom scores, with any data available, allows the user to account for unique operating environments and conditions.

1. Click the `Pencil` icon. <br/>
![setup_assets](../../../maximo-labs/apm_8.9/img/HPU_8.9/HPU 26.png)
2. In the popup, change the % weight to `100`. 
3. Click `Save`. 
![setup_assets](../../../maximo-labs/apm_8.9/img/HPU_8.9/HPU 27.png)
4. Change the `Active` button to `Yes`. <br/>
![setup_assets](../../../maximo-labs/apm_8.9/img/HPU_8.9/HPU 28.png)


## Create Custom Matrix
<a name="create-group-custom-score"></a>

### View Matrix

Now that the score methodologies are built, and active, scores will appear in multiple views.

To use the custom score in a matrix, a custom matrix must be created. 

1. Hover over the left nav bar to expand it. 
![setup_assets](../../../maximo-labs/apm_8.9/img/HPU_8.9/HPU 29.png)
2. Select the `Assets` section on the left nav bar to return to the table view. 
3. Click the `Matrix` icon to move to the matrix view. 
![setup_assets](../../../maximo-labs/apm_8.9/img/HPU_8.9/HPU 44.png)

## Configure Matrix
<a name="create-group-custom-score"></a>

To customize the matrix, click the `setting icon` in the upper right of the screen.  Adjust the fields so that Health 
appears on the y-axis, and Substation Transformer Efficiency on the x-axis.

1. Click the `cog` symbol. <br/>
![setup_assets](../../../maximo-labs/apm_8.9/img/HPU_8.9/HPU 45.png)
2. In the `Name` field, type `Substation Efficiency and Health`. 
3. In the `Y-axis` field, select `Substation Efficiency`. 
4. Select the `100-0` radio button under `Y-axis direction`.  
5. In the `X-axis` field, select `Health`.
6. Select the `100-0` radio button under `X-axis direction`. 
![setup_assets](../../../maximo-labs/apm_8.9/img/HPU_8.9/HPU 46.png)

Also, fill in the colors of the matrix so that the assets with poor health and poor efficiency appear red or `high` in the upper right corner.

1. Click `High` radio button. <br/>
![setup_assets](../../../maximo-labs/apm_8.9/img/HPU_8.9/HPU 47.png)
2. In the Matrix, click on the upper right box to turn it red. 
![setup_assets](../../../maximo-labs/apm_8.9/img/HPU_8.9/HPU 48.png)
3. Continue with `Medium` and `Low` to complete the matrix view to match the example. 
![setup_assets](../../../maximo-labs/apm_8.9/img/HPU_8.9/HPU 49.png)
4. Click `Save as` to save the matrix and set it as the default. 
![setup_assets](../../../maximo-labs/apm_8.9/img/HPU_8.9/HPU 50.png)


## Create Replacement Plan Template for Substation Transformers
<a name="create-group-custom-score"></a>

### Replacement Plan Templates

The matrix provides a good view from which to select assets for an investment project.  However, a plan template must be complete for any asset class in a project.  To set up a plan template, go to the Asset investment optimizer tab.

1. Hover over the left nav bar to expand it.
2. Select the `Asset investment optimizer` section on the left nav bar.
![setup_assets](../../../maximo-labs/apm_8.9/img/HPU_8.9/HPU 55.png)
3. Click the `Plan templates` tab. 
![setup_assets](../../../maximo-labs/apm_8.9/img/HPU_8.9/HPU 56.png)
4. On the `Plan templates` tab, click the `+` symbol to create a new plan template. 
![setup_assets](../../../maximo-labs/apm_8.9/img/HPU_8.9/HPU 57.png)

### Create an Asset Replacement Template

Complete the form for the replacement plan template.

1. Select `SUBSTATION_TRANSFORMER` from the selection list or other asset class.  **Note if there is already a replacement plan template for an asset class, a new one cannot be created**
2. In the open field, type `Sample replacement plan template for Substation Transformer`
3. Select `Replacement` for `Plan type`. 
4. Enter `8` for `Expected downtime in hours`. 
5. Enter `50000` for `Estimated capital cost`. 
6. Enter `30000` for `Estimated operating cost`. 
7. Enter `150000` for `Estimated failure cost`. 
8. Enter `30` for `Expected life in years`.  
9. Click `Create`. 
![setup_assets](../../../maximo-labs/apm_8.9/img/HPU_8.9/HPU 58.png)
10. Hover over the left nav bar to expand it.  
11. Select the `Assets` section on the left nav bar to return to the matrix view. 
![setup_assets](../../../maximo-labs/apm_8.9/img/HPU_8.9/HPU 29.png)


## Create Investment Project
<a name="create-group-custom-score"></a>

### Assign Assets

To assign a set of substation transformers to an investment project from the matrix page, filter the assets, and 
`drill down` to the table view and add assets to a project. 

1. Use the pulldown, and select `Substation Transformers (shared)` from the list. 
![setup_assets](../../../maximo-labs/apm_8.9/img/HPU_8.9/HPU 51.png)
2. Select the `red` box in the matrix to show the table view of the assets. 
![setup_assets](../../../maximo-labs/apm_8.9/img/HPU_8.9/HPU 52.png)
3. From the table view, select `50` from the pulldown at the bottom of the table. 
4. Select the `box` at the top of the page to select all of the assets on the table. 
![setup_assets](../../../maximo-labs/apm_8.9/img/HPU_8.9/HPU 53.png)
5. Select `Create investment project`. 
![setup_assets](../../../maximo-labs/apm_8.9/img/HPU_8.9/HPU 54.png)

### Create a Project

Complete the form on the `Create a project page`.

1. In the open field, type `ST Demo Project`. 
2. In the Summary field, type `Demo project for Substation Transformers`. 
3. Enter `25` for `Duration in years`. 
4. Select `2Q` for `Target start quarter`. 
5. Enter `2023` for `Target start year`. 
6. Click `Create`
![setup_assets](../../../maximo-labs/apm_8.9/img/HPU_8.9/HPU 59.png)
7. Once the `ST Demo Project` page appears, hover over the left nav bar to expand it.
8. Select the `Assets` section on the left nav bar to return to the matrix view to add more assets to the project. <br/>
![setup_assets](../../../maximo-labs/apm_8.9/img/HPU_8.9/HPU 29.png)

### Add Assets from the Matrix

From the matrix view, `drill down` once more to the table view and add additional assets to the project.

1. Select the `yellow` box in the middle top row of the matrix to show the table view of the assets. 
![setup_assets](../../../maximo-labs/apm_8.9/img/HPU_8.9/HPU 60.png)
2. From the table view, select `50` from the pull down at the bottom of the table. 
3. Select the `box` at the top of the page to select all the assets on the table. 
![setup_assets](../../../maximo-labs/apm_8.9/img/HPU_8.9/HPU 61.png)
4. Select `Add to investment project`. 
![setup_assets](../../../maximo-labs/apm_8.9/img/HPU_8.9/HPU 62.png)

From the popup, select the ST Demo Project to add the new set of assets to the existing project.

1. Select `ST Demo Project` from the set of projects. 
![setup_assets](../../../maximo-labs/apm_8.9/img/HPU_8.9/HPU 63.png)
2. Click `Add`
3. From the `Edit project` page, click `Save`. 
![setup_assets](../../../maximo-labs/apm_8.9/img/HPU_8.9/HPU 64.png)
4. Click `Save` from the `Confirm save` popup. 
![setup_assets](../../../maximo-labs/apm_8.9/img/HPU_8.9/HPU 65.png)

### Create and Run Investment Strategies

To test different investment strategies, move to the Asset investment optimizer tab to create the first strategy 
`Maintain risk`.

1. Hover over the left nav bar to expand it. 
2. Select the `Asset investment optimizer` section on the left nav bar. 
![setup_assets](../../../maximo-labs/apm_8.9/img/HPU_8.9/HPU 55.png)
3. From the `Projects` tab, click on `ST Demo Project`. 
![setup_assets](../../../maximo-labs/apm_8.9/img/HPU_8.9/HPU 66.png)
4. Click the `+` to create the first strategy. 
![setup_assets](../../../maximo-labs/apm_8.9/img/HPU_8.9/HPU 67.png)
5. From the popup, make sure the `Strategy` selection is `Maintain risk`, the click `Create`. 
![setup_assets](../../../maximo-labs/apm_8.9/img/HPU_8.9/HPU 68.png)

Once the strategy is created, run the analysis.  It may take some time to complete.  The user can leave the screen and 
the analysis will continue to run.

6. Click `Run analysis`
![setup_assets](../../../maximo-labs/apm_8.9/img/HPU_8.9/HPU 69.png)

Create the second investment strategy `Reduce risk` and run it.

1. Click the `+` to create the second strategy. 
![setup_assets](../../../maximo-labs/apm_8.9/img/HPU_8.9/HPU 70.png)
2. From the popup, set the `Strategy` selection is `Reduce risk`. 
3. Set the `Target risk score` to `7`. 
4. Click `Create`. 
![setup_assets](../../../maximo-labs/apm_8.9/img/HPU_8.9/HPU 71.png)
5. Click `Run Analysis`. 
![setup_assets](../../../maximo-labs/apm_8.9/img/HPU_8.9/HPU 69.png)

Create the third investment strategy `Stay in budget` and run it. 

1. Click the `+` to create the third strategy. 
![setup_assets](../../../maximo-labs/apm_8.9/img/HPU_8.9/HPU 72.png)
2. From the popup, set the `Strategy` selection is `Stay in budget`. 
3. Set the `Opex` to `810000`. 
4. Set the `Capex` to `1350000`. 
4. Click `Create`. 
![setup_assets](../../../maximo-labs/apm_8.9/img/HPU_8.9/HPU 73.png)
5. Click `Run Analysis`. 
![setup_assets](../../../maximo-labs/apm_8.9/img/HPU_8.9/HPU 69.png)


## Meantime Between Failure
<a name="mtbf"></a>

To calculate the count of how many assets are achieving or not achieving the meantime to failure requires that you 
specify threshold goal to achieve.   For example what is the number of hours an asset needs to go to achieve the meantime 
of failure goal.  Assets who have a meantime between failure less than the number of hours means they are failing earlier 
than required and therefore aren't meeting the meantime between failure.   Meantime between failures is calculated using
the amount of time an asset goes before it has an unscheduled work order.  Where the work order is either a corrective 
maintenance or emergency maintenance.   The meantime between failure is calculated by summing the total amount of time 
between installation and the first and subsequent unscheduled work order divided by the total number of unscheduled 
worker order occurrences.

### Create Threshold on Charts Page

To create a meantime between failure threshold consider the group of assets that you are measuring performance for.
Consider creating separate thresholds for a groups of similar expected performance assets within an asset class like 
pumps and other thresholds for assets that are part of a system and require similar performance considerations like an
HVAC system.  

For this exercise you will create a MTBF performance threshold for an asset class. You can use pumps that have a similar 
asset class, type, manufacture and model.  There are two ways to create `Thresholds`.  One is on the `Asset Charts` page,

If you haven't previously created any `Thresholds`. The other way to create them by going to the `Score Settings` page.

1. Navigate to the `Asset Charts` page. 
![setup_settings menu](../../../maximo-labs/apm_9.0/img/GoToChartsCreateThreshold.png)	
2. Click `Create threshold` button.
3. Fill in the form values and click the `Save` button.
![setup_settings menu](../../../maximo-labs/apm_9.0/img/CreateThresholdPumpHours.png)
4. Select the `box` at the top of the page to select all of the assets on the table. 
![setup_assets](../../../maximo-labs/apm_8.9/img/HPU_8.9/HPU 53.png)
5. Select `Create investment project`. 
![setup_assets](../../../maximo-labs/apm_8.9/img/HPU_8.9/HPU 54.png)


### Create Threshold on Score Settings Page

 Create a `Threshold` anytime by navigating to the `Score Settings`  After you create the threshold it will be made
 available as an option on `MTBF` chart on the `Charts` page.

1. Navigate to the `Score Setting` page. 
![setup_settings menu](../../../maximo-labs/apm_9.0/img/ClickOnFilterFunnelIcon.png)	
2. Click `Funnel` button.
3. Select the previously created Threshold you want to use for the current `View` and click the `Save` button.
![setup_settings menu](../../../maximo-labs/apm_9.0/img/CreateThresholdPumpHours.png)


 The other way to create them by going to the `Score Settings` page.

1. Navigate to the `Asset Charts` page. 
![setup_settings menu](../../../maximo-labs/apm_9.0/img/GoToChartsCreateThreshold.png)	
2. Click `Create threshold` button.
3. Fill in the form values and click the `Save` button.
![setup_settings menu](../../../maximo-labs/apm_9.0/img/CreateThresholdPumpHours.png)
4. Select the `box` at the top of the page to select all of the assets on the table. 
![setup_assets](../../../maximo-labs/apm_8.9/img/HPU_8.9/HPU 53.png)
5. Select `Create investment project`. 
![setup_assets](../../../maximo-labs/apm_8.9/img/HPU_8.9/HPU 54.png)


### Add Required Data on Asset Details

To calculate an asset's meantime between failure (MTBF), the asset's installation date must be known. Assets that are unable to
display their MTBF value will show an `i` icon in the MTBF column and asset row in `Asset Table` Page or on the value card of 
the `Asset Details` Page.  By clicking on the `i` icon, a dialog will open where you can set the installation date.  Suggested
values for the installation date are also provided.

1. Navigate to an `Asset Details` Page
![change_asset_status](../../../maximo-labs/apm_9.0/img/asset_details_enter_installation_date.png)
2. Click the an `i` icon on the MTBF value card.  
3. Choose the installation date using the `Calendar` control inf the dialog.  If you don't know the installation date
consider using the suggested value of when the asset was first added to Maximo.  
4. Click `save` to save the installation date.
5. The MTBF value card will be updated when the MTBF calculation is recalculated in the `crontask`.

### Add Required Data on Asset Table

1. Navigate to an `Asset Table` Page
![change_asset_status](../../../maximo-labs/apm_9.0/img/asset_table_click_i_mtbf.png)
2. Click the an `i` icon on the MTBF value card.  
3. Choose the installation date using the `Calendar` control inf the dialog.  If you don't know the installation date
consider using the suggested value of when the asset was first added to Maximo.  
4. Click `save` button to save the installation date.
![change_asset_status](../../../maximo-labs/apm_9.0/img/mtbf_asset_table_enter_installation_date.png)
5. The MTBF value card will be updated when the MTBF calculation is recalculated in the `crontask`. You will see a status
message letting you know the value will be calculated.
![change_asset_status](../../../maximo-labs/apm_9.0/img/crontask_status.png)


### Troubleshoot MTBF

If an asset's MTBF value doesn't appear in the `Asset Details` page or `Asset Table` page after you have entered and the asset's installation date
and the `crontask` has run then check to see if there are any filters applied to the `crontask` that remove your asset from
the list of assets to be calculated for MTBF.

1. Navigate to the `crontask` in Manage.
![change_asset_status](../../../maximo-labs/apm_9.0/img/manage_select_crontask.png)
2. Search on `MTBF` and click on the `MTBF crontask`.
![change_asset_status](../../../maximo-labs/apm_9.0/img/search_mtbf_crontask.png)
3. Review the  `crontask parameters`  to see if the value would descope your asset from being calculated.
![change_asset_status](../../../maximo-labs/apm_9.0/img/mtbf_cron_task.png)
3. Remove or correct any filters that my descope your asset from being included in the MTBF score calculation task.
and click the `save` button to save the `crontask` settings.

## Summary
<a name="summary"></a>

Congratulations.  You now have completed the MAS v8.11 Health and Predict Demo setup lab and are ready to demo.
