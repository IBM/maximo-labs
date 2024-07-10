# How to Setup Default Scoring in Maximo Health

 Starting in v9.0, Maximo Health provides out-of-the-box scores to calculate *health*, *critically*, and *risk* for all your assets. These scores are asset- and industry-agnostic and use common asset and work order data to generates basic indicators of asset performance. You can customize these configurations to your own requirements and make them more advanced.

With one click, you can activate Maximo Health's default scoring capabilities.

- ✅ uses EAM data you already have
- ✅ no configurations required
- ✅ applies basic scores to all assets
- ✅ deactive default scores with ease
- ✅ customize with own advanced configurations

## Why should I turn on default Health scores?

Whether you're just starting out with preventive, condition-based, or predictive maintenance, setting up Health scoring is key. Maximo Health takes all your source data and combines them into scores that represent different aspects of your assets' performance.

Turning on default Health scores is great if:

- you want to assess the performance of your assets and don't know where to start
- you don't have a reliability engineer or subject matter expert (SME) to come up with customized, advanced scoring
- need time to slowly gather more data and come up with an advanced scoring methodology
- you are new to using Maximo Health and can benefit from learning how to use the scoring capabilities

!!! tip
    Even if you have your own scoring methologies, you can still turn on default scores as it will help familiarize yourself with the Health scoring process. It is easy to customize using the default scores, deactivate them at any time, or create your own scores that will overide the default settings. 


## Default Health Scoring FAQs

