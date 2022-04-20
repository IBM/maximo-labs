# Pre-Requisite Instructions

Here are the prerequisites for the Maximo Application Suite Deployment Labs.   All Exercises require that you have:

*  An OpenShift instance on IBM Cloud (Classic).

*  A Linux working environment (preferrably Ubuntu).

*  Maximo Application Suite app point license and installation file.

*  [Visual Studio Code](https://code.visualstudio.com/) running locally on your laptop with [Microsoft's Remote Development extension pack](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.vscode-remote-extensionpack) and [Kubernetes](https://marketplace.visualstudio.com/items?itemName=ms-kubernetes-tools.vscode-kubernetes-tools) extension.

* An IBM ID.  If you don't have an IBM ID you can get one [here](https://www.ibm.com/account/reg/signup?). Click `Login to MY IBM` button and then click `Create an IBM ID` link

## OpenShift Cluster: Cloud Credit or paid account

Business Partners with IBM Cloud account or through Cloud credit can contact their IBM sales representative for cloud credit if you do not have IBM Cloud account of your own. 

1\.  Acquire the following cluster as a baseline to start [OpenShift Classic](https://www.ibm.com/cloud/openshift)[Red Hat OpenShift on IBM Cloud](https://cloud.ibm.com/kubernetes/catalog/create?platformType=openshift)

!!! note

    The following hardware specs are just the baseline and recommendation for development. The worker nodes are easily scalable on IBM Cloud.

!!! tip

    Right-click on the image and open in a new tab to zoom in.

<table>
  <tr>
    <th>Select your setup</th>
    <td>Manual</td>
  </tr>
  <tr>
    <th>Infrastructure</th>
    <td>Classic</td>
  </tr>
  <tr>
    <th>Location</th>
    <td>Select geography according to your location. Select Availability Single zone</td>
  </tr>
  <tr>
    <th>Worker pool</th>
    <td>Select Change flavor. Select worker pool flavor: b3c.16x64x300 Virtual - shared. Start with 5 worker nodes.</td>
  </tr>
  <tr>
    <th>Orchestration service</th>
    <td>Select 4.6.x</td>
  </tr>
  <tr>
    <th>OCP entitlement</th>
    <td>Apply my Cloud Pak OCP entitlement to this worker pool</td>
  </tr>
  <tr>
    <th>Integrations</th>
    <td>Disable</td>
  </tr>
</table>
![img](/img/ocp_8.6/ibmcloud-mas.png)

!!! note
    ⏰ IBM Cloud cluster provisioning may take 45 minutes to an hour.

## OpenShift Cluster: IBM Tecnology Zone (practice/demo/PoC)

IBMers and Business Partners can can also use the Tech Zone.  [Collection: Custom ROKS & VMware requests: IBM RedHat Openshift Kubernetes Service (ROKS)](https://techzone.ibm.com/collection/custom-roks-vmware-requests)

<table>
  <tr>
    <th>Name</th>
    <td>IBM RedHat Openshift Kubernetes Service (ROKS)</td>
  </tr>
  <tr>
    <th>Purpose</th>
    <td>Practice / Self-Education</td>
  </tr>
  <tr>
    <th>Preferred Geography</th>
    <td>Select your Geography</td>
  </tr>
  <tr>
    <th>Worker Node Count</th>
    <td>8</td>
  </tr>
  <tr>
    <th>Worker Node Flavor</th>
    <td>16 CPU x 64 GB x 300GB disk</td>
  </tr>
  <tr>
    <th>NFS Size</th>
    <td>None</td>
  </tr>
  <tr>
    <th>OpenShift Version</th>
    <td>4.6 (subject to change)</td>
  </tr>
</table>
![img](/img/ocp_8.6/techzone-mas.png)

!!! note

    ⏰ Tech Zone cluster provisioning may take 45 minutes to an hour.

## Working Environment (Linux)

As a best practice, set up an Ubuntu Linux Virtual Server Instance (VSI) on the IBM Cloud as your remote working environment. Alternatively, you can use the guide to provision a remote container with a Linux environment.

### Working (Linux) Environment

With IBM Cloud account or Cloud Credit, IBM customers and Business Partnrs can purchase [Virtual Server for Classic](https://cloud.ibm.com/gen1/infrastructure/provision/vs) as a more permanent solution. 

IBM's Tech Zone temporarily makes available virtual server instances for education/demo/PoCs for IBMers and Business Partners. Acquire an instance here: [Collection: IBM Virtual Server Instance (Classic)](https://techzone.ibm.com/collection/base-images)

### 1. Remote Container in OpenShift as a working environment (ROCT)

If you don't have a Linux virtual machine, you can use the author's GitHub guide to provision and setup a remote OCP container terminal with pre-configured CLIs (no need to install any utilities). First, follow this guide, and then come back to **Get Ready to Begin** (see below). Guide: [https://github.com/aroute/roct](https://github.com/aroute/roct)

!!! note

    Select one of two options for your working environment: VSI or ROCT.

### 2. Install General Purpose Linux Utilities on VSI

Install the following general-purpose tools and utilities after purchasing or acquiring the virtual server instance:

```shell
ssh root@[vsi_ip_address]
```
```shell
apt-get update -y && apt-get upgrade -y && apt-get install -y vim gettext iputils-ping mlocate git curl openssl zip unzip jq openjdk-8-jdk nodejs npm && updatedb && apt-get clean all -y
```

### Install Command Line Interface utilities for Kubernetes

Install CLIs for IBM Cloud CLI and Openshift.  Open terminal window and type the following commands.

1\. IBM Cloud CLI

```shell
curl -sL https://ibm.biz/idt-installer | bash
```

2\. OpenShift Command line Tool

```shell
curl -sLo /tmp/oc.tar.gz https://mirror.openshift.com/pub/openshift-v4/x86_64/clients/oc/4.6/linux/oc.tar.gz && sudo tar xzvf /tmp/oc.tar.gz -C /usr/local/bin/ && rm -rf /tmp/oc.tar.gz
```

### Validate CLIs

Validate the installed utilities: Open terminal window and type the following commands.

`ibmcloud --help`, `kubectl version --client=true`, `oc version --client`

Use VS Code's [Remote SSH extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-ssh) to connect to ssh into your virtual server instance.

### Get ready to begin
 
**You're all set to begin!**

Step 1: Provision an OpenShift cluster.

Step 2: Provision a Linux environment (VSI or Remote Container).

Step 3: Start following this guide.

!!! info

    TBA: If you need video assistance, go to Technology Zone Resource and watch the author's [videos.](https://techzone.ibm.com/collection/).
