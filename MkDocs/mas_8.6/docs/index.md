![img](/img/mas_8.6/banner.png){:style="height:100px;width:800px"}

# Welcome to the Maximo Application - End-to-End Overview Lab <br> (Version: 8.6)

You will learn a high level overview of the Maximo Application Suite applications: Monitor, Digital Twin Exchange, Visual Inspection, Manage, Mobile, Assist, Parts Identifier, Safety, Predict, and Health with a story of a waterwaste plant. You will understand how all of these applications work together to run operations within a business. 

Students doing the demo in this lab should have been provided access to Maximo Application Suite v8.6 instance by the Lab Facilitator or your IBM Rep.  

Preparing for delivering the demo should read the Pre-Requisites located in the left column where the indexes for the entire lab are.



![img](/img/mas_8.6/mkdocstab.png){:style="height:400px;width:400px"}

See [Contributing to Labs](../../about) if you are interested in providing feedback by submitting enhancements or bugs.  We also 
welcome your contributions to existing or new exercises. 

## Story

A Water Resource Authority needs to manage water and wastewater treatment assets across multiple cities and regions from a single application.  Remote operational support engineers need a single dashboard to manage sites and assets.  The Technician needs to ensure his safety and have access to accurate details about the work he is assigned to perform. The Asset Analyst and Asset Manager tap into digital twins to improve asset management operations. Safety Officers are ensuring appropriate safety polices in place to minimize risk and provide safer working environments for the technicians.  The reliability engineer needs to understand the asset health and prevent predicted failures by properly servicing the rotating assets like centrifugal pumps.

## Personas

•	Remote Operational Support<br>
•	Asset Analyst<br>
•   Asset Manager<br>
•   Maintenance Supervisor<br>
•   Technician<br>
•   Safety Officer<br>
•   Reliability Engineer<br>

## Overview

<b>Scene: Remote Operational Support Engineer monitors assets in Monitor</b><br>
<br>
•	Operational support navigates to Sedimentation summary dashboard<br>
•   Operational support filters on alert that Sedimentation Tank is dirty<br>
•   Operational support navigates to Tank instance dashboard opens first SR to have the debris removed<br>
•   Operational support navigates to Pump summary dashboard<br>
•   Operational support sees high anomalies on vibration on a Pump 005 of 100s of pumps at scale.<br>
•   Operational support reviews asset history and service recently done to replace the seals to address vibration.<br>
•   Operational support reviews Anomaly function and alert thresholds.<br>
•   Operational support opens Service request to look at vibration x - Pump 005.<br>
<br>
<b>Scene: Asset Analyst trains models with Maximo Visual Inspection and searches for model in DTX</b><br>
<br>
•	In MVI – Create sedimentation tank model<br>
•	In DTX - Browse the catalog and purchase and purchase the sedimentation tank model<br>
•   In Monitor - Shows the anomaly model configured in Asset Monitor<br>
•   In MVI & DTX – Browse the Browse the DTX catalog to discover models for sedimentation tanks.  
•   In MVI, show UX to validate the imported model. To show MVI Edge, please refer to this [link](https://techzone.ibm.com/collection/aiappsibm-maximo-visual-inspection-edge). <br>
<br>
<b>(Under Construction)Scene: Asset Manager sets up assets using resources from Digital Twin Exchange & Manage</b><br>
<br>
•	In DTX - Browse the catalog and purchase a job plan for centrifugal pump<br>
•   In Manage - shows how a purchased job plan and spare parts can be imported for Pump MFG.<br>
<br>
<b>Scene: Technician performs inspection and repair using Asset Manager, Safety and Assist</b><br>
<br>
•	Manage  Mobile App - Technician executes the WO in Mobile and after finding after finding bad o-ring, fixes it, adds failure code, comments, and completes the WO<br>
•   Assist Mobile App - Seek AI Assistant for Guidance<br>
•   Assist Mobile App(Collaborate) - Confirm plan with remote expert tech assistance<br>
•   Parts Identifier - Find the exact part needed using AI<br>
•   Worker Safety - Automated notification of safety incident with hazard area identified<br>
<br>
<b>(Under Construction)Scene: Safety Officer ensure safety during asset operations and maintenance using Safety</b><br>
<br>
•	In Safety – Examine hotspots on Safety dashboard for high risk locations for monitored safety issues<br>
<br>
<b>Scene: Reliability Engineer views asset performance in Health and Predict to plan asset maintenance and investment</b><br>
<br>
•	Health - Reliability engineer views the assets in the grid view, briefly discuss page features, shows pumps only with private saved view<br>
•   Health - Reliability engineer views work queue "Failing before PM"<br>
•   Health/Predict - Reliability engineer selects a PMPDEVICE XXX that is also under performing and is predicted to fail before the next scheduled PM<br>
•   Health/Predict - Reliability engineerreviews asset detail page and asset timeline.<br>
•   Health/Predict - Reliability engineer reviews options to take at the top of the screen.<br>
<br>

## Demo Flow

![img](/img/mas_8.6/demo_flow.png){:style="height:400px;width:800px"}

---

**Updated: 2022-02-26**

---