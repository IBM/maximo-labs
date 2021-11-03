# Pre-Requisite Instructions

Here are the prerequisites for the Maximo Application Suite Deployment Labs.

# All Exercises

All Exercises require that you have:

1. A remote virtual server instance (preferrably Ubuntu Linux) as a working environment.

2. An OpenShift Cluster on IBM Cloud.

3. Maximo Application Suite license and installer file.

4. [Visual Studio Code](https://code.visualstudio.com/) running locally on your laptop with [Microsoft's Remote SSH](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-ssh) extension.

4.  An IBM ID.  If you don't have an IBM ID you can get one [here](https://www.ibm.com/account/reg/signup?):<br>
o Click `Login to MY IBM` button<br>
o Click `Create an IBM ID` link

<br>

## Working Environment (Virtual Server Instance)

As part of best practice, provision an Ubuntu Linux Virtual Server Instance (VSI) on the IBM Cloud as your remote working environment.

**For Business Partners with IBM Cloud account or through Cloud Credit**

[Virtual Server for Classic](https://cloud.ibm.com/gen1/infrastructure/provision/vs)

**Tech Zone (for IBMers only)**

[Collection: IBM Virtual Server Instance (Classic)](https://techzone.ibm.com/collection/base-images)

<br>

### General Purpose Utilities

1. After you acquire the instance, install the following general purpose tools and utilities:

```shell
sudo apt-get install -y vim gettext iputils-ping mlocate git curl openssl zip unzip jq openjdk-8-jdk nodejs npm
```
```shell
sudo updatedb && sudo apt-get clean all -y
```

<br>

### IBM Cloud and other CLIs

2. Install IBM Cloud CLI, and other needed tools:

**`ibmcloud`**
```shell
curl -sL https://ibm.biz/idt-installer | bash
```
**`helm`**
```shell
curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 && chmod 700 get_helm.sh && bash ./get_helm.sh
```
**`oc`**
```shell
curl -sLo /tmp/oc.tar.gz https://mirror.openshift.com/pub/openshift-v4/x86_64/clients/oc/4.6/linux/oc.tar.gz && sudo tar xzvf /tmp/oc.tar.gz -C /usr/local/bin/ && rm -rf /tmp/oc.tar.gz
```

<br>

### Validate

Validate the installed utilities:

```shell
ibmcloud --help
```
```shell
helm version -c
```
```shell
kubectl version --client=true
```
```shell
oc version --client
```
```shell
docker --help
```

<br>
<br>

## OpenShift Cluster

**For Business Partners with IBM Cloud account or through Cloud credit**

Contact your IBM sales representative for cloud credit if you do not have IBM Cloud account of your own. Acquire the following [OpenShift Classic](https://www.ibm.com/cloud/openshift) cluster:

[Red Hat OpenShift on IBM Cloud](https://cloud.ibm.com/kubernetes/catalog/create?platformType=openshift)

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

Click Create

⏰ IBM Cloud cluster provisioning may take 45 minutes to an hour.

**Tech Zone (for IBMers and Business Partners)**

[Collection: Custom ROKS & VMware requests: IBM RedHat Openshift Kubernetes Service (ROKS)](https://techzone.ibm.com/collection/custom-roks-v-mware-requests)

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

⏰ Tech Zone cluster provisioning may take 45 minutes to an hour.

### Get ready to begin

!!! tip

    Using VS Code with the Remote SSH extension, log in to your VSI and you're all set to begin!
