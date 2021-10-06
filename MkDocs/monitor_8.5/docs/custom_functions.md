# Objectives
In this Exercise using Monitor you will learn how to :

* Add a Custom Function to call an external email service..

The ambient temperature where th Hopper Asset is located should exceed a temperature is above 27 degrees Celcius.   The 
food  packaged has a shorter shelf life when it is packaged at temperatures higher than that.  A remote operational 
support teams monitor will monitor the packaging Hooper to ensure it is operating within the required operating ranges 
and without anomalies.  

---
*Before you begin:*  
This exercise requires that you have completed the [pre-requisites](../prereqs) required for all Exercises and that you  
have completed the earlier exercises in this lab.

---
## Create a Python Function to Monitor
In this exercise you quickly create some simulated hopper operational data that you will use in your exercises. 
You will use data from simulated industry hopper as the assets you are responsible to monitor.  You will also create 
a constant for the maximum_temperature in degrees celcius that is allowed 

1. In Monitor, select `Setup Assets` tab, search for `Sample_Packaging_Hopper_Type_yourinitials` .
Click on your `Asset Type` and click on   `Setup Asset Type` button.  ![Setup Asset Type](/img/monitor_8.5/fun03.png) 

2.   Click `Data` tab, `+` button  to add a new calculated metric from the catalog.  Click `+` button  and enter `Puthon` 
in the search field of the Monitor catalog. ![Search catalog for the Python Function](/img/monitor_8.5/fun05.png)

3.  Click `PythonFucntion` option and the`Select` button to add the function to your `Asset Type`.  ![Create a Python Function](/img/monitor_8.5/fun07.png) &nbsp;

4.  Select `ambient_temp` from the  `Data Item` field  ![Choose input metric](/img/monitor_8.5/fun08.png) &nbsp;

5.  Past the code below into the `function_code`  This will assign a value of one to this metric each time the metric 
value for `ambient_temp`  is equal to or above 27. 
  
    ```
    def f(df, parameters=None):
        import numpy as np
        return np.where(df['ambient_temp'] >= 27, 1, 0)
    ```
6. Click the `next` button to configure the function calculation schedule. ![Add Python function code](/img/monitor_8.5/fun09.png) &nbsp;
 
7. Click the `schedule` slider to edit the schedule.   Enter 7 in the field `calculating the last` and changet `time` 
to `days` instead of `minutes`.   Also set the `output name` to  `ambient_temp_over_27`
click on `Save`button. ![Add Python function code](/img/monitor_8.5/fun11.png) &nbsp;

8. Wait 5 minutes and make sure your function doesn't have any errors and causes the pipeline analysis to stop.  If it
does you will see an error.  Click on the error and read the message.  Download the log file if you need more information
to trouble shoot the error.

9. Click on the calculated metric and the data tab to see the time series data added to you your Asset Type


## Next steps
You now have a column which will have a 1 each time the ambient temperature exceeds 27 degress celcius.  In the next 
exercise you wil create a PythonExpression that convert the 1 and 0  to a string that shows ambient temperatuer status 
indicating when the hopper temperature `exceeds` or is `normal` for manufacturing quality standards.