# Objectives
In this Exercise using Monitor you will learn how to :

* Add built-in Monitor Packaing Hopper Asset 

The Monitor built-in Packaging Hopper Asset will provide the timeseries data that you will use in the exercise to determine 
how frequently the ambient temperature is above 27 degrees Celcius.   The food that is being packaged has a shorter shelf life when it is packaged
at higher temperatures.  Remote operational support teams monitor the Packaging Hopper to ensure it is operating within 
the required operating ambient temperature ranges and without anomalies.  

---

*Before you begin:*  

This exercise requires that you have completed the [pre-requisites](../prereqs) required for all Exercises
Ensure you instructor has provided you the notebooks needed for this lab. 

---

## Create a Packaging Hopper in Monitor
In this exercise you quickly create some simulated packaging hopper operational time series data that you will use in 
your exercises.   You will analyze the data from simulated industry hopper within Monitor functions and alerts. 
You will also create a constant for the maximum temperature `maximum_temp` in degrees celcius that is allowed.

1.  Click `Setup` side menu to add a new asset type using a `Sample Packagin Hopper Type` asset template in Monitor. ![Create an Asset Type](/img/monitor_8.5/fun01.png) &nbsp;
2.  Click `Sample Packaging Hopper type` You will create a simulated set of packaging assets (entities).
3.  Click `Next` button.
4.  Append your initials to the `Asset Type Name` and click on `Next`button.  ![Create a Hopper Asset Type and simulated robot metrics](/img/monitor_8.5/fun02.png) &nbsp;
5.  Note how Monitor has added 5 Hoppers with IDs of 71000 to 710004.  Click on your `Asset Type` and click on 
`Setup Asset Type` button.  ![Setup Asset Type](/img/monitor_8.5/fun03.png)  &nbsp;
6.  Note how Monitor has added an instance asset dashboard for each Hoppers with IDs of 71000 to 710004.  Click on your 
`Monitor` Tab  ![Monitor Asset List](/img/monitor_8.5/fun04.png)  &nbsp;
7.  Click on one of the Hopper assets like `73000` to see it's data.   ![Asset Dashboard](/img/monitor_8.5/fun06.png)  &nbsp;


### Next Step
You now have asset time series data for 5 asset that you can analyze and Monitor.  In the next exercise you will add a 
constant for the max_temp_celcius.  The PythonFunction will use the constant for the max_temp in Celcius that the 
ambient temperature can be.  

