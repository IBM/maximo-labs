# Welcome to the MAS Overview Lab

You will learn a high level overview of the Maximo Application Suite applications version 9 which includes Monitor, Digital Twin Exchange, Visual Inspection, Manage, Mobile, Assist, Parts Identifier, Predict and Health.  

You will take on a variety of personas that work for a Water Resource Authority which are responsible for water and waterwaste treatment facilities and assets. You will understand how all of these applications work together to manage and operate assets across multiple sites from a single application.  

Students doing the demo in this lab should have been provided access to Maximo Application Suite v9.0 instance by the Lab Facilitator or your IBM Rep.  

To prepare for delivering the demo should read the Pre-Requisites located in the left menu in this lab.

See [Contributing to Labs](../../contribute/) if you are interested in providing feedback by submitting enhancements or bugs.  We also 
welcome your contributions to existing or new exercises. 

## Story

A Water Resource Authority needs to manage water and wastewater treatment assets across multiple sites from a single application.  Remote operational support engineers need a single dashboard to manage sites and assets.  The technician needs to have access to accurate details about the work he is assigned to perform. The reliability engineer needs to implement reliability centered maintenance (RCM) analysis, understand the asset health, and prevent predicted failures.


## Personas

- Remote Operational Support<br>
- Asset Manager<br>
- Technician<br>
- Reliability Engineer<br>

## Overview

<b>Scene: Reliability Engineer performs RCM analysis and implements reliability strategies</b><br>
<br>
Reliability Engineer

- Navigates to Reliability Strategies application in MAS
- Selects critical asset for RCM Analysis
- Performs RCM analysis and determines reliability strategies for selected asset
- Creates RCM tasks and activities or sensors for improved asset availability and efficiency


<b>Scene: Remote Operational Support Engineer monitors assets in Monitor</b><br>
<br>
Operational support

- Navigates to Sedimentation summary dashboard
- Filters on an alert that Sedimentation Tank is dirty
- Navigates to Tank instance dashboard and opens first SR to have the debris removed
- Navigates to Pump summary dashboard 
- Notices an anomaly alert on Pump 005
- Reviews asset history and service recently done to replace the seals to address vibration
- Reviews anomaly function and alert thresholds
- Opens Service request to respond to the alert


<b>Scene: Technician performs inspection and repair using Maximo Mobile and Assist</b><br>
<br>
Engineer

- Executes the work order (WO) in Mobile and after finding the impeller was improperly installed, re installs the impeller
- Confirms plan with remote expert tech assistance (Assist Mobile App/Collaborate)  [THIS IS STILL A WIP FOR 9.0]
- Repairs the pump, adds failure code, comments, and completes the WO (Manage Mobile App) 
- Views the assets in the table view, briefly discuss page features, shows pumps with the shared view (Health)
- Views map, chart, matrix, and work queue "Failing before PM" (Health)
- Selects a PMPDEVICE XXX that is also under performing and is predicted to fail before the next scheduled PM (Health and Predict)
- Reviews asset detail page and asset timeline (Health and Predict)
- Reviews actions to take from the asset detail page (Health and Predict)

<b>Scene: Reliability Engineer views asset performance in Health and Predict to identify assets at risk</b><br>
<br>

Reliability Engineer

- Views the assets in the table view, briefly discuss page features, shows pumps with the shared view (Health)
- Views map, chart, matrix, and work queue "Failing before PM" (Health)
- Selects a PMPDEVICE XXX that is also under performing and is predicted to fail before the next scheduled PM (Health and Predict)
- Reviews asset detail page and asset timeline (Health and Predict)
- Reviews actions to take from the asset detail page (Health and Predict)


## Demo Flow 

---

*Needs to be Updated - This lab is still under development*  

---

![img](img/demo_flow.png){:style="height:400px;width:800px"}

---

**Updated: 2024-01-13**

---