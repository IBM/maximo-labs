# Objectives
In this Exercise using Monitor you will learn how to :

* Add a Python Function to check if the ambient temperature is greater than the maximum allowed ambient temperature 
constant.

The ambient temperature where the Hopper Asset is located should not exceed a temperature above 27 degrees Celcius.  The 
food being packaged has a shorter shelf life when it is packaged at temperatures higher than that.  A remote operational 
support teams monitor monitors the packaging Hoopers to ensure they are all operating within the required operating ranges 
and without anomalies.  

---
*Before you begin:*  
-  You have completed the [pre-requisites](../prereqs) required for all Exercises 
-  You have completed the prior exercise in this lab.
---

## Create a Python Function to Monitor

1. In Monitor, select `Setup Assets` tab, search for `Sample_Packaging_Hopper_Type_yourinitials` .
Click on your `Device Type` and click on   `Setup Asset Type` button.  ![Setup Asset Type](/img/monitor_8.5/fun03.png) 

2.   Click `Data` tab, `+` button  to add a new calculated metric from the catalog.  Click `+` button  and enter `Puthon` in the search field of the Monitor catalog.

3.  Click `PythonFucntion` option and the`Select` button to add the function to your `Asset Type`.  ![Create a Python Function](/img/monitor_8.5/fun07.png) &nbsp;

4.  Set the calculation data item inputs.  Select `ambient_temp` from the  `Data Item` field  ![Choose input metric](/img/monitor_8.5/fun08.png) &nbsp;

5.  Past the code below into the `function_code`  This will assign a value of one to this metric each time the metric 
value for `ambient_temp`  is equal to or above 27. 

  
    ```
    def f(df, parameters=None):
        import numpy as np
        return np.where(df['ambient_temp'] >= 27, 1, 0)
    ```
    
6.   Click the `next` button ![Add Python function code](/img/monitor_8.5/fun09.png) &nbsp;

7. Configure the function calculation schedule.  Click the `schedule` slider to edit the schedule.   Enter 7 in the 
field `calculating the last` and changet `time` to `days` instead of `minutes`.   Also set the `output name` to 
`ambient_temp_over_max` 

8.  Set the Output `Type` to `string` then set it back to `number` then  click on `Create`button. ![Add Python function code](/img/monitor_8.5/fun11.png) &nbsp;

!!! note 
If you encounter the error below, you likely hit a bug.  Carefully redo the step 8. ![error](/img/monitor_8.5/fun13.png) 


9. Wait 5 minutes and make sure your function doesn't have any errors and causes the pipeline analysis to stop.  If it
does you will see an error.  Click on the `Analysis Stopped` error  ![Add Python function code](/img/monitor_8.5/fun25.png) &nbsp;
Read the message to trouble shoot.  If you need more information download the log file to trouble shoot the error further.

10. Click on the calculated metric `max_temp_yourinitials` and the `data table` tab to see the time series data added to 
your Device Type.  Sort the data by clicking on `ambient_temp_over_max`.  Note how there are now 1's and 0's for the times
 when the ambient temperature was above `max_temp_yourinitials` for each packaging hopper.  ![View Cacluated Meric](/img/monitor_8.5/fun27.png) &nbsp;


11. Go back and now update the `PythonFucntion` you created in step 3.  Modify the code to reference the constant you 
created in the previous exercise.  Expand the ` Calculated metrics`  and click the `ambient_temp_over_max`.  Click on the 
`open function` icon on the top right to modify the code.  ![Add Python function code](/img/monitor_8.5/fun25.png) 
    
12.  Add a another `pythonfunction`  to evaluate the the  `ambient_temp_over_max` and set a new calculated metric named 
`ambient_temp_over_max_status` of type string to  `exceeds` or`normal` when the value is 1 or 0 respectively. 


    ```
    def f(df, parameters=None):
        import numpy as np
        return np.where(df['ambient_temp_over_max'] == 1, "Exceeds", "Normal")
    
    ```

## Next steps
You now have a new calculated metric that will have a value of 1 each time the ambient temperature exceeds 27 degress 
Celcius or 0 if it is less than or equal to 27 degrees Celcius.

In the next exercise you wil create a PythonExpression to calculate the `temperature_deviation` between the 
`ambient_temp` and the `ambient_temp_over_max`.