# Build MAS Health and Predict Demonstration

Follow the steps in this lab in your own environment to create the necessary components to deliver the MAS v8.9 Health and 
Predict Demo Script. The data for your system can be provided by the instructor.

1. Create group using notebooks
2. Create score type
3. Create group using Custom Scoring Methodology
4. Create custom matrix
5. Plan replacement plan template for Substation Transformers
6. Create investment project

**DO NOT complete the lab in the MAS v8.9 worldwide demo system.** All the necessary components are already completed in that environment.

To keep track of the items that you create, append your initials to the end of the name, so that they’ll be easy to find and delete.

**Prerequisites**

This lab requires the following:

- A working Maximo Application Suite (MAS) environment with Maximo Manage, or another Enterprise Asset Management (EAM) system, Maximo Health, Maximo Health and Predict – Utilities (HPU), and Maximo Optimizer installed.
- Sufficient asset data to run the analysis and get insights


## Create Asset Scoring Groups using Notebooks
<a name="create_group_notebooks"></a>
Coming soon.

###  Navigate to Health and Predict - Utilities

On the `Applications` tab, there are tiles for each of the applications that the admin has loaded from MAS.  On the `Industry Solution` tab, there is a tile for HPU.

1. From the main MAS page, select the `Industry solutions` tab
![navigate_to_health](./img/HPU_8.9/HPU 1.png)	

2. Click the HPU tile…users can also click through the Health or Predict tile
![setup_assets](./img/HPU_8.9/HPU 2.png)	


###  Scoring Settings

On the main screen, there is a universal view of all managed assets in a familiar table view.

Scores that are shown in this view, and others, are created from the `Scoring and DGA settings` section on the left nav bar.

1. Hover over the left nav bar to expand it
![setup_assets](./img/HPU_8.9/HPU 3.png)	

2. Select the `Scoring and DGA settings` section on the left nav bar
![setup_assets](./img/HPU_8.9/HPU 4.png)	


### Create a Scoring Group

Creating a scoring group (i.e. grouping common assets together) is the first step to creating scores.

If there are any scoring groups already created, they will appear on the `Groups` tab of the `Scoring and DGA settings` page.

1. Scroll through the pages to see what groups have already been created.
![setup_assets](./img/HPU_8.9/HPU 5.png)

There are 2 ways to develop scoring methodologies in Maximo Health and Predict – Utilities

The first way is to develop the scoring methodology in a Jupyter notebook.  For many assets in the Transmission and Distribution space (T&D), IBM provides <a href="https://www.ibm.com/docs/en/mhmpmh-and-p-u/continuous-delivery?topic=cm-asset-class-notebooks-in-maximo-health-predict-utilities">notebooks with prescribed scoring methodologies.</a>

Alternatively, scoring methodologies can be created from scratch directly in the UI.


### Create a Scoring Group

To create a score group for Substation Transformers, click the `Create a scoring and DGA group` button, and complete the form.

1. Click the `Create a scoring and DGA group` button. 
![setup_assets](./img/HPU_8.9/HPU 6.png)
2. Complete the open fields for `Name` and `Description`. 
3. Select the radio button for `asset` to identify the `Object`. 
4. Select the radio button `Connecting group to notebook` in response to `Configure scoring and DGA by`. 
5. Click `Select` to pick a notebook. 
![setup_assets](./img/HPU_8.9/HPU 7.png)
6. When prompted, scroll and select the `IBM Transformers Tap Changers DGA 6.0.1`. 
7. Click `Use notebook`. 
![setup_assets](./img/HPU_8.9/HPU 8.png)


### Pick a Query

Complete the group by using a query to identify the assets in the group.  In this case, substation transformers. 

1. Click `select` to pick a query. 
![setup_assets](./img/HPU_8.9/HPU 9.png)
2. When prompted, scroll and select the `EUORG1_EUDEMO_ST`
3. Click `Apply`
![setup_assets](./img/HPU_8.9/HPU 10.png)
4. Click `Create`
![setup_assets](./img/HPU_8.9/HPU 11.png)

