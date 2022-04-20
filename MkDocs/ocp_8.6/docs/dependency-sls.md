# Objectives
In this exercise you will learn how to:

*  Install and setup Suite License Service (SLS).
*  Validate SLS is ready for use with Maximo Application Suite (MAS).

## Install Suite License Service (SLS)

In this exercise, you will learn how to deploy Suite License Service. You will set up SLS using OpenShift's Operator. You will create an API key and a host ID and record it as a reference for later.

1\. Git clone author's repository.

```shell
git clone https://github.com/aroute/mas-ocp-lab.git
```

2\. In order to deploy IBM's Suite License Service, you first need to activate IBM's Operator Catalog. In addition, you will set up a specific version of Red Hat's Service Binding Operator.

```shell
cd mas-ocp-lab && oc create -f catalog.yaml
```
```shell
installplan=$(oc get installplan -n openshift-operators | grep -i service-binding | awk '{print $1}'); echo "installplan: $installplan"
```
```shell
oc patch installplan ${installplan} -n openshift-operators --type merge --patch '{"spec":{"approved":true}}'
```

3\. Suite License Service Operator

Interactively via OpenShift dashboard, search for and install IBM `Suite License Service` Operator from the Operator Hub with automatic renewal strategy. 

!!! note

    Suite License Service Operator installs itself in `ibm-sls` project.


4\. Entitled Registry

Locate your entitled registry key from IBM's Container Library and save it as variable below: [Container Software Library](https://myibm.ibm.com/products-services/containerlibrary).

```shell
oc project ibm-sls
```
```shell
export ENTITLEMENT_KEY=xxxxxxxxxxxxxxxxxxxxx
```

5\. MongoDB Secret

Export previously created MongoDB password. Create IBM entitled registry and MongoDB secret.

```shell
export MONGO_PASSWORD=xxxxxxxxxxxx
```
```shell
chmod +x ibm-entitlement.sh
```
```shell
./ibm-entitlement.sh
```
```shell
envsubst < sls-mongo-credentials.yaml | oc create -f -
```

6\. License Service Custom Resource

- Using VS Code's File editor, open to edit `licenseservice.yaml` file.
- Comment out the domain name line (not needed).
- Copy CA.pem from MongoDB's cert's directory and insert the certificate
- Ensure columns are aligned for the certificate and the file is properly formatted. 
- Create SLS CR.

```shell
oc create -f licenseservice.yaml
```

!!! note

    ⏰ Wait time 10-15 minutes.

### Validate Suite License Service

1\. Wait and watch for the Licenseservice to come up. Identify your `LICENSEID` and `REGISTRATIONKEY`. Ignore the 'MissingConfiguration' message.

```shell
oc get -n ibm-sls licenseservice sls
```

![img](/img/ocp_8.6/sls-verify-01.png)