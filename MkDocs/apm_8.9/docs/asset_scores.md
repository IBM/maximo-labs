# Asset Custom Scores

Health Predict and Utilities already provide the ability to score asset condition using the out-of-the-box scores for:
-
- Health
- Risk
- Criticallty
- End of Life 

The new asset custom scores in  Maximo Health and Maximo Health and Predict - Utilities (HPU) of Maximo Application Suite (MAS) allow the user to create their own scores using

- **Formula based** which is in Health today. Doesn't require any coding and uses an Excel style approach for calculating a custom score
- **Notebook based** deployed as Watson Studio job which provides greater customization using Python and enables the score to also be calculated into the future.
- **Notebook based** deployed IBM Machine Learning Service.  provides greater customization using Python and enables the score to also be calculated into the future. 

The lab will cover how to create custom scores, how they can be visualized to help the user make better repair/replace decisions, and how they can be used to select assets for investment projects.

Maximo Health includes Asset Investment Optimization templates that you can use to see which strategies work best to meet your business goals. 

In this exercise you will use Health to:

1. [Setup View](#setup_view) to have a group of assets that you can view and work with.
2. [Setup Scores](#setup_scores) to calculate asset condition.
3. [Matrix Page](#matrix_page) to identify and quantify the number of assets that need attention.
4. [Asset Investment Project](#asset_investment_project) to decide which strategy is best to action the assets 
 
**Prerequisites**

This lab requires the following:

- A working Maximo Application Suite (MAS) environment with Maximo Manage, or another Enterprise Asset Management (EAM) system, Maximo Health, Maximo Health and Predict – Utilities (HPU), and Maximo Optimizer installed.
- Sufficient asset data to run the analysis and get insights

## Setup View
<a name="setup_view"></a>

Create a private view so that you can work with your pumps in the `Assets Grid` page.  

1. Go to the Asset Grid page. Enter `PUMP-100` without last digit as shown below.
![query](/img/apm_8.9/P18.png)	

2. Click the dropdown with the `view:` names.  Scroll up to save your query. Name it `Centrifugal Pumps`.
![query](/img/apm_8.9/P19.png)	

3. Save the `view` as a `private view` so that no one but you can see it.   
![query](/img/apm_8.9/P20.png)	


Value:  By creating a view, query and adding your custom score to your asset grid you can more quickly find the assets that aren't performing well. This makes it easier to analyze and take action to repair or replace poor performing assets. 


## Setup Scores
<a name="setup_scores"></a>

As a reliability engineer, You use Maximo Health, Predict, and Health and Predict – Utilities to identify assets with a custom score that needs attention.  You investigate those assets and take actions to improve the condition of those assets.

Custom scores allow me to apply my knowledge as an SME (subject matter expert) to create ways of measuring the condition of my assets.


###  Navigate to Health and Predict - Utilities

You will start from the main MAS screen, and select the `Health` application from the `Suite navigator` page or from `Industry solutions` tab.    You will create a custom score for a subset of these assets.

1. You will start from the main MAS screen, and select the Health Predict - Utilities application.  Select the `Industry solutions` tab.
![navigate_to_health](/img/apm_8.9/P1.png)	

2. Review the assets in the Assets Grid page to see over 10 thousand assets under management.
![assets_grid](/img/apm_8.9/P2.png)	


###  Setup Score Type

To create a custom score, You will select the  `Scoring and DGA Setting` tab on the left navigation bar in Maximo Health.  This is where You can create and view asset groups, score types, and contributors.  You will click on the `Create new score type` button to create a custom score type, complete the fields in the pop-up box, and save it.

1. Click `Scoring and DGA Setting` from the left nav 
![score_dga_settings](/img/apm_8.9/P3.png)	

2. Click `Score Types` tab. 
![create_new_score_type](/img/apm_8.9/P4.png)	

3. Click `Create new score type +` button.
![new_score_type form](/img/apm_8.9/P5.png)	

4. Enter the values below in the form:

- Set name to: `Centrifugal Pump Efficiency`
- Set Description to : `Centrifugal Pump Efficiency`
- Set Maximum to : `95`
- Set Minimum to : '40' 
- Where you check the radio box `Needs attention` to when the value get closer to `40 - Minimum`
- Adjust the ranges so that they align with the maximum and minimum ranges. See image below to check the settings. 
- Click `Save`
![save_score_settings](/img/apm_8.9/P6.png)	

6. Review your Score settings that you just created.
![review_score_settings](/img/apm_8.9/P7.png)	


Value:  Creating custom ranges allows me to enforce my company specific measurement method for the asset condition score or using engineering formulas.

###  Setup Score Group

You can build out a custom score to apply to a specific group of assets.  Groups allow you to scope the score to a query of assets and a method for calculating the scores.

For substation transformers, You can see there’s already a group called `Chilled water pump`.  There are several scores already created using a notebook included with Health and Predict – Utilities.

To create a custom score for these assets, You will return to the `Groups` tab, and click the `Create a scoring and DGA group`.

You will complete the fields.  For this example, we’ll create our score using the `Building Scores` capability rather than the `Connecting group to notebook` option.  You will use the query function to identify the assets in my group then create the group.

1. Click the `Groups` tab.
![groups](/img/apm_8.9/P8.png)	

2. If you don't have a group for pumps you can click `Create a scoring and DGA group` and fill in the form. Click button `Create a scoring DGA group` to specify the assets, query to use and method of calculation.  `Building scores` uses the easy to use forumula based approach.  The notebook approach requires access to Watson Studio which comes with Predict.
![creat groups](/img/apm_8.9/P8A.png)	

3. Fill in the form with the options below. Adding a `name`, `description`, `object`, Scoring method and `query`  for the group.  Search for the query name or select one of the available queries in the list and press the `apply` button.
![form groups](/img/apm_8.9/P8B.png)	

4. Create and save the score group by pressing the `Create` button. 
![save groups](/img/apm_8.9/P8C.png)	

5. Another option is to use an existing group.  Click the `Chilled water pump` or another group. 
![select_group](/img/apm_8.9/P8D.png)	

6. Click the `Add Score` button if you already have added your custom score type. 
![add score ](/img/apm_8.9/P8E.png)	

7. Select `Centrifugal Pump Efficieny` and the `Done` button to add this score to the pump group. If the Contributors haven't yet been setup continue on to the next exercise to create them and add them.
![save_group](/img/apm_8.9/P8F.png)	 

Value:  Grouping common assets together allows us to apply our custom custom condition score to multiple assets rather than one at a time thus easing administration.


###  Setup Contributor

With groups created, you will click `Add score` and contributors to the score.   Efficiency may be made of one or more calculated or metered data.   In this example you
will use a duplicate an existing contributor.  You will click the `+` symbol.  From the selections, You will pick `PU`.

1. If  you haven't opened your score group.  Open it now.  Once on your score group, your first options is to click the `+` icon to add an existing contributor to your Centrifugal efficiency.  This could be made up of previous contributors to a score that you created. 
![open score_group](/img/apm_8.9/P8G.png)	

2. Click the `Contributor` tile and click `Add` button.
![open score_group](/img/apm_8.9/P8H.png)

3. Your second option is to create a new contributor for your `CENTRIFUGALPUMPEFFICIENCY` and enter the values in the form.  Do the latter.  After clicking `+` icon click `Create Contributor` button.
![create new contributor](/img/apm_8.9/P8I.png)	

4. The third option is to `Duplicate`an existing contributor button to copy and reuse an existing contributor `PUMPEFFICIENCY` to fill in the `Contributor` form with.
![duplicate](/img/apm_8.9/P8J.png)
![duplicate contributor](/img/apm_8.9/P8K.png)

5. Review the values that were filled in. Make changes you need. Adjust what that maximum and minimum allowed values are.  
Click the `Create` button to save your changes to your duplicated contributor.  Click the adjust the `worst` and `best` 
score to reflect your score ranges for low, medium and high. Click on `CENTRIFUGALPUMPEFFICIENCY` score to expand and see 
all the contributors that contribute to it.
![contributor](/img/apm_8.9/P14.png)

6. Click the `pencil` icon.  Set each contributor the percent to 50% since this score will only have two contributor which will then contribute 100% together.  Click 'Save'
![score name](/img/apm_8.9/P15.png)	

7. Confirm the changes that `100%` of the contributors value will be allocated to the `CENTRIFUGALPUMPEFFICIENCY` score.


### Activate Score

Activating a score lets other users know that the score is available to be used to measure asset conditions.   The custom score will appear available for other users to use.  Before You can activate the score, You have to assign the factor that You selected a percentage that this measure contributes to overall normalized score value.  Since there’s only 1 factor, You will assign it 100%.

1. If  you haven't opened your score group.  Open it now.

2. Click `Active` slider to enable the score to start calculating when invoked. 
![done](/img/apm_8.9/P16.png)	

3. Click the breadcrumbs for `Chilled water pump` to return to the score group.
![done](/img/apm_8.9/P17.png)

4. Once on your score group, check to make sure the column for the `Centrifugal Pump Efficiency Score` is `Y` in the `Active` column in the `Scores` table.
Click the `Calculate Scores` link at the top right to immediately have the system calculate the scores for the current group of assets.
![plus](/img/apm_8.9/P18.png)


### Add Custom Score to Asset Grid Table

1. Navigate to the Asset Grids page.  Select a pump query from the drop down.

2. In the assets table, click on `Manage Columns` icon and then `Manage Columns` link.
![query](/img/apm_8.9/P22.png)	

3. Search on `Centrifugal Pumps` in the search bar and then check the row that has  `Centrifugal Pumps` score in the description column.
![query](/img/apm_8.9/P23.png)	

4. From the `Assets Grid` page select your saved query for the  `Centrifugal Pumps`. Click on the on `Centrifugal Pump Efficiency` score column header to sort the asset rows by the worst performing scoring pump.
![query](/img/apm_8.9/P24.png)	

5. Click on the `Pump-1001` to ensure the `Centrifugal score` shows up as a value card on the `Asset Details` page
![query](/img/apm_8.9/P21.png)	


## Setup Assets Matrix
<a name="matrix_page"></a>

In this step you will identify assets that need attention by using the `Matrix` page.  To identify assets that are having poor 
'Centrifugal Pump Efficiency Score' and in poor health, You will use the new `CENTRIFUGALPUMPEFFICIENCY` score along with the Matrix page.

From the left nav, You will click `assets`, and then the `Matrix` icon  on the upper right of the screen.

You will create a matrix using my new score `Criticality`, and `Centrifugal Efficiency`.  But first, You will first select the query for Centrifugal Pumps.

The results will then only show Centrifugal Pumps on the Assets Grid, Risk, Charts and Map pages.  To customize the matrix, You will click the `Gear` icon in the upper right of the screen on the `Matrix`.  You will adjust the fields so that `Criticality` appears on the Y axis, and `Centrifugal Pump Efficiency` on the X axis.

You will also fill in the colors of the Matrix so that the assets with poor health and poor `Centrifugal Pump Efficiency` score show up in the lower right corner.

Finally, you'll save the Matrix configuration so others will be able to use it.


1. Click `Assets` icon in the left nav 
![assets](/img/apm_8.9/P24.png)

2. Click the `Matrix` icon on the upper right of the screen 
![matrix_icon](/img/apm_8.9/P25.png)

3. Note that the default Matrix doesn't show any asset counts in Matrix becuase none of the assets in the query have values for both `Health and Centrifugal Pump Efficiency`. 
![filter](/img/apm_8.9/P26.png)

4. Click the `Version` drop down select box and choose `Health and Criticality`
![pencil](/img/apm_8.9/P27.png)

5. Notice how the Matrix now populates with asset counts in each row and column for `Criticality`  `A` to `E` ranges and `Health` `Good`, `Fair` and `Poor` ranges.
Click the `Gear` icon to configure a new `Matrix` version. 
![pencil](/img/apm_8.9/P28.png)

6. After choosing `Criticaly` for `Centrifugal Pump Efficiency` score for the X axis notice how the table cells turn gray.  
You must manually set the color ranges to reflect what cells you want the reliability engineer to focus on.  Click on each range color in the legen and then click on each Matrix cell you want to have that color.
![substation](/img/apm_8.9/P30.png)

7. Give the Matrix Version a new name and description and check that the direction of each axis for good versus bad is correct.   Click `Save As` to save it as a new Matrix version.
![substation](/img/apm_8.9/P31.png)

Value:  By adding your custom score to your asset Matrix page you can more quickly find the assets that aren't performing well. This makes it easier to take action to replace them using Asset Investment Optimization. 
![substation](/img/apm_8.9/P32.png)


###  Investigate Assets by Drilling in to the Assets Matrix 

In this example you will use a different view and asset class to see the asset condition for `Substation transformers` For the current selected asset view,  The  Matrix configuration shows me shows counts of the number of assets in the current query that have `Centrifugal Pump Efficiency` scores and `Criticality` scores that fall into the defined score ranges for each score.

You can see the number of my pumps are showing fair `wear` score or poor `Health`  .  You can click through to drill down into each category, or into each colored cell in the matrix.

Given the overall condition of my substation transformers, You will build an investment project, from my Matrix, to determine when You should replace them.


1. Click on any cell in your Matrix to see the list of assets in the cell.  You can then add those assets to an Asset Investment Optimization project to action them to be replaced or decommissioned.
![substation](/img/apm_8.9/P32.png)

2. Click on the high box, and add those assets to a new investment project.  Click the `high box to show those assets in a grid
![apply](/img/apm_8.9/P35.png)

3. Click the screen to select them all
![apply](/img/apm_8.9/P36.png)

4. From the grid view, You will select all the assets, and then create a new investment project. Click `Create investment project`
![apply](/img/apm_8.9/P37.png)


## Asset Investment Project
<a name="asset_investment_project"></a>

In this exercise you will create an Asset Investment Project by drilling into the value card or individual asset counts in each cell of the Asset Matrix You can see which assets are included in the count of assets in that range.
You action the assets by choosing the assets in the drilled in table list that You want to add to a new or existing asset investment project.  
Since You already have created an asset investment project template for substation transformers You can evaluate different investment strategies with these assets.
You specify the time duration of the project.   You run a 30 year project, starting in 2023.  I’m directed to the main Asset Investment Optimizer (AIO) page.  
However, before You run my project, You want to add the remaining substation transformers that need attention to the project.

Actions:

1. Click the `Create Investment Project` button, I’m prompted to complete details of the project.  Click the screen to autofill the form.
![apply](/img/apm_8.9/P38.png)

2. Click `Create` 
![apply](/img/apm_8.9/P39.png)
 
4. You will go back to my assets, in the `Matrix`, using the left nav panel.  Select `Assets` from the left nav panel
![apply](/img/apm_8.9/P40.png)


###  Add Assets to an Exiting Asset Investment Project 

You are able to add more assets to an existing Asset Investment Optimization project.   This time You will select the medium box, and add the assets to the investment project.  
However, once You select the assets, You can click the `Add to investment project` button, find my project, click `add`, and then `save` those assets to the existing project.

When adding assets to an existing project, the system will let me know that by doing so, You will impact any analysis that has already been completed.

You are returned to the asset list.  You will skip the final step of adding the asset from the `low` box, and move right to the investment project.

1. Click the `medium` box to show those assets in a grid 
![apply](/img/apm_8.9/P41.png)

2. Click the screen to select them all 
![apply](/img/apm_8.9/P42.png)

3. Click `Add to investment project`
![apply](/img/apm_8.9/P43.png)

4. Select the `Substation Transformer` project 
![apply](/img/apm_8.9/P44.png)

5. Click `Add`
![apply](/img/apm_8.9/P45.png)

6. Click `Save` from the Edit Project page 
![apply](/img/apm_8.9/P46.png)

7. Click `Save` in the pop-up
![apply](/img/apm_8.9/P47.png)


###  Choose an Asset Investment Template for your Project 

Asset investment templates reflect the operational and capital costs that reflect the group of assets you address together and have similar performance and cost characteristics.

You will select the `Asset investment optimizer` from the left nav panel.   Before You start working on my project, You want to review my template for substation transformers.  This template is necessary for the AIO.  It details the impact of refurbishing or replacing a substation transformer.  If this template isn’t already in place, You would have been prompted to complete one when You created my project.

You will return to the list, and select my Substation Transformers project.


1. Click the `Asset investment optimizer` from the left nav panel
![apply](/img/apm_8.9/P48.png)

2. Select the `Plan templates` tab
![apply](/img/apm_8.9/P49.png)

3. Click the `Substation_Transformer` template from the list
![apply](/img/apm_8.9/P50.png)

4. Click the `Asset Investment Optimizer` breadcrumb
![apply](/img/apm_8.9/P51.png)

5. Click the `Projects` tab
![apply](/img/apm_8.9/P52.png)

6. Click the `Substation Transformers` project
![apply](/img/apm_8.9/P53.png)



###  Choose an Asset Investment Strategy for your Project 

This step is intended to demonstrate the Asset Investment Optimizer (AIO) capability in HPU.  The AIO allows a Reliability Engineer (RE) to build a project of assets, assign a length of the project, and run multiple strategies to determine which assets should to be replaced over the life of the project, and when.  The RE can compare strategies, export details, and ultimately execute the one that meets their needs. The strategies are…

- Maintain risk
- Reduce risk (the RE can select the risk value)
- Work within a budget (the RE can select the budget)

When a project is started, the default scenario is to `Maintain` risk.  This system will determine the average risk of the assets in my project, and calculate which assets need to be replaced over the 30 year project, and when, to maintain the risk.

Here, I’ve already added a second scenario to reduce risk.  I’ve selected a risk score of 10.  When You run that scenario, the system will calculate which assets need to be replaced over the 30 year project, and when, to reduce the risk score.

You will demonstrate the 3rd scenario, which is to determine which assets need to be replaced over the 30 year project, and when, to stay within a budget.

You will click the “+”, and follow the prompts, to create a new investment strategy to `Stay in Budget`.

When You run the analysis, You will see an indication to show that the analysis is in progress.

Once complete, a summary of the results appears.  You can click on the list icon to see the details of the replacement plan.

1. Click the `+`
![apply](/img/apm_8.9/P54.png)

2. Click on the screen to autofill the popup for a “Stay in budget” scenario
![apply](/img/apm_8.9/P55.png)

3. Click `Create`
![apply](/img/apm_8.9/P56.png)

4. Click `Run analysis`
![apply](/img/apm_8.9/P57.png)

5. Click the screen to advance
![apply](/img/apm_8.9/P58.png)

6. Click the `list` icon
![apply](/img/apm_8.9/P59.png)


###  Choose an Asset Investment Strategy for your Project 

You can compare my 3 strategies side-by-side and determine which one I’d like to implement.

You will simply click the “Compare strategies” button at the top of the page, select all 3 strategies, and click “Compare”.

From the side-by-side view, Youcan decide which to implement, and export the details to a file.

1. Click the “Compare strategies” button
![apply](/img/apm_8.9/P60.png)

2. Click on the screen to select all three strategies
![apply](/img/apm_8.9/P61.png)

3. Click “Compare”
![apply](/img/apm_8.9/P62.png)Click the screen to show the export options


## Summary
<a name="summary"></a>

Congratulations.  You now have identified worn and unhealthy assets and have added them to an asset investment optimization project to improve their condition.
