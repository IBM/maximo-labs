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
Locate the CONTAINER ID of the running Managed Gateway container (look for `edgedatacollector`) - here it is `fd0e37d3ddb5`.</br>
Use the `docker kill <CONTAINER ID>` command to stop the docker container.
![Stop and remove container](img/deploy_dashboard_01.png)</br></br>


Navigate back to your Managed Gateway in Monitor and press the `View deployment instructions`. </br>
Click on the docker command to copy it to the clipboard:
![Deployment Guide](img/deploy_dashboard_02.png)</br></br>

Get back to the terminal and then paste the docker command line from the clipboard.</br>
Click enter to execute it, and you should see something similar to the following:
![Start new container](img/deploy_dashboard_03.png)</br>

!!! tip
	You can see that you successfully have connections to both the simulated Lenze i550 VFD's on ports: 10502 and 20502.</br>


## View data in Monitor Dashboards

Navigate to the `Device types view` in the Monitor Dashboard section:
![Navigate to Monitor](img/deploy_dashboard_04.png)</br></br>

Filter on your credentials and open to see all your VFD devices.</br>
Select the `XX_Lenze_i550_01` device and then click on `Create dashboard`:
![Dashboard for 01](img/deploy_dashboard_05.png)</br></br>

Give your new dashboard a name and press `Configure dashboard`:</br>
![Configure dashboard](img/deploy_dashboard_06.png)</br></br>

You will now see an empty dashboard configuration. Add a Time series line card by clicking on it:</br>
![Add Time series line card](img/deploy_dashboard_07.png)</br></br>

Locate the `Control Card Temperature` in the `Data item` dropdown and change the Time range to `Last 24 hours`.</br>
Give the card a title, like `Temperature [℃]` and drag the lower right corner to resize the card to full width.</br>
Once that is in place, then Add another Time series line card:</br>
![Control Card Temperature graph](img/deploy_dashboard_08.png)</br></br>

Configure the second Time series line card according to the screen shot below and press `Save and close`:
![Voltage graph](img/deploy_dashboard_09.png)</br></br>

You have now created a simple dashboard to view some of the data for `XX_Lenze_i550_01`.</br>
Select the second device:</br>
![XX_Lenze_i550_01](img/deploy_dashboard_10.png)</br></br>

Note that the dashboard is configured on the Device Type level, hence will also be used for the `XX_Lenze_i550_02` device</br> 
- but obviously with some other data:</br>
![XX_Lenze_i550_02](img/deploy_dashboard_11.png)</br></br>

You could now potentially create a dashboard like this 😎:</br>
![Potential Dashboard](img/monitor_metrics_1.png)</br>

!!! tip
    The above dashboard is also using an Image card and two additional Value/KPI cards. Please do experiment and have fun 🤗

---
Congratulations you have successfully re-deployed and viewed data from both VFD's in a Monitor dashboard. This concludes this lab.</br></br>