### Activate Score

Once created, the group will display.  The next step is to activate each of the scoring methodologies from the notebook. 

1. Click each score in sequence, starting at the top. 
![setup_assets](./img/HPU_8.9/HPU 12.png)
2. On each `score` screen, review the scoring methodology, and select `Active`. 
![setup_assets](./img/HPU_8.9/HPU 13.png)
3. Use the breadcrumb to return the `Scoring Group` page. 
4. Ensure that all of the scores are `Active`. 
![setup_assets](./img/HPU_8.9/HPU 14.png)


## Create Score Type

### Score Types

To create a custom score methodology from the UI, return to the `Scoring and DGA settings` page by clicking the breadcrumb at the top of the page.

Select the `Score types` tab on the page to create a new score type.  Existing score types will display on the page.

1. Click the `Scoring and DGA settings` breadcrumb at the top of the page. 
![setup_assets](./img/HPU_8.9/HPU 15.png)
2. Select the `Score types` tab. 
![setup_assets](./img/HPU_8.9/HPU 18.png)
3. Click the `Create new score type` button. 
![setup_assets](./img/HPU_8.9/HPU 19.png)

### Create a New Score Type

Complete the form for the new custom score type.  The score type can be customized with new ranges, colors and icons. 

1. Complete the open fields for `Name` and `Description`. 
2. Leave the remaining fields as they default. 
3. Click `Save`. <br/>
![setup_assets](./img/HPU_8.9/HPU 20.png)
4. Return to the `Groups` tab to set up the custom score methodology. Select the `Groups` tab. 


## Create Group Using Custom Scoring Methodology

### Create a Scoring Group

Follow similar steps as those using the notebook to create a custom score methodology for substation transformers 
in this case, a proxy for efficiency.

1. Click the `Create a scoring and DGA group` button. 
![setup_assets](./img/HPU_8.9/HPU 6.png)
2. Complete the open fields for `Name` and `Description`. 
3. Select the radio button for `asset` to identify the `Object`. 
4. Select the radio button `Building scores` in response to `Configure scoring and DGA by`. 
5. Click `select` to pick a query. 
![setup_assets](./img/HPU_8.9/HPU 16.png)
6. When prompted, scroll and select the `EUORG1_EUDEMO_ST`. 
7. Click `Apply`. 
![setup_assets](./img/HPU_8.9/HPU 10.png)
8. Click `Create`. <br/>
![setup_assets](./img/HPU_8.9/HPU 11.png)

### Add Score Type

Once created, the group will display.  The next step is to create the custom score methodology itself.

When adding a score type, existing score types with appear, including the Substation Efficiency just created.

1. Click the `Add score` button. 
![setup_assets](./img/HPU_8.9/HPU 22.png)
2. Select `Substation Efficiency` from the score options. 
3. Click `Done`. 
![setup_assets](./img/HPU_8.9/HPU 23.png)

### Add Contributor

From the Substation Efficiency score page, the custom score methodology can be built using various contributors, formulas, or groups.

1. Click the `+` in the contributor section of the page. 
![setup_assets](./img/HPU_8.9/HPU 24.png)
2. From the `Add a contributor` popup, select the tile `FACAGESAMPLE`. 
3. Click `Add`. 
![setup_assets](./img/HPU_8.9/HPU 25.png)

### Add Contributor Weight

For this example, only one contributor is used, but often there will be several contributors.  Therefore, a weight must be assigned to each contributor.  In this case, 100%.

**Value:**  The ability to create custom scores, with any data available, allows the user to account for unique operating environments and conditions.

1. Click the `Pencil` icon. <br/>
![setup_assets](./img/HPU_8.9/HPU 26.png)
2. In the popup, change the % weight to `100`. 
3. Click `Save`. 
![setup_assets](./img/HPU_8.9/HPU 27.png)
4. Change the `Active` button to `Yes`. <br/>
![setup_assets](./img/HPU_8.9/HPU 28.png)


