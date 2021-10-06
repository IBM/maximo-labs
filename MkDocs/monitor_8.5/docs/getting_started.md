
# Getting Started with the IBM Maximo Monitor v8.5 Lab!
 
Students doing these exercises and facilitators preparing for delivering the exercises should read the [instructions](../prereqs).

These labs are still under development as Monitor v8.5 was just released.  Please  [Contributing to Labs](../../about) 
providing us feedback by enhancements or bugs via Survicate Net Promoter score surveys if you are asked.  We also 
welcome your contributions to existing or new exercises. 

## Learning Goals

|   Goal                                     | Recommended Activities                                       | Time Needed   |
|:------------------------------------------:|: -----------------------------------------------------------:|:-------------:|
|  Setup local development environment       | Setup your local development environment                     |   1.5 hours  |
|  Create a Packaging Asset                  | Exercise 1                                                   |   15 mins    |
|  Create a Constant                         | Exercise 2                                                   |   15 mins    |
|  Create a Python Function                  | Exercise 3                                                   |   30 mins    |
|  Create a Python Expression                | Exercise 4                                                   |   5 mins    |
|  Add a Value card to an Asset Dashboard    | Exercise 5                                                   |   5  hours   |
|  Create a Custom Function                  | [Exercise 6](https://www.ibm.com/docs/en/maximo-monitor/8.5.0?topic=calculations-using-custom-functions) |   2  hours   |

<br/>

## Overview of Maximo Monitor

Read an [overview of Maximo Monitor](https://mam-hol.eu-gb.mybluemix.net/monitor_saas/getting_started/)

##  Demonstration of Monitor

Ask your facilitator for a demonstration of Maxiom Asset Monitor or watch this short 7 minute [video demonstration](https://youtu.be/IyQgRwAseLU)

# Objectives
In these labs using Monitor you will learn how to :

* Setup local development environment
* Add Example Packaging Hopper Asset
* Add a Constant
* Add a PythonFunction
* Add a PythonExpression 
* Add a Value card to an Asset Dashboard

The Packaging Hopper Asset will provide the timeseries data that we will use in the exercise to determine how frequently the ambient
temperature is above 27 degrees Celcius.   The food that is being packaged has a shorter shelf life when it is packaged
at higher temperatures.  Remote operational support teams monitor the Hooper to ensure it is operating within the required
operating ranges and without anomalies.  

The Python Function will add a new column of data with a value of 1 each time the ambient temperature is above the max 
temperature constant.   The maximum temperature constant  is set to 27 degrees Celcius.  When the ambient temperature is 
below the maximum temperature constant assign a value of 0.  You can then sum or aggregate the number of time the ambient 
temperature exceeded the maximum temperature constant for some chosen time period.  Common aggregation periods are 1 hour,
1 day,  7 days,  1 month, 1 quarter and 1 year.

The Python Expression will that will calculate the `temperature_deviation` between the `ambient_temp` and `max_temp_YI`. 

Monitor automatically creates asset dashboards for your. You will add a Value card to a built in Asset Dashboard.