# Objectives
In this Exercise you will learn how to:

* Stop and re-deploy the Managed Gateway
* View the incoming data in Monitor dashboards

---
*Before you begin:*  
This Exercise requires that you have:

1. completed the pre-requisites required for [All Exercises](prereqs.md) and for Exercise 4
2. completed the previous exercises
3. verified the simulator is running as described in [exercise 1](setup_simulator.md){target=_blank}

---

## Re-Deploy the Managed Gateway

Go to where the current Managed Gateway docker container is running.</br>
Use `Ctrl-p & Ctrl-q` to get back to the prompt.</br>
Use the `docker ps` command to view the running docker containers.</br>
Locate the name of the running Managed Gateway container, here it is `fe25aa5216ad`.</br>
Use the `docker kill <name>` command to stop the docker container.
![Stop and remove container](img/deploy_verify_11.png)</br></br>


Navigate back to your Managed Gateway and press the `View deployment instructions`. </br>
Click on the docker command to copy it to the clipboard:
![Deployment Guide](img/deploy_verify_12.png)</br></br>

Get back to the prompt and then paste the docker command line from the clipboard.</br>
Click enter to execute it, and you should see something similar to the following:
![Start new container](img/deploy_verify_13x.png)</br></br>

!!! tip
	You can see that you successfully have connections to both the simulated Lenze i550 VFD's on ports: 10502 and 20502.</br>


## View data in Monitor Dashboards

Navigate to Monitor:
![Navigate to Monitor](img/deploy_verify_14.png)</br></br>

Select the `Device types` tab and search for your device type.</br>
Select the `XX_Lenze_i550_01` device and then the `Metrics Dashboard`:
![Metrics Dashboard for 01](img/deploy_verify_15.png)</br></br>

!!! tip
    This has been running for a while. 😉

!!! note "New in MAS 9.0"
    When adding an OT device to a Managed Gateway, Maximo Monitor automatically add all the relevant metrics, as well as creating the Metrics Dashboard with all the metrics.

Now select the `XX_Lenze_i550_02` device and see you have only received a few data points</br>
in the `Metrics Dashboard`:
![Metrics Dashboard for 02](img/deploy_verify_16.png)</br></br>

When running for a while, it could look something like this. Click on `Setup`:
![Metrics Dashboard for 02 - updated](img/deploy_verify_17.png)</br></br>

!!! tip
    You don't need to wait until you see this beautiful line card before continueing. 🤗


Locate the `Control Card Temperature` in the `Data` tab and change the view to `Last 24 hours`:
![Control Card Temperature graph](img/deploy_verify_18.png)</br></br>

Now select the `Data table` tab to view the latest data in the database table:
![Control Card Temperature data](img/deploy_verify_19.png)</br></br>

Finally click on the `Metrics` tab to view the selections you made when adding this device to the Managed Gateway:
![Metrics definition for 02](img/deploy_verify_20.png)</br></br>

!!! note "New in MAS 9.0"
    The definition of Metrics has moved to a separate tab.</br>
	In the `Overview` tab you'll find the definition of Dimensions as well as other information.


You could now potentially create a dashboard like this 😎:
![Potential Dashboard](img/monitor_metrics_1.png)</br></br>

---
Congratulations you have successfully re-deployed and viewed data from both VFD's in the Monitor dashboard. This concludes this lab.</br></br>
