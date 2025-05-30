# Objectives
In this Exercise you will learn how to:

* Reserve an instance of a MAS Techzone Certified Base Image

---
*Before you begin:*  
This Exercise requires that you have:

1. completed the pre-requisites required for [all exercises](prereqs.md)

---

Login to [IBM Technology Zone](https://techzone.ibm.com/){target=_blank} (aka TechZone) with your IBMid. 

!!! note "Remember"
    Remember that TechZone is only available for IBM Business Partner and IBM'ers with an IBMid.

Search for `TechZone Certified Base Images` and you will find this page:</br>

![TechZone](img/instantiate_01.png)</br></br>

Select the `Pre-Installed Software` tab.</br>
Scroll down untill you find the Maximo Application Suite images.</br>
At this point in time (May 30 2025) these two exists for version 9.0.x:</br>

![MAS Images](img/instantiate_02.png)</br></br>

Click on `OCP-V on IBM Cloud environment` in order to instantiate one of these. The `MAS V2 Core` image was used in this lab as that takes substantial shorter time to deploy. Click on `Reserve a environment`:

![Reservation Now](img/instantiate_03.png)</br></br>

To understand the durations for the four different purposes, click on `Reservation Duration Policy`:</br>

![Reservation Duration Policy](img/instantiate_04.png)</br></br>

Demo and Pilot purposes requires an open opportunity in IBM Sales Cloud. Education and Test only require a purpose description:</br>

![Reservation Duration Policy](img/instantiate_05.png)</br></br>

In this case `Education` was selected, so a purpose description is needed and the geography has to be selected. Optionally the Name can be changed as well:</br>

![Reservation For Education](img/instantiate_06.png)</br></br>

Agree to IBM T&C and click on Submit: </br>

![Reservation Cluster Details](img/instantiate_07.png)</br></br>

You will be greeted with a Thank you. Click on `My reservations`:</br>

![Create Reservation](img/instantiate_08.png)</br></br>

You might see the initial status is `Scheduled` in the TecZone `My reservations` page:</br>

![Reservation Scheduled](img/instantiate_09.png)</br></br>

After a short while it will change to `Provisioning`:

![Reservation Provisioning](img/instantiate_09-2.png)</br></br>

After some time it will change to `Ready`: </br>

![Reservation Ready](img/instantiate_10.png)</br></br>

In this case it only took approx. 1.5 hours to instatiate a `MAS V2 Core` image: </br>

![Reservation Provisioning Emails](img/instantiate_11.png)</br></br>


Now you have an OpenShift Cluster where MAS Core is installed. </br>
Click on the reservation and you will find the link to the OCP cluster as well as the credentials needed to login to it: </br>

![Reservation OpenShift Login Details](img/instantiate_12.png)</br></br>

Click on the link to open the IBM Cloud environment. Select `kube:admin`:</br>

![OpenShift Login](img/instantiate_13.png)</br></br>

Enter the credentials from the reservation page and click on `Log in`: </br>

![OpenShift Login](img/instantiate_14.png)</br></br>

Navigate to the `Pipelines` tab and you should see the `mas-devops-deploy` pipeline succeeded: </br>

![OpenShift Pipelines](img/instantiate_15.png)</br></br>


!!! tip
    In case the pipeline did not succeed, try to rerun the PipelineRun. If that also fails then open the reservation and report the problem to TechZone Support:</br></br>
    ![TechZone Support](img/techzone_support_01.png)




---
Congratulations you have successfully instantiated a MAS Techzone Certified Base Image.</br>
