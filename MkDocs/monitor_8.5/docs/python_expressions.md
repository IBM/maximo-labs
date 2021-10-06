# Objectives
In this Exercise using Monitor you will learn how to :

* Create a PythonExpression

Operations wants to be alerted when the temperature deviates more than 10 degress celcius.   Create a `PythonExpression` 
to calculate the `temperature_deviation` by subtracting  `ambient_temp` from the `max_temp_YI` constant you creted in 
the last exercise.  You can use this calculated metric as an input an Alert Expression in inform the  Monitor Remote 
operational support can be alerted  when a packaging asset is operating too fare outside  the required  operating ranges.  

The PythonExpression will add a new calculated metric `temperature_deviation` that you wil add to your asset dashboard.

---

*Before you begin:*  

- This exercise requires that you have completed the [pre-requisites](../prereqs) required for all Exercises.

- This exercise requires that you have completed the previous exercise.

---

## Create a Python Expression in Monitor

1. In Monitor, select `Setup Assets` tab, search for `Sample_Packaging_Hopper_Type_yourinitials` .
Click on your `Device Type` and click on `Setup Asset Type` button.  ![Setup Asset Type](/img/monitor_8.5/fun03.png) 

2.  Click `Data` tab, `+` button  to add a new calculated metric from the catalog. Enter `Puthon` in the search field of 
the Monitor catalog. ![Search catalog for the Python Function](/img/monitor_8.5/fun05.png)

3.  Click `PythonExpression` option and the`Select` button to add the function to your `Asset Type`.  ![Create a Python Function](/img/monitor_8.5/fun28.png) &nbsp;

4.  Set the calculation data item `expression` to the value below.  This will calculate the difference between the ambient 
temperature and the maximum temperature constant you added in the previous exercise.
  
    ```
    df['ambient_temp']-c['max_temp_cf']
    ```

 ![Choose input metric](/img/monitor_8.5/fun08.png) &nbsp;

5.  Set the output name to `temperature_deviation`   ![Choose input metric](/img/monitor_8.5/fun34.png)

## Next Step
Nice work getting to here.  In the next exercise, you will add your calculated metrics `ambient_temp_over_max_status`, 
 `temperature_deviation` and `ambient_temp_over_max_status` to your asset dashboard.
