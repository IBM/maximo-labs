# Objectives
In this Exercise using Monitor you will learn how to :

* Add a value card to your asset dashboard for the new calculated metrics `temperature_deviation` and `ambient_temp_over_max_status` 

Now that you know when the Packaging Hopper asset is a above the `ambient_temp_over_max`  You can display the status 
value of the new calculated metric named `ambient_temp_over_max_status` in a value card in the asset dashboard.   By also 
adding `temperature_deviation` in a value card to the asset dashboard, the Remote operational support will know by how 
much each Hooper is operating outside the required operating ranges.  

---

*Before you begin:*  

- This exercise requires that you have completed the [pre-requisites](../prereqs) required for all Exercises.

- This exercise requires that you have completed the previous exercise.

---

## Create Value Card
Value cards allows you to display a metric or multiple metrics in a card.  It is a good way to show the status of an 
asset. You are also able to set alert thresholds within the JSON to have different icons appear on the card to indicate 
a normal or irregular status. 

1.  In Monitor, select `Monitor` tab,  ![Monitor](/img/monitor_8.5/fun29.png) 

2.  Open your Asset Dashboard.  Search `Device types` for `Sample_Packaging_Hopper_Type_yourinitials`.  Click on your 
`Device Type`,  Click on asset `730001` and  `Asset Metrics Dashboard` which is an built in dashboard Monitor created 
for your asset metrics.  ![Search for Device Type Dashboards](/img/monitor_8.5/fun30.png) 

3.  Edit the asset dashboard that you will add the Value card to.   Click on `gear` icon. Select `Edit Dashboard` and click 
`Continue`  button.  ![Edit Dashboard](/img/monitor_8.5/fun32.png) 
  
4.  Click on `value` card for  `temperature_deviation`.  ![Edit Value card](/img/monitor_8.5/fun31.png) 

5.  Enter the values below for the `Value` card.  ![Value Card](/img/monitor_8.5/fun33.png) 

6.  Scroll up and click the `Save` button   ![Save Dashboard](/img/monitor_8.5/fun34.png)

7.  Scroll down on the  `Asset Metrics Dashboard`  to see the new value Card. ![Temperature Deviation Value Card](/img/monitor_8.5/fun35.png) &nbsp;

8.  You can further customize cards by editing their settings.  Edit the dashboard again.  Click on `Value Card` for Deviation.  Click on `Settings`
Change the font size to a smaller font.  ![Save Dashboard](/img/monitor_8.5/fun36.png)

9.  Add another Value card for the `ambient_temp_over_max_status`,   Scroll down and click on `Add Card` button and repeat 
the step 4 above.     ![Save Dashboard](/img/monitor_8.5/fun36_2.png)

Save your changes to the dashboard.

10.  You can also edit dashboard cards directly by modifying the JSON. Click on your value card.  Click on `Edit Json`
 ![Save Dashboard](/img/monitor_8.5/fun37.png)
  
Some other important notes about the JSON:
-	The `id` at the very top needs to be a unique name for this card. Use dashes instead of spaces.
-	The `size` is self explanatory. This size is `SMALLWIDE`
-	The `type` is the type of card such as `VALUE`, `TIMESERIES`, or `IMAGE`.
-	`unit` is the unit of measurement belonging to your data item.
-	`precision` refers to the number of decimal points to be seen.

See the full explanation of the JSON attributes for all card using the Monitor [documention](https://www.ibm.com/docs/en/maximo-monitor/8.5.0?topic=data-dashboard-json-reference)

11.  Click `Cancel` to not save your changes. 

## Next Step
Congratulations!   You have completed exercises 1 to 5 and have a good understanding how to analyze and display data 
using functions and dashboards with Monitor.  In the next exercise you will create a custom function.  Do the [tutorial](https://www.ibm.com/docs/en/maximo-monitor/8.5.0?topic=calculations-using-custom-functions)
provided in the Maximo Asset Manager Documentation.
