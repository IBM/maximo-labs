# Objectives
This exercise will teach you how to set up Suite License Service (SLS), a dependent component of the Maximo Application Suite (MAS):

<br>

## Suite License Service (SLS)

**0. Git clone author's repository**

```shell
git clone https://github.com/aroute/mas85roks.git
```

**1. Operator Catalog and Service Binding Operator**

In order to deploy IBM's Suite License Service, you first need to activate IBM's Operator Catalog. In addition, you will set up a specific version of Red Hat's Service Binding Operator.

```shell
oc create -f catalog.yaml
```
```shell
installplan=$(oc get installplan -n openshift-operators | grep -i service-binding | awk '{print $1}'); echo "installplan: $installplan"
```
```shell
oc patch installplan ${installplan} -n openshift-operators --type merge --patch '{"spec":{"approved":true}}'
```

**2. Suite License Service Operator**

Interactively via OpenShift dashboard, search for and install IBM `Suite License Service` Operator from the Operator Hub with automatic renewal strategy. Note that the operator installs itself in `ibm-sls` project.

**3. Entitled Registry**

Locate your entitled registry key from IBM's Container Library and save it as variable below: [Container Software Library](https://myibm.ibm.com/products-services/containerlibrary).

```shell
oc project ibm-sls
```
```shell
export ENTITLEMENT_KEY=xxxxxxxxxxxxxxxxxxxxx
```

**4. MongoDB Secret**

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
oc create -f sls-mongo-credentials.yaml
```

**5. License Service Custom Resource**

Identify your ROKS' Ingress subdomain from the IBM Cloud dashboard. Edit `licenseservice.yaml` to insert the Ingress URL (line number 9).

Copy CA.pem from MongoDB's cert's directory.

Edit licenseservice.yaml file to insert the above mentioned two values. Ensure columns are aligned and the file is properly formatted. Create SLS CR.

```shell
oc create -f licenseservice.yaml
```

⏰ Wait time 10-15 minutes.

**6. License ID and Registration Key**

Wait and watch for the Licenseservice to come up. Identify your `LICENSEID` and `REGISTRATIONKEY`.

```shell
oc get -n ibm-sls licenseservice sls
```

Identify SLS URL.

```shell
oc get -n ibm-sls cm sls-suite-registration -o jsonpath='{.data.url}'
```

Download the SLS certificate.

```shell
oc get secret -n ibm-sls sls-cert-client -o jsonpath='{.data.ca\.crt}' | base64 -d -w 0 > ca.crt
```

TBA: [How to acquire MAS License File via License Key Center](https://www.ibm.com/support/pages/ibm-support-licensing-start-page)
