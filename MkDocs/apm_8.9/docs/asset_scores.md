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

1. [Setup Scores](#setup_scores) to calculate asset condition.
2. [Matrix Page](#matrix_page) to identify and quantify the number of assets that need attention.
3. [Asset Investment Project](#asset_investment_project)to decide which strategy is best to action the assets 
 
**Prerequisites**

This lab requires the following

- A working Maximo Application Suite (MAS) environment with Maximo Manage, or another Enterprise Asset Management (EAM) system, Maximo Health, Maximo Health and Predict – Utilities (HPU), and Maximo Optimizer installed.
- Sufficient asset data to run the analysis and get insights

## Setup Scores
<a name="setup_scores"></a>

As a reliability engineer, You use Maximo Health, Predict, and Health and Predict – Utilities to identify assets with a custom score that needs attention.  You investigate those assets and take actions to improve the condition of those assets.

Custom scores allow me to apply my knowledge as an SME (subject matter expert) to create ways of measuring the condition of my assets.


###  Navigate to Health and Predict - Utilities

You will start from the main MAS screen, and select the Health application.    You will create a custom score for a subset of these assets.

1. You will start from the main MAS screen, and select the Health Predict - Utilities application.  Select the `Industry solutions` tab.

![navigate_to_health](/img/apm_8.9/P1.png)	

2. Review the assets in the Assets Grid page to see over 10 thousand assets under management.
![assets_grid](/img/apm_8.9/P2.png)	


###  Create a Score Type

To create a custom score, You will select the  `Scoring and DGA Setting` tab on the left navigation bar in Maximo Health.  This is where You can create and view asset groups, score types, and contributors.  You will click on the `Create new score type` button to create a custom score type, complete the fields in the pop-up box, and save it.

1. Click `Scoring and DGA Setting` from the left nav 
![score_dga_settings](/img/apm_8.9/P3.png)	

2. Click `Create new score type +` 
![create_new_score_type](/img/apm_8.9/P4.png)	

3. Click the screen to auto-fill the pop-up box
![pop_up](/img/apm_8.9/P5.png)	

4. Click `Save`
![save_score_settings](/img/apm_8.9/P6.png)	

Value:  Creating custom ranges allows me to enforce my unique tolerance to the score.


###  Create a Score Group

You can build out a custom score to apply only to a specific group of assets.  Groups allow you to scope the score to a query of assets and a method for calculating the scores.

For substation transformers, You can see there’s already a group called `ST_EUDEMO_A_TEST`.  There are several scores already created using a notebook included with Health and Predict – Utilities.

To create a custom score for these assets, You will return to the `Groups` tab, and click the `Create a scoring and DGA group`.

You will complete the fields.  For this example, we’ll create our score using the `Building Scores` capability rather than the `Connecting group to notebook` option.  You will use the query function to identify the assets in my group then create the group.

1. Click the `Groups` tab
![groups](/img/apm_8.9/P7.png)	

2. Click the `ST_EUDEMO_A_TEST` group 
![eu_group](/img/apm_8.9/P8.png)	

3. Click the `Scoring and DGA Setting` breadcrumb 
![dgs_settings](/img/apm_8.9/P9.png)	

4. Click the `Create a scoring and DGA group +` button to create a scoring group 
![dga_group](/img/apm_8.9/P10.png)	

5. Click the screen to auto-fill the pop-up box 
![auto_fill](/img/apm_8.9/P11.png)	

6. Click `Create`
![create_group](/img/apm_8.9/P12.png)	

Value:  Grouping common assets together allows us to apply our custom score to multiple assets rather than one at a time.


###  Add a Contributor

With groups created, You will click `Add score` and select `Wear` from the pop-up box.

You will use a simple formula to represent wear.  You will click the `+` symbol.  From the selections, You will pick `FACRULYEARSSAMPLE`.

1. Click the `Add score` 
![add_score](/img/apm_8.9/P13.png)	

2. Click the `Wear` 
![wear](/img/apm_8.9/P14.png)	

3. Click `Done` 
![done](/img/apm_8.9/P15.png)	

4. Click `+` 
![plus](/img/apm_8.9/P16.png)	

5. Click `FACRULYEARSSAMPLE` 
![facrulyearsample](/img/apm_8.9/P17.png)	

6. Click `Add`
![add](/img/apm_8.9/P18.png)	


###  Activate Scores

Activating a scores communicates to other users that the score is available to be used to measure asset conditions.   The custom score will appear available for other users to use.  Before You can activate the score, You have to assign the factor that You selected a percentage that this measure contributes to overall normalized score value.  Since there’s only 1 factor, You will assign it 100%.

1. Click the pencil icon 
![pencil](/img/apm_8.9/P19.png)

2. Click the screen to autofill the form 
![autofill](/img/apm_8.9/P20.png)

3. Click “Save 
![save](/img/apm_8.9/P21.png)

4. Click ”Active” to activate the score. 
![acive](/img/apm_8.9/P22.png)

5. Click the “Scoring and DGA Setting” breadcrumb
![dga_settings](/img/apm_8.9/P23.png)


## Assets Matrix Page
<a name="matrix_page"></a>

###  Identify Worn Assets Using Matrix Page

To identify assets that are worn and in poor health, You will use my new `wear` score along with the Matrix page.

From the left nav, You will click `assets`, and then the `Matrix` icon  on the upper right of the screen.

You will create a matrix using my new score `wear`, and `health`.  But first, You will filter my assets to substation transformers.

The results show only the substation transformers on the matrix.

1. Click `Assets` icon in the left nav 
![assets](/img/apm_8.9/P24.png)

2. Click the `Matrix` icon on the upper right of the screen 
![matrix_icon](/img/apm_8.9/P25.png)

3. Click the `filter` symbol 
![filter](/img/apm_8.9/P26.png)

4. Click the `pencil` icon next to `type` 
![pencil](/img/apm_8.9/P27.png)

5. Select `substation transformers` 
![substation](/img/apm_8.9/P28.png)

6. Click `Ok` 
![ok](/img/apm_8.9/P29.png)

7. Click `Apply`
![apply](/img/apm_8.9/P30.png)

   
###  Customize Matrix Configurations

To customize the matrix, You will click the cog in the upper right of the screen.  You will adjust the fields so that Health appears on the y axis, and Wear on the x axis.

You will also fill in the colors of the matrix so that the assets with poor health and poor wear show up in the upper right corner.

Finally, you'll save the Matrix configuration.


1. Click the `Cog` icon
![apply](/img/apm_8.9/P31.png)

2. Click the screen to autofill the form
![apply](/img/apm_8.9/P32.png)

3. Click the screen to update colors
![apply](/img/apm_8.9/P33.png)

4. Click `Save as` in the upper right
![apply](/img/apm_8.9/P34.png)

   
###  Investigate Assets by Drilling in to the Assets Matrix 

My new matrix shows me shows counts of the number of assets in the current query that have wear scores and health scores that fall into the defined score ranges for each score.

You can see that a high number of my substation transformers are showing poor wear score, and most are in fair or poor health.  You can click through to drill down into each category, or into each colored cell in the matrix.

Given the overall condition of my substation transformers, You will build an investment project, from my matrix, to determine when You should replace them.

1. Click on the high box, and add those assets to a new investment project.  Click the “high” box to show those assets in a grid
![apply](/img/apm_8.9/P35.png)

2. Click the screen to select them all
![apply](/img/apm_8.9/P36.png)

3. From the grid view, You will select all of the assets, and then create a new investment project. Click `Create investment project`
![apply](/img/apm_8.9/P37.png)


## Asset Investment Project
<a name="asset_investment_project"></a>

###  Create an Asset Investment Project 
   
By drilling into the value card or individual asset counts in each cell of the Asset Matrix You can see which assets are included in the count of assets in that range.
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
