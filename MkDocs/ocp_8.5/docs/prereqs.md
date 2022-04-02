# Pre-Requisite Instructions

Here are the prerequisites for the Maximo Application Suite Deployment Labs.   All Exercises require that you have:

*  A remote virtual server instance (preferrably Ubuntu Linux) as a working environment.

*  An OpenShift Cluster on IBM Cloud.

*  Maximo Application Suite license and installer file.

*  [Visual Studio Code](https://code.visualstudio.com/) running locally on your laptop with
 [Microsoft's Remote SSH](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-ssh)  extension.

* An IBM ID.  If you don't have an IBM ID you can get one [here](https://www.ibm.com/account/reg/signup?). Click 
`Login to MY IBM` button and then click `Create an IBM ID` link

## Working Environment Virtual Server Instance

As part of best practice, provision an Ubuntu Linux Virtual Server Instance (VSI) on the IBM Cloud as your remote working environment.

## Assistance with IBM Cloud Credits

Business Partners with IBM Cloud account or that have Cloud Credit can use 
[Virtual Server for Classic](https://cloud.ibm.com/gen1/infrastructure/provision/vs)

Tech Zone (for IBMers only) can use
[Collection: IBM Virtual Server Instance (Classic)](https://techzone.ibm.com/collection/base-images)

### Install General Purpose Utilities

After you acquire the Virtual Server Instance, install the following general purpose tools and utilities:

```shell
sudo apt-get install -y vim gettext iputils-ping mlocate git curl openssl zip unzip jq openjdk-8-jdk nodejs npm
```

```shell
sudo updatedb && sudo apt-get clean all -y
```

### Install Command Line Interfaces

Install CLIs for IBM Cloud CLI, Helm and Openshift.  Open and terminal window and type the following commands.

1\. IBM Cloud CLI

```shell
curl -sL https://ibm.biz/idt-installer | bash
```

2\. Helm Command line Tool

```shell
curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 && chmod 700 get_helm.sh && bash ./get_helm.sh
```
   
3\. OpenShift Command line Tool

```shell
curl -sLo /tmp/oc.tar.gz https://mirror.openshift.com/pub/openshift-v4/x86_64/clients/oc/4.6/linux/oc.tar.gz && sudo tar xzvf /tmp/oc.tar.gz -C /usr/local/bin/ && rm -rf /tmp/oc.tar.gz
```

### Validate Install CLIs

Validate the installed utilities: Open and terminal window and type the following commands.

1\.  IBM Cloud CLI

```shell
ibmcloud --help
```

2\.  Helm CLI

```shell
helm version -c
```

3\.  Kubernetes CLI

```shell
kubectl version --client=true
```

4\.  OpenShift CLI

```shell
oc version --client
```

5\.  Docker CLI

```shell
docker --help
```

## OpenShift Cluster

Business Partners with IBM Cloud account or through Cloud credit can contact their IBM sales representative for cloud credit if you do not have IBM Cloud account of your own. 

1\.  Acquire the following cluster as a baseline to start [OpenShift Classic](https://www.ibm.com/cloud/openshift)[Red Hat OpenShift on IBM Cloud](https://cloud.ibm.com/kubernetes/catalog/create?platformType=openshift)

!!! tip
    ⏰ Worker nodes can be easily scaled later, when needed.

<table>
  <tr>
    <th>Select your setup</th>
    <td>Manual</td>
  </tr>
  <tr>
    <th>Orchestration service</th>
    <td>Select 4.6.44 (subject to change)</td>
  </tr>
  <tr>
    <th>OCP entitlement</th>
    <td>Apply my Cloud Pak OCP entitlement to this worker pool</td>
  </tr>
  <tr>
    <th>Infrastructure</th>
    <td>Classic</td>
  </tr>
  <tr>
    <th>Location</th>
    <td>Select your Geography and Metro according to your location. <br>Select Availability Single zone</td>
  </tr>
  <tr>
    <th>Worker pool</th>
    <td>Select Change flavor. Select worker pool flavor: <br>b3c.16x64 Virtual - shared</td>
  </tr>
  <tr>
    <th>Select Worker nodes per zone</th>
    <td>5</td>
  </tr>
  <tr>
    <th>Integrations</th>
    <td>Disable</td>
  </tr>
</table>

2\.  Click `Create`

!!! note
    ⏰ IBM Cloud cluster provisioning may take 45 minutes to an hour.

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
    <td>16 CPU x 64 GB</td>
  </tr>
  <tr>
    <th>NFS Size</th>
    <td>2 TB</td>
  </tr>
  <tr>
    <th>OpenShift Version</th>
    <td>4.6 (subject to change)</td>
  </tr>
</table>

!!! note
    ⏰ Tech Zone cluster provisioning may take 45 minutes to an hour.

### Get ready to begin

!!! tip
    Use VS Code with the Remote SSH extension to log in to your Virtual Server Instance.
 
**You're all set to begin!**

!!! info

    Should you require video assistance, follow author's videos via [Technology Zone Resource](https://techzone.ibm.com/collection/62178ab9bb51540018a245e6).
