# Objectives
In this exercise you will learn how to:

*  Install and setup Behavior Analytics Services (BAS).
*  Validate BAS is ready for use with Maximo Application Suite (MAS).

## Install Behavior Analytics Services (BAS)

In this exercise, you will learn how to deploy Behavior Analytics Services. You will set up BAS using OpenShift's Operator. You will create an API key and record it as a reference for later.


## Install BAS Operator

!!! note

    ⏰ Wait time 45-50 minutes.

1\. Create new Project. Go to OpenShift dashboard - Projects<sup>1</sup>. Click on Create Project button<sup>2</sup>. Type `ibm-bas` in the Name field<sup>3</sup>. Click Create button<sup>4</sup> to create a new project.

![img](/img/ocp_8.6/ScreenShot-bas01.png)

2\. From the Operators menu on the left-hand side, click on OperatorHub<sup>1</sup>.
Ensure you are in `ibm-bas` project<sup>2</sup>. In All Items search field, type
`behavior` to search for the operator<sup>3</sup>. Click on `Behavior Analytics Service` operator<sup>4</sup>. Click Install<sup>5</sup>. From the Install Operator screen - keeping everything default - click Install<sup>6</sup>.

![img](/img/ocp_8.6/ScreenShot-bas02.png)
<br><br>
![img](/img/ocp_8.6/ScreenShot-bas03.png)
<br><br>
![img](/img/ocp_8.6/ScreenShot-bas04.png)
<br><br>

!!! note

    ⏰ Wait approximately 5 minutes for the Operator and the Dashboard to provision.

## Set up Username/Password

1\. After the operator is installed, create username and passwords for the database
and grafana monitoring.

```shell
oc create secret generic database-credentials -n ibm-bas --from-literal=db_username=basuser --from-literal=db_password=passw0rd
```
```shell
oc create secret generic grafana-credentials -n ibm-bas --from-literal=grafana_username=basuser --from-literal=grafana_password=passw0rd
```

## Create Custom Resource

!!! note

    Ensure you are in `ibm-bas` project to create a CR for AnalyticsProxy deployment. Replace `ibmc-file-bronze` with `managed-nfs-storage` if you are using Tech Zone's cluster with NFS.

!!! tip

    It would be best to copy/paste the following block in your notepad file, adjust the storageclass if needed, and then execute.

```shell
oc project ibm-bas
```    
```yaml
cat <<EOF | oc create -f -
apiVersion: bas.ibm.com/v1
kind: AnalyticsProxy
metadata:
  name: analyticsproxy
spec:
  allowed_domains: "*"
  db_archive:
    frequency: '@monthly'
    retention_age: 6
    persistent_storage:
      storage_class: ibmc-file-bronze
      storage_size: 10G
  airgapped:
    enabled: 'false'
    backup_deletion_frequency: '@daily'
    backup_retention_period: 7
  event_scheduler_frequency: '@hourly'
  ibmproxyurl: 'https://iaps.ibm.com'
  image_pull_secret: bas-images-pull-secret
  postgres:
    storage_class: ibmc-block-bronze
    storage_size: 10G
  kafka:
    storage_class: ibmc-block-bronze
    storage_size: 5G
    zookeeper_storage_class: ibmc-block-bronze
    zookeeper_storage_size: 5G
  env_type: lite
EOF
```

!!! note

    ⏰ At this point in time, you must wait about 40 minutes. Monitor pods and Persistent Volumes as they are being created.

## Validate deployment

1\. After about 40 minutes, validate AnalyticsProxy deployment by going to
the Installed Operators<sup>1</sup>, Behavior Analytics Proxy operator, Analytics
Proxy Deployment<sup>2</sup>, status<sup>3</sup>.

![img](/img/ocp_8.6/ScreenShot-bas05.png)
<br><br>

## Generate API key

1\. Go back to the BAS Operator, click on Generate Key<sup>1</sup>. Keeping everything default, click Create<sup>2</sup>.

![img](/img/ocp_8.6/ScreenShot-bas06.png)
<br><br>
![img](/img/ocp_8.6/ScreenShot-bas07.png)
<br><br>

### BAS API key for Later

```shell
oc get secret bas-api-key -n ibm-bas --output="jsonpath={.data.apikey}" | base64 -d
```

<br>

#### References
BAS [URL](https://www.ibm.com/docs/en/mas86/8.6.0?topic=administering-configuring-suite#bas)

