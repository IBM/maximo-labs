# Objectives
In this Exercise you will learn how to upgrade MAS to the latest version.

It is not possible to use the MAS CLI docker to either update nor upgrade the MAS installation that is provided through TechZone. After a lot of tinkering I managed to find a more complex method that works - at least from MAS 9.0.0 to 9.0.2, as this exercise is build upon</br>

---
*Before you begin:*  
This Exercise requires that you have:

1. completed the pre-requisites required for [all exercises](prereqs.md)
2. completed the previous exercises

---

Login to MAS with the new MAS Admin account using the link to the MAS Home page:</br>
![MAS Login](img/mas_upgrade_00.png)</br></br>

Click on `About` in the upper right hand corner:</br>
![Select About](img/mas_upgrade_01.png)</br></br>

In this case it was a MAS 9.0.0:</br>
![About](img/mas_upgrade_02.png)</br></br>

Now we need to figure out what MAS 9.0 OpenShift catalog was used and if a newer one is available.</br>
First open a terminal and run the MAS CLI docker container `docker run -ti --rm --pull always quay.io/ibmmas/cli`:</br>
![MAS CLI](img/mas_upgrade_03.png)</br></br>

Login to the OpenShift cluster using your kubeadmin account and click on `Copy login command`:</br>
![OCP Login Command](img/mas_upgrade_04.png)</br></br>

Click on `Display Token` and copy the `oc login` command in its entirety:</br>
![OCP Login Command](img/mas_upgrade_05.png)</br></br>

Run the command in the MAS CLI docker:</br>
![MAS CLI](img/mas_upgrade_06.png)</br></br>

Now the MAS CLI docker is authenticated against your OCP cluster. Execute `mas update` and enter `yes` in step 1.</br>
Notice the Maximo Operator Catalog that has been used - in this case `v9-240625-amd64` which is MAS 9.0.0.</br>
Also notice that two newer versions are available (end of August), where 9.0.2 is the newest one:</br>
![MAS Update](img/mas_upgrade_07.png)</br></br>

Press `Enter` to select the default value, i.e. 1.</br>
Step 5) Dependency Update Chacks will be performed. You will need the `Installed Catalog` and the `Updated Catalog` values later.</br>
DO NOT PROCEED FROM HERE - enter `n` and `Enter` to escape from the `mas update` execution.</br>
![MAS Update](img/mas_upgrade_08.png)</br></br>

Go to your OCP and select `Pipelines`. If you are not seing the `mas-masdevops-deploy` pipeline, then select `All Projects` and search for it.</br>
Open the `mas-masdevops-deploy` pipeline and click on the `YAML` tab:</br>
![OCP Pipelines](img/mas_upgrade_09.png)</br></br>

Scroll down until you find the `Installed Catalog` default value for the Maximo operator catalog version:</br>
![MAS DevOps Deploy YAML](img/mas_upgrade_10.png)</br></br>

Now replace the default value to the `Updated Catalog` value from the `mas update` command and click `Save`:</br>
![MAS DevOps Deploy YAML](img/mas_upgrade_11.png)</br></br>

Now the YAML is updated. Click on the pipelines in the bread crumps:</br>
![MAS DevOps Deploy YAML](img/mas_upgrade_12.png)</br></br>

Select the `PipelieRuns`tab:</br>
![MAS DevOps PipelineRuns](img/mas_upgrade_13.png)</br></br>

You need to rerun the pipeline in order to upgrade to the version you selected:</br>
![MAS DevOps PipelineRuns](img/mas_upgrade_14.png)</br></br>

Now you see the original Succeeded pipeline and the rerun initiated one. Click on the Task status:</br>
![MAS DevOps PipelineRuns](img/mas_upgrade_15.png)</br></br>

You will see the execution of the pipeline has started. After a short while you get to the `install-mas` part.</br> 
Don't be scared when you notice `FAILED - RETRYING ....` messages, they will occure several times:</br>
![MAS DevOps PipelineRuns Logs](img/mas_upgrade_16.png)</br></br>

After quite a while all the steps in the pipeline will have rerunned. It will take almost as long as when you instatiated the</br> 
TechZone MAS 9.0 Certified Base image in the first place. In this case MAS 9.0 Core + Manage</br>
![MAS DevOps PipelineRuns Final](img/mas_upgrade_17.png)</br></br>

Login to MAS and check the `About` information. The MAS Core is upgraded to 9.0.2:</br>
![MAS About](img/mas_upgrade_18.png)</br></br>

And MAS Manage as well:</br>
![MAS About](img/mas_upgrade_19.png)</br></br>


!!! tip "Tip"
    You can now install the various Maximo Application Suite applications by following the [MAS Devops Ansible Collection](https://ibm-mas.github.io/ansible-devops/){target=_blank}</br> 
    and they will also be on the newest version.</br>


---
Congratulations you have successfully instantiated and upgraded a MAS Techzone Certified Base Image and prepared it for use.</br>
