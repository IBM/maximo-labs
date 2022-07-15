# Asset Investment Optimization
Maximo Health includes Asset Investment Optimization templates that you can use to see which strategies work best to meet your business goals. 

In this exercise you will use Health to:

1. [Identify Assets](#identify_assets) in need of inspection, repair or replacement.
2. [Create an Asset Investment Project](#asset_investment_project)
3. [Add Assets to a Project](#add_assets_to_project)
4. [Create an Investment Template](#create_template) by asset type
5. [Evaluate Investment Options](#evaluate_options) to see which works best to maintain risk,  reduce maintenance costs etc.
6. [Set maintain risk strategy](#maintain_risk) to create a business as usual baseline
7. [Set reduce risk strategy](#reduce_risk) to adjust the risk of the project based on risk tolerance
8. [Set stay in budget strategy](#stay_in_budget) to adjust the budget for the project
9. [Compare strategies](#compare_strategy)

   
**Prerequisites**

This lab requires the following

- A working Maximo Application Suite (MAS) environment with Maximo Manage, or another Enterprise Asset Management (EAM) system, Maximo Health, Maximo Health and Predict – Utilities (HPU), and Maximo Optimizer installed.
- Sufficient asset data to run the analysis and get insights

Please note that the MAS Worldwide (WW) demo environment is NOT a suitable environment for this lab.  The WW demo environment is shared, and making ANY changes to that environment will impact other users’ ability to demonstrate MAS.

## Introduction

This lab is intended to demonstrate the Asset Investment Optimizer (AIO) capability in HPU.  The AIO allows a Reliability Engineer (RE) to build a project of assets, assign a length of the project, and run multiple strategies to determine which assets should to be replaced over the life of the project, and when.  The RE can compare strategies, export details, and ultimately execute the one that meets their needs. The strategies are…

- Maintain risk
- Reduce risk (the RE can select the risk value)
- Work within a budget (the RE can select the budget)

For any use case in Asset Performance Management (APM), the Reliability Engineer (RE) will typically follow three basic steps.

- Identify assets at risk
- Investigate assets at risk
- Take an action

The AIO capability is an action that can be taken by the RE to ultimately reduce risk.  It can be demonstrated as a stand-alone feature, as presented here, or as a `take an action` step in a longer narrative.  As a result, the asset references and visualizations will vary based on the data set and story, but the steps are the same.

##  Navigate to Health and Predict - Utilities

`Action:`

2. Navigate to Health and Predict - Utilities (HPU). From the main MAS page, select the `Industry solutions` tab.
![setup assets](/img/apm_8.7/AIO 1.png)

3. Then click `Health and Predict – Utilities` menu.
![setup assets](/img/apm_8.7/AIO 2.png)	 

 
## Identify Assets for a Project
<a name="identify_assets"></a>

The first step in using the Asset Investment Optimization (AIO) feature is to select assets to start a new project or to be part of an existing project.

In most list/grid views in HPU, there is a selection box on each asset line that can be checked.  Multiple assets on a page can be checked.  Once selected, those assets can be used to create a new project, or added to an existing project.

**Value:**  The RE can build a project, or add assets to a project from any dashboard, at any time, when they identify an asset at risk.

`Action:`

1. From the main grid view, click the filter icon, then select `Type`.

    ![setup assets](/img/apm_8.7/AIO 3.png)
    ![setup assets](/img/apm_8.7/AIO 4.png)

2. From the pop-up, find `Substation Transformers`, select it, and press `OK`.  It may be necessary to use the search capability or scroll.

    ![setup assets](/img/apm_8.7/AIO 5.png)

3. Finally, press `Apply`.

    ![setup assets](/img/apm_8.7/AIO 6.png)	 


## Create a Project
<a name="asset_investment_project"></a>

The filter will reduce the initial list of all assets under management, to a list of assets identified as substation transformers.

In this case, there are 13 substation transformers.

**Value:**  The filter capability makes it easy to find and list assets from specific sites, types, failure classes and containers.

`Action:`

1. Select the above assets that appear on the resulting list and press `Create investment project`.  In this case, the *first 3* appear on the list (in bold).

    - **ST_1393137**
    - **ST_1400501**
    - **ST_1400502**
    - ST_1400517
    - ST_1400518

    ![setup assets](/img/apm_8.7/AIO 7.png)

2. On the `Create A Project` page, complete the required fields as follows, then press `Create`.

    - **Name:** AIO Lab (in a shared environment, this must be unique for each user)
    - **Duration in years:**  10 
    - **Target start quarter:**  3Q 
    - **Target start year:**  2022

    ![setup assets](/img/apm_8.7/AIO 8.png)

!!! note
    If there is NOT a `Replacement plan template` already created for Substation Transformers, there will be a prompt to create one.  To complete the template, follow the steps later in this lab.
 
## Add Assets to an Existing Project
<a name="add_assets_to_project"></a>

Once the project is successfully created, a summary screen of the project will be presented.  Take the following steps to add the remaining substation transformers to the project.

**Value:**  The RE can add additional assets to a project at any time.

1. Follow the prompt on the left navigation panel to return to the `Assets` view, and to the list of substation transformers.  If this does not direct to the list of substation transformers, follow the previous steps to produce that list.

    ![setup assets](/img/apm_8.7/AIO 9.png)

2. From the resulting list, click through to page 2 of the substation transformer list.

    ![setup assets](/img/apm_8.7/AIO 10.png)

3. Select the remaining substation transformers (in bold):

    - ST_1393137
    - ST_1400501
    - ST_1400502
    - **ST_1400517**
    - **ST_1400518**

5. Click `Add to investment project`.  In this case, it is the final 2 substation transformers on the following list.

    ![setup assets](/img/apm_8.7/AIO 11.png)

6. From the `Add to the investment project` popup, select the lab to which these assets will be added, in this case `AIO Lab`, and press `Add`.

    ![setup assets](/img/apm_8.7/AIO 12.png)

7. A popup will show that the assets are being added to the project, and the `Edit project` page will appear.  Click `Save` at the bottom of the page.

    ![setup assets](/img/apm_8.7/AIO 13.png)

8. An additional popup will appear as a reminder that adding additional assets to an existing project will invalidate previous results.  Click `Save` to confirm and proceed.

    ![setup assets](/img/apm_8.7/AIO 14.png)	 

   
## Create a Replacement Plan Template
<a name="create_template"></a>

A replacement plan is required for each asset is the project.  The assets must either have unique replacement plans, or all of the asset types in the project (in this case, substation transformer) must have replacement plan templates.

**Value:**  If an asset exhibits characteristics different from the other assets in its type, or a plan has already been developed for the asset, the asset can still be included in a project using its unique replacement plan.

1. Navigate to the `Asset investment optimizer` using the left navigation bar.

    ![setup assets](/img/apm_8.7/AIO 15.png)

2. From the `Asset investment optimizer` page, select `Plan templates`.

    ![setup assets](/img/apm_8.7/AIO 16.png)

3. On the `Plan templates` page, select an existing template OR click the `+` symbol to create a new one.  In this case, select `substation transformers` since there is already a replacement plan template created.  The only additional step required when creating a new template is to identify the asset type.

    ![setup assets](/img/apm_8.7/AIO 17.png)

4. On the `Edit a replacement plan template`, complete the required fields as follows.

    - **Expected downtime in hours:**  4
    - **Estimated capital cost:**  $15,000
    - **Estimated operation cost:**  $20,000
    - **Estimated failure cost:**  $23,000
    - **Expected life in years:**  50

5. Then click `Save`.

    ![setup assets](/img/apm_8.7/AIO 18.png)

6. If prompted to `Confirm edit`, press `Continue`.
    
    ![setup assets](/img/apm_8.7/AIO 19.png)


## Evaluate Investment Options
<a name="evaluate_options"></a>

### Edit an AIO Project

A project can be adjusted at any time.  However, making changes will invalidate any investment strategies that have already been executed against the project.  After the changes are made, the strategies must be run again.

**Value:**  Once a project is created, changes like adjusting assets, the length of the project, and when it starts, can be made at any time.  The RE does not need to create a new project. 

1. From the `Asset investment optimizer` page, select the `Project` tab.

    ![setup assets](/img/apm_8.7/AIO 20.png)

2. Select the project `AIO Lab`.

    ![setup assets](/img/apm_8.7/AIO 21.png)

3. From the `AIO Lab` project page, select the pencil icon to review the details of the project.

    ![setup assets](/img/apm_8.7/AIO 22.png)

4. Review the details of the project, and make any required adjustments.

    ![setup assets](/img/apm_8.7/AIO 23.png)

5. In this case, no changes are required.  Press `Cancel`.  If changes are made, an additional popup will appear as a reminder that changes to an existing project will invalidate previous results.  Click `Save` to confirm and proceed.

    ![setup assets](/img/apm_8.7/AIO 24.png)	 


### Maintain Risk AIO Project
<a name="maintain_risk"></a>

The first strategy, maintain risk, determines which assets need to be replaced, and when, in order to maintain the average risk of the project over the life of the project.  The average risk is the average of the individual assets in the project.

**Value:**  The maintain risk strategy sets a business as usual baseline, to which other strategies can be compared. 

`Action:`

1. On the main `AIO Lab` project page, the maintain risk strategy will already be available and selected in the left column.  The average risk score will be calculated.  In this case, it is 42.  Select the `Run analysis` button to execute the strategy.

    ![setup assets](/img/apm_8.7/AIO 25.png)

2. The analysis may take some time to run, during which there will be indicators.

    ![setup assets](/img/apm_8.7/AIO 26.png)

3. The results will automatically appear in the `report` view.  In this case, 4 of the 5 assets must be replaced for a total cost of $140,000, with an average risk score of 17.2, and the highest risk score of 31.7 for the duration.

    ![setup assets](/img/apm_8.7/AIO 27.png)

4. Select the `table` view to see which assets need to be replaced, and when.

    ![setup assets](/img/apm_8.7/AIO 28.png)	 

 
### Reduce Risk AIO Project:  
<a name="reduce_risk"></a>

The reduce risk strategy allows the RE to select the average risk score for the project.  The strategy will determine which assets need to be replaced, and when, in order to maintain the desired risk of the project over the life of the project.

**Value:**  The reduce risk strategy allows the RE to adjust the risk of the project based on their risk tolerance.  

1. From the main `AIO Lab` project page, in this case from the `table` view, click on the `+` symbol to add a new strategy.

    ![setup assets](/img/apm_8.7/AIO 29.png)

2. From the pop up box, use the pull down menu to select `Reduce risk`.

    ![setup assets](/img/apm_8.7/AIO 30.png)

3. From the next pop up box, enter a risk value of `10`, the click `Create`.

    ![setup assets](/img/apm_8.7/AIO 31.png)

4. On the main `AIO Lab` project page, the reduce risk strategy will be available and selected in the left column, above the last strategy executed, in this case, the maintain risk strategy.  Select the `Run analysis` button to execute the strategy.

    ![setup assets](/img/apm_8.7/AIO 32.png)

5. Once again, the analysis may take some time to run, during which there will be indicators.

    ![setup assets](/img/apm_8.7/AIO 33.png)

6. The results will automatically appear in the `report` view.  In this case, all 5 assets must be replaced for a total cost of $175,000, with an average risk score of 8.0, and the highest risk score of 19.1 for the duration.

    ![setup assets](/img/apm_8.7/AIO 34.png)

7. Select the `table` view to see which assets need to be replaced, and when.

    ![setup assets](/img/apm_8.7/AIO 35.png)

!!!Note 
    Multiple reduce risk strategies can be created using different target risk scores.	 

 
### Stay in Budget AIO Project
<a name="stay_in_budget"></a>

The stay in budget strategy allows the RE to set a budget for the project.  The strategy will determine which assets need to be replaced, and when, in order to stick to a budget for the project.

**Value:**  The stay in budget strategy allows the RE to adjust the budget for the project based on the available budget.

`Action:`

1. From the main `AIO Lab` project page, in this case from the `table` view, click on the `+` symbol to add a new strategy.

    ![setup assets](/img/apm_8.7/AIO 36.png)

2. From the pop up box, use the pull down menu to select `Stay in budget`.

    ![setup assets](/img/apm_8.7/AIO 37.png)

3. From the next pop up box, enter the following values below and the click `Create`.

    - **Capex:**  60,000
    - **Opex:**  80,000
    - **Total budget:**  140,000

    ![setup assets](/img/apm_8.7/AIO 38.png)

4. On the main `AIO Lab` project page, the stay in budget strategy will be available and selected in the left column, above the last strategy executed, in this case, the reduce risk strategy.  Select the `Run analysis` button to execute the strategy.

    ![setup assets](/img/apm_8.7/AIO 39.png)

5. Once again, the analysis may take some time to run, during which there will be indicators.

    ![setup assets](/img/apm_8.7/AIO 40.png)

6. The results will automatically appear in the `report` view.  In this case, 4 of the 5 assets must be replaced for a total cost of $140,000, with an average risk score of 17.2, and the highest risk score of 31.7 for the duration.

    ![setup assets](/img/apm_8.7/AIO 41.png)

7. Select the `list` view to see which assets need to be replace, and when.

    ![setup assets](/img/apm_8.7/AIO 42.png)

!!!Note 
    Multiple stay in budget strategies can be created using different budgets.
 
### Comparing Investment Strategies
<a name="comparing_strategies"></a>

Within each AIO project, the RE can compare up to three strategies.  Since the RE can create multiple reduce risk and stay in budget strategies, the RE can compare any combination of strategies.  In this case, the comparison will be the maintain risk, reduce risk, and stay in budget strategies.

**Value:**  The comparison capability gives the RE an easy view to identify which strategy meets their needs, and export the details.

1. From the main `AIO Lab` project page, in this case from the `table` view, click on the `Compare strategies` button.

    ![setup assets](/img/apm_8.7/AIO 43.png)

2. From the popup, select all three strategies, press `Create`.

    ![setup assets](/img/apm_8.7/AIO 44.png)

3. The resulting comparison provides key information for the RE to decide which strategy to pursue.  To export details from one of the strategies, click export at the bottom of one of the strategies.  In this case, select Maintain risk.

    ![setup assets](/img/apm_8.7/AIO 45.png)

4. From the Export Data popup, select analysis report, and click `Export`.

    ![setup assets](/img/apm_8.7/AIO 46.png)

5. Open the results in an application, or save it.  The analysis report will show a summary of the selected strategy.

    ![setup assets](/img/apm_8.7/AIO 47.png)

6. Selecting Details for recommended replacements will produce details of the strategy.

    ![setup assets](/img/apm_8.7/AIO 48.png)	 


## Summary
<a name="summary"></a>

The data presented in this lab is intended to demonstrate the AIO capabilities, and the results may not accurately reflect real-world scenarios.

Note that strategies are highly sensitive and dependent on multiple factors like End of Life and information in the Replacement plan template.

It may be necessary to experiment to get satisfactory results.	

**Clean up**
<a name="clean_up"></a>

1. From the breadcrumbs (or from the left navigation bar), select the Asset Investment Optimizer.

    ![setup assets](/img/apm_8.7/AIO 49.png)

2. On the Project tabs, hover the cursor to the far right of the project name, and select `Delete` when it appears.

    ![setup assets](/img/apm_8.7/AIO 50.png)

3. When prompted, confirm the deletion of the project.

    ![setup assets](/img/apm_8.7/AIO 51.png)


Congratulations.  You now have identified at risk assets and have added them to an asset investment optimization project to improve their condition.
