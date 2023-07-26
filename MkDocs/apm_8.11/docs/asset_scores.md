# Asset Custom Scores

Health Predict and Utilities already provide the ability to score asset condition using the out-of-the-box scores for:

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

1. [Setup Score](#setup_scores) to calculate asset condition.
2. [Create Health Asset Scoring Group](#create_group) to have a group of assets that you can view and work with.
3. [Matrix Page](#matrix_page) to identify and quantify the number of assets that need attention.
4. [Asset Investment Project](#asset_investment_project) to decide which strategy is best to action the assets 
 
 
**Prerequisites**

This lab requires the following:

- A working Maximo Application Suite (MAS) environment with Maximo Manage, or another Enterprise Asset Management (EAM) system, Maximo Health, Maximo Health and Predict – Utilities (HPU), and Maximo Optimizer installed.
- Sufficient asset data to run the analysis and get insights


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


## Create Health Score Group
<a name="create_group"></a>
Create a Health Asset scoring view so that you can work with your custom asset scores in the `Assets Grid`, `Assets Details`,
`Map` and `Matrix` pages.  You can build out a custom score to apply to a specific group of assets.  Groups allow you to 
scope the score to a query of assets and a method for calculating the scores.
 return to the `Groups` tab, and click the `Create a scoring and DGA group`.

You will complete the fields.  For this example, we’ll create our score using the `Building Scores` capability rather than the `Connecting group to notebook` option.  You will use the query function to identify the assets in my group then create the group.

1. From the left cascading menu click `Scoring and DGA settings`.  Click the `Groups` tab.
![groups](/img/apm_8.9/P8.png)	

2. If you don't have a group for pumps you can click `Create a scoring and DGA group` and fill in the form. Click button `Create a scoring DGA group` to specify the assets, query to use and method of calculation.  `Building scores` uses the easy to use forumula based approach.  The notebook approach requires access to Watson Studio which comes with Predict.
![creat groups](/img/apm_8.9/P8A.png)	

3. Select a query that matches the assets you would like to include in this group. Search for the `Query name` and click `Apply` button.  If you don't see one that fits your need
the next steps explains how to create a query to choose the right assets to add your score to.
![form groups](/img/apm_8.9/P8B.png)	

4. You can create a query if you don't see one that matches the assets where you want to use your new score. Edit your 
group by clicking on the `pencil` icon.
![form groups](/img/apm_8.9/Q1.png)

5. Click `+` to add a new query instead of selecting one.
![form groups](/img/apm_8.9/Q2.png)	

6. Enter the values required in the query form for `name`, `description`, and `filters` to use to query Health for the 
right assets. Click `Create and apply` button to save the query.
![form groups](/img/apm_8.9/Q3.png)	

7. Review the assets in the scored assets list to ensure the assets you want to have this score in are are listed.
![assets in group](/img/apm_8.9/Q4.png)	

8. If this is a new group, you must create and apply your changes to save it. Create and save the score group by pressing the `Create` button. 
![save groups](/img/apm_8.9/P8C.png)	

9. You can not add scores to your Health Score group. Click the `Add Score` button.
![select_group](/img/apm_8.9/P8D.png)	

10. if you already have added your custom score type. Choose the score by clicking on the `Score name` tile and the `Done` button.
![add score ](/img/apm_8.9/P8E.png)	

11. For example select `Centrifugal Pump Efficieny` score and the `Done` button to add this score to the pump group. If 
the Contributors haven't yet been setup continue on to the next exercise to create them and add them.  
![save_group](/img/apm_8.9/P8F.png)	 

Value:  Grouping common assets together allows us to apply our custom custom condition score to multiple assets rather than one at a time thus easing administration.


###  Setup Contributor

Contributors describe what child metrics, meter readings, inspections, KPIs and other values should be considered as part
of the overall normalized score.  With groups created, you will click `Add score` and contributors to the score.   Efficiency 
may be made of one or more calculated or metered data.   In this example you will learn the different ways of creating a contributor.
Including  duplicating an existing contributor and creating a new contributor.

1. If you haven't opened your score group.  Open it now.  Once on your score group, your first options is to click the `+`
icon to add an existing contributor to your group.  This could be made up of previous contributors to a score that you created. 
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

!!! note

    The contributor formula is related to the pump meter data, for example, asset could be using different meter name will results a different formula, e.g `((METERVAL("P-HEAD") * 0.3 * 9.8 * METERVAL("P-FLOW") * 0.0037 * 60) * 100) / (((METERVAL("P-VOLTAGE") * METERVAL("P-CURRENT") * 1.732050807569 * 0.75 * 0.8 * 0.9)/1000)*3600)`, `P-HEAD`,`P-FLOW` .etc is defined in hpu_csv_demo data set at `https://github.ibm.com/Watson-IoT/eam-hpu-lab/csv-files`

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


### Create View
Create a Health Asset scoring view so that you can work with your custom asset scores in the `Assets Grid` pages and see the score as column .  

1. Go to the Asset Grid page. Enter `PUMP-100` without last digit as shown below.
![query](/img/apm_8.9/P18Q.png)	

2. Click the dropdown with the `view:` names.  Scroll up to save your view. Name it `Centrifugal Pumps`.
![query](/img/apm_8.9/P19.png)	

3. Save the `view` as a `private view` so that no one but you can see it.   
![query](/img/apm_8.9/P20.png)	


Value:  By creating a view and adding your custom score to your asset grid you can more quickly find the assets that aren't performing well. This makes it easier to analyze and take action to repair or replace poor performing assets. 


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

## Add Assets to an Exiting Asset Investment Project 
<a name="asset_investment_project"></a>

In this exercise you will drill into the poor condition scored assets. Evaluate and choose the ones you would like to add to
and existing Asset Investment Project.  By clicking on each matrix cell you can drill into asset counts to see which assets 
are included in the count of assets in that range.  You action the assets by choosing the assets in the drilled in table 
list and adding to a new or existing asset  investment project. 

Actions:

1. Click the `Red` cell links in the Matrix.
![apply](/img/apm_8.9/P38.png)

2. Review the list of assets. 
![apply](/img/apm_8.9/P39.png)
 
3. Select all the assets by clicking the top `check box` or choose individual assets by clicking 
the check boxes next to that assets you want.  You can click the icon on the top right to `Add to an existing investment project` 
or `create new investment project`  Choose the latter.
![apply](/img/apm_8.9/P40.png)


## Summary
<a name="summary"></a>

Congratulations.  You now have identified inefficient or poor scoring assets using a custom score.   You added poor condition assets
to an asset investment optimization project to improve their condition.