> ❓ Can I setup default Health scores if I'm not using Maximo Manage (old Maximo or another EAM system)?
>> 💬 Yes, you can. However, it will be harder to view and fix source data. You  will need to integrate your EAM system with IBM App Connect. See [tutorial here](https://www.ibm.com/docs/en/mas-cd/mhmpmh-and-p-u/continuous-delivery?topic=loading-data) 


## MAS v9.0 Default Health Scoring Setup Lab

We will take you through a step-by-step process of setting up default Health scores in your MAS environment.

### Lab Contents

1. [Setup Requirements](#setup-requirements)
2. [Understanding Default Scores](#understanding-default-scores)
3. [Check for Data Quality](#check-for-data-quality)
4. [Customize Default Score Configurations](#customize-default-score-configurations)
5. [Deactivate Default Scores](#deactivate-default-scores)
6. [Activate Default Scores](#activate-default-scores)

### Setup Requirements

**System Requirements**

- MAS Health with Manage v9.0 is installed, or
- MAS Health v9.0 standalone is installed with your own EAM

**Data equirements**

- Work order data
- Asset installation date and manufacturer's expected life
- Asset priority

**Outcome**

Generate Health, Criticality, and Risk scores for all assets

### Understanding Default Scores

**Asset health** measures the current condition of your assets. Factors that influence an asset’s health include its age, usage, maintenance history, condition, environment, and safety.

The default health score configuration is calculated based on an asset's age, high priority open corrective work orders, and high priority open service requests. Each contributor has equal weights.
    ![Default health score configuration](./img/health_score_makeup.jpg)

1. Remaining Useful Life (RUL) - Weight: 33.33%
    - An asset nearing the very end of its expected lifespan with many high priority requests for corrective work will yield a very low health score.
    - Conversely, a new asset with few high priority requests for corrective work will yield a very high health score.
2. Weighted Count of Open Service Requests - Weight: 33.33%
    - This is a weighted calculation of all your open service requests based on priority in the past 5 years. More frequent and higher priority service requests will **negatively** affect the `health` score. Closing more high priority service requests will improve it.
    - Default configuration assumes that service requests have a priority of 1 to 5, where 1 is the *lowest* priority and 5 is the *highest* priority
    - Default configuration assumes that 0 is the lowest number of service requests, and 10 is the most number of service requests.
![Health range](./img/health_range.jpg)
3. Weighted Count of Open Corrective Work orders - Weight: 33.33%
    - This is a similar calculation to `OPENSR` as it takes a weighted calculation of all open corrective work orders based on priority in th past 5 years. More frequent and higher priority open corrective work orders will **negatively** affect the `health` score. Closing more high priority corrective work orders will improve it.
    - Default configuration assumes that work orders have a priority of 1 to 5, where 1 is the *lowest* priority and 5 is the *highest* priority
    - Default configuration assumes that 0 is the lowest number of open work orders, and 10 is the most number of open work orders.


**Criticality** indicates the business importance of your assets. In other words, how severe would the customer, financial, and safety impact be if the asset were to fail?

The default criticality score is the `priority` assigned to the asset.
![Default criticality score configuration](./img/criticality_score_makeup.jpg)

**Risk** measures the probability of high-risk failure. It is usually the likelihood of failure times consequence (Health x Criticality).

The default risk score is the product of asset’s risk health and criticality scores.

An asset with high business impact (and therefore criticality score) will be at higher risk than an asset with low business impact with the same health conditions.
![Default risk score configuration](./img/risk_score_makeup.jpg)


### Activate Default Scores

1. Login to Maximo Application Suite (must be v9.0 or above)

2. Click `Activate now` to turn on automatic defatul scores. This will apply our out-of-the-box configurations to ALL assets in your system and score them on a daily basis. (Note: This will not override any existing scores you have activated. You can also undo this action later.)
![Activate default scores popup](./img/activate_default_scores.jpg)

3. It might takes several minutes to calculate using default score, depending on the number of assets in your system. When calculation is done, click `View Default_scores` to navigate to the default scoring group.
![View Default_scores popup](./img/see_default_group.jpg)

4. The `Default_scores` is a read-only scoring group that contains all assets in your system. It contains the default score configurations for `health`, `criticality`, and `risk`.
![View Default_scores popup](./img/default_score_group.jpg)

5. Click on `Health` to view the default health score configuration for this group. 
![Click health score](./img/default_score_group_health.jpg)

6. In the `Health` score page, you can see the health score type ranges and score description. Expand the contributor groups to view the contributors.
![Default health score](./img/default_health_score.jpg)

7. Click on the contributor name `OPENSR` to view the read-only contributor details and inspect the formula.
![OPENSR contributor](./img/opensr_contributor.jpg)

8. Click on `Health` in the breadcrumbs to return to the previous page. You can click on contributor name `OPENCMWO` to inspect the details and formula. 

9. Go back to `Health` score in the breadcrumbs to return to the previous page. Click on `RUL` contributor name to inspect the details and formula. This is a simple calculation of an asset's remaining useful life based on its age and manufacturer's expected life.
![RUL contributor](./img/RUL_contributor.jpg)

10. Go back to `Default_scores` in the breadcrumbs to return to the group page. Click on `Criticality` to view the default criticality score configuration for this group. 
![Click criticality score](./img/default_score_group_criticality.jpg)

11. In the `Criticality` score page, you can see the criticality score type ranges and score description. Expand the contributor group to view the contributor.
![Default criticality score](./img/default_criticality_score.jpg)

10. Go back to `Default_scores` in the breadcrumbs to return to the group page. Click on `Risk` to view the default risk score configuration for this group. 
![Click risk score](./img/default_score_group_risk.jpg)

11. In the `Risk` score page, you can see the criticality score type ranges and score description. Expand the contributor group to view the contributor.
![Default risk score](./img/default_risk_score.jpg)

!!! note "Note"
    The default calcuation runs on a cron task every 24 hours. You can tell the scores are activated if the toggle is `on` and when the next automatic calculation is.

Congratulations! You've learned how to activate health, criticality, and risk scores for all assets in your system using default configurations. You can now navigate to the default score group and understand how each default score is calculated.

### Check for Data Quality

This section will help you identify and correct incomplete default scores.

A complete `health` score based on default calculations requires the following asset data:

- installation date
- manufacturer's expected life

A complete `criticality` score based on default calculations requires the following asset data:

- asset priority

A complete `risk` score based on default calculations requires both `health` and `criticality` scores to be complete.

The following steps will guide you to identify incomplete scores and add missing data. This is an important piece to ensuring quality data.

1. In the`Default_scores` group, scroll down to the list of all assets. You may notice a different icon denoting "incomplete" scores, which means at least one required data is missing.
![Default group assets incomplete](./img/default_score_assets.jpg)
Assets with missing data will still yeild results, but the scores are "incomplete," so they might not be the most accurate.

2. To add missing data for an incomplete score, click on the value of the incomplete score.
![Partial data](./img/partial_data.jpg)

3. For incomplete `health` scores, enter the `Installation date` and `Manufacturer's expected life`. Click `Update`. The asset data will be saved in the asset record in Maximo Manage.
![Update](./img/update_data.jpg)

4. For incomplete `criticality` scores, enter the asset `priority`. Click `Update`. The asset data will be saved in the asset record in Maximo Manage.
![Update criticality](./img/update_criticality_data.jpg)

5. To view the updated score after entering missing data, you can wait for the cron task to run during the next automatic calculation or click `calculate` to get immediate results.
![Group calculate](./img/group_calculate.jpg)

!!! note "Note"
    If `health` score has missing required asset data, it will calculate results based on available maintenance data. If `criticality` score has missing priority, it will assume an asset priority of medium, or 3, to get the score (this is not in kept in the asset record).


### Customize Default Score Configurations

Default scores may not meet your individual requirements, so they are designed to be customizable.

In this section, you'll learn how to modify, add, and delete default score configurations to a group of assets.

1. Start with the `Default_scores.`. Click `Duplicate group`. This will create a new group using the duplicated defalut score configurations.
![Duplicate group](./img/duplicate_group.jpg)

2. Give your new group a name and description (in this case it will be a group for `Pumps`). Select a `query` for my assets. If you don't see a query on your ist, cick the `+` button to create a new query. 
![Select query](./img/select_query.jpg)

3. After selecting a query, click `Duplicate`. Your new scoring group is created.
![Duplicate scores](./img/duplicate_scores.jpg)

4. Click on `Health` score to view the default configuration you've copied. You can now make any modifications, including adding, deleting or modifying a contributor. You can also adjust the contributor weights. 
![Pumps group](./img/pumps_group.jpg)

5. To delete a contributor, click the `delete` icon next the contributor. In this case, delete the `OPENSR` contributor.
![Delete contributor](./img/delete_contributor.jpg)

6. The contributor weights no longer add up to 100%. To update, click the `edit` button
![Edit contributor weights](./img/edit_weights.jpg)

7. Re-assign the weights so that `OPENCMWO` is `60%` and `RUL` is `40%`. Click `save`.
![Edit contributor weights](./img/edit_weights_popup.jpg)

8. To add a contributor, click the `add` icon next in the `Contributors` table. This should open up a window, where you can select from existing contributors.
![Add contributor](./img/add_contributor.jpg)
![Add contributor popup](./img/add_contributor_popup.jpg)

9. To modify a contributor, click contributor you want to edit. In this case, click `OPENCMWO` contributor.
![Modify contributor](./img/opencmwo.jpg)

10. The contributor is appended with `_COPY` because it is a duplication of the default read-only contributor. Unlike the default contributor, the contributor copy is editable, including its formula and normalization values. Click on the `edit` button next to `value normalization`.
![Modify contributor](./img/opencmwo_edit.jpg)

11. Click `Continue` to acknowledge any edits to the contributor will affect all scores that use it.
![Confirm edit contributor](./img/confirm_edit_contributor.jpg)

12. Specify the normalization values to determine the best and worst possible values for this contributor. Since default `OPENCMWO` makes some assumptions about your work orders, some adjustments may be needed:
    - Work orders have a priority of 1 to 3, where 1 is the *lowest* priority and 3 is the *highest* priority
    - 0 is the lowest number of open work orders, and 25 is the most number of open work orders.
Doing the math, the best case scenario is 0x3=3, and the worst case scenario is 3x25=75. Change `Worst possible value` to `75`. Click `save`.
![Edit OPENCMWO](./img/edit_opencmwo.jpg)

13. Go back to `Health` score in the breadcrumbs to return to the previous page.

14. Click the `Activate` toggle button. This will override the score configurations in the default group.

15. Go back to `Pumps` score in the breadcrumbs. Another modification you want to make is to the criticality score. Click on `Criticality`.
![Pumps group criticality](./img/pumps_group_criticality.jpg)

16. Click the `priority` contributor to edit it.
![Pumps group priority](./img/edit_priority.jpg)

17. Click the `edit` button next to `value normalization`. The default assumes your assets are prioritized on a range of 1 to 5, where 1 is *lowest* priority and 5 is *highest* priority.
![Edit priority normalization](./img/edit_priority_norm.jpg)

18. Make changes to the normalization based on this scenario:
    - Assets have a priority of a 1 to 5, where 1 is the *highest* priority and 5 is the *lowest* priority.
You would modify the normalization so that the `Best possible value` is `1` and `Worst possible value` is `5`. Click `save`.
![Edit priority popup](./img/edit_priority_popup.jpg)

19. Go back to `Criticality` score in the breadcrumbs. Make sure to click the `Activate` toggle button to activate this score configuration.

20. Go back to `Pumps` score in the breadcrumbs. To remove a score configuration (in this case, we want to remove `Risk`), click the `delete` delete button next to it. Click `delete` to confirm.
![Delete risk score](./img/delete_risk_score.jpg)
![Confirm delete risk score](./img/confirm_delete_risk.jpg)

21. You can wait until the next scheduled calculation to generate updated scores. To get udpated scores immediately, click `Re-calculate`.
![Calculate scores](./img/calculate_scores.jpg)

!!! note "Note"
    When you `duplicate` the default group, you're essentially creating a new scoirng group with custom score configurations. 


### Deactivate Default Scores

You have the option to deactivate default scores.

1. Navigate to `score settings`.

2. Click the 3-dot button next to `Default_group`. Click `deactivate`.
![Deactivate default scores](./img/deactivate_default_scores.jpg)

Default score calculations are deactivated (historically calcuated scores are not deleted). You may notice missing scores for your assets if you haven't set up your own custom scores yet. 

### Activate Default Scores

If you want to re-activate default scores, or if you had missed the opportunity to activate when you first installed or upgraded to v9.0 Health, there's an easy way to do it.

1. Navigate to `score settings`.

2. Find the `Default_group`. Click the 3-dot button next to it and hit `Activate`.
![Activate default scores](./img/activate_default_scores.jpg)

Default score configurations are now activated!