## Create Custom Matrix

### View Matrix

Now that the score methodologies are built, and active, scores will appear in multiple views.

To use the custom score in a matrix, a custom matrix must be created. 

1. Hover over the left nav bar to expand it. 
![setup_assets](./img/HPU_8.9/HPU 29.png)
2. Select the `Assets` section on the left nav bar to return to the table view. 
3. Click the `Matrix` icon to move to the matrix view. 
![setup_assets](./img/HPU_8.9/HPU 44.png)

## Configure Matrix

To customize the matrix, click the `setting icon` in the upper right of the screen.  Adjust the fields so that Health 
appears on the y-axis, and Substation Transformer Efficiency on the x-axis.

1. Click the `cog` symbol. <br/>
![setup_assets](./img/HPU_8.9/HPU 45.png)
2. In the `Name` field, type `Substation Efficiency and Health`. 
3. In the `Y-axis` field, select `Substation Efficiency`. 
4. Select the `100-0` radio button under `Y-axis direction`.  
5. In the `X-axis` field, select `Health`.
6. Select the `100-0` radio button under `X-axis direction`. 
![setup_assets](./img/HPU_8.9/HPU 46.png)

Also, fill in the colors of the matrix so that the assets with poor health and poor efficiency appear red or `high` in the upper right corner.

1. Click `High` radio button. <br/>
![setup_assets](./img/HPU_8.9/HPU 47.png)
2. In the Matrix, click on the upper right box to turn it red. 
![setup_assets](./img/HPU_8.9/HPU 48.png)
3. Continue with `Medium` and `Low` to complete the matrix view to match the example. 
![setup_assets](./img/HPU_8.9/HPU 49.png)
4. Click `Save as` to save the matrix and set it as the default. 
![setup_assets](./img/HPU_8.9/HPU 50.png)


## Create Replacement Plan Template for Substation Transformers

### Replacement Plan Templates

The matrix provides a good view from which to select assets for an investment project.  However, a plan template must be complete for any asset class in a project.  To set up a plan template, go to the Asset investment optimizer tab.

1. Hover over the left nav bar to expand it.
2. Select the `Asset investment optimizer` section on the left nav bar.
![setup_assets](./img/HPU_8.9/HPU 55.png)
3. Click the `Plan templates` tab. 
![setup_assets](./img/HPU_8.9/HPU 56.png)
4. On the `Plan templates` tab, click the `+` symbol to create a new plan template. 
![setup_assets](./img/HPU_8.9/HPU 57.png)

### Create a Template

Complete the form for the replacement plan template.

1. Select `SUBSTATION_TRANSFORMER` from the selection list.  **Note if there is already a replacement plan template for an asset class, a new one cannot be created**
2. In the open field, type `Sample replacement plan template for Substation Transformer`
3. Select `Replacement` for `Plan type`. 
4. Enter `8` for `Expected downtime in hours`. 
5. Enter `50000` for `Estimated capital cost`. 
6. Enter `30000` for `Estimated operating cost`. 
7. Enter `150000` for `Estimated failure cost`. 
8. Enter `30` for `Expected life in years`.  
9. Click `Create`. 
![setup_assets](./img/HPU_8.9/HPU 58.png)
10. Hover over the left nav bar to expand it.  
11. Select the `Assets` section on the left nav bar to return to the matrix view. 
![setup_assets](./img/HPU_8.9/HPU 29.png)


## Create Investment Project

### Assign Assets

To assign a set of substation transformers to an investment project from the matrix page, filter the assets, and 
`drill down` to the table view and add assets to a project. 

1. Use the pulldown, and select `Substation Transformers (shared)` from the list. 
![setup_assets](./img/HPU_8.9/HPU 51.png)
2. Select the `red` box in the matrix to show the table view of the assets. 
![setup_assets](./img/HPU_8.9/HPU 52.png)
3. From the table view, select `50` from the pulldown at the bottom of the table. 
4. Select the `box` at the top of the page to select all of the assets on the table. 
![setup_assets](./img/HPU_8.9/HPU 53.png)
5. Select `Create investment project`. 
![setup_assets](./img/HPU_8.9/HPU 54.png)

### Create a Project

Complete the form on the `Create a project page`.

1. In the open field, type `ST Demo Project`. 
2. In the Summary field, type `Demo project for Substation Transformers`. 
3. Enter `25` for `Duration in years`. 
4. Select `2Q` for `Target start quarter`. 
5. Enter `2023` for `Target start year`. 
6. Click `Create`
![setup_assets](./img/HPU_8.9/HPU 59.png)
7. Once the `ST Demo Project` page appears, hover over the left nav bar to expand it.
8. Select the `Assets` section on the left nav bar to return to the matrix view to add more assets to the project. <br/>
![setup_assets](./img/HPU_8.9/HPU 29.png)

### Add Assets from the Matrix

From the matrix view, `drill down` once more to the table view and add additional assets to the project.

1. Select the `yellow` box in the middle top row of the matrix to show the table view of the assets. 
![setup_assets](./img/HPU_8.9/HPU 60.png)
2. From the table view, select `50` from the pull down at the bottom of the table. 
3. Select the `box` at the top of the page to select all the assets on the table. 
![setup_assets](./img/HPU_8.9/HPU 61.png)
4. Select `Add to investment project`. 
![setup_assets](./img/HPU_8.9/HPU 62.png)

From the popup, select the ST Demo Project to add the new set of assets to the existing project.

1. Select `ST Demo Project` from the set of projects. 
![setup_assets](./img/HPU_8.9/HPU 63.png)
2. Click `Add`
3. From the `Edit project` page, click `Save`. 
![setup_assets](./img/HPU_8.9/HPU 64.png)
4. Click `Save` from the `Confirm save` popup. 
![setup_assets](./img/HPU_8.9/HPU 65.png)

### Create and Run Investment Strategies

To test different investment strategies, move to the Asset investment optimizer tab to create the first strategy 
`Maintain risk`.

1. Hover over the left nav bar to expand it. 
2. Select the `Asset investment optimizer` section on the left nav bar. 
![setup_assets](./img/HPU_8.9/HPU 55.png)
3. From the `Projects` tab, click on `ST Demo Project`. 
![setup_assets](./img/HPU_8.9/HPU 66.png)
4. Click the `+` to create the first strategy. 
![setup_assets](./img/HPU_8.9/HPU 67.png)
5. From the popup, make sure the `Strategy` selection is `Maintain risk`, the click `Create`. 
![setup_assets](./img/HPU_8.9/HPU 68.png)

Once the strategy is created, run the analysis.  It may take some time to complete.  The user can leave the screen and 
the analysis will continue to run.

6. Click `Run analysis`
![setup_assets](./img/HPU_8.9/HPU 69.png)

Create the second investment strategy `Reduce risk` and run it.

1. Click the `+` to create the second strategy. 
![setup_assets](./img/HPU_8.9/HPU 70.png)
2. From the popup, set the `Strategy` selection is `Reduce risk`. 
3. Set the `Target risk score` to `7`. 
4. Click `Create`. 
![setup_assets](./img/HPU_8.9/HPU 71.png)
5. Click `Run Analysis`. 
![setup_assets](./img/HPU_8.9/HPU 69.png)

Create the third investment strategy `Stay in budget` and run it. 

1. Click the `+` to create the third strategy. 
![setup_assets](./img/HPU_8.9/HPU 72.png)
2. From the popup, set the `Strategy` selection is `Stay in budget`. 
3. Set the `Opex` to `810000`. 
4. Set the `Capex` to `1350000`. 
4. Click `Create`. 
![setup_assets](./img/HPU_8.9/HPU 73.png)
5. Click `Run Analysis`. 
![setup_assets](./img/HPU_8.9/HPU 69.png)


## Summary
<a name="summary"></a>

Congratulations.  You now have completed the MAS v8.9 Health and Predict Demo setup lab and are ready to demo.
