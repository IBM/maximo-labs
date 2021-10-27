# Objectives
In this Exercise you will learn how to deploy MongoDB as a first dependent
component of Maximo Application Suite (MAS):

<br>

## OpenShift Login

Log in to your OCP cluster via the command line.

```console
oc login ...
```

<br>

## Dependencies

### Install MongoDB

In this part of the MongoDB installation, you will be downloading an opensource public repository of IBM's MongoDB. You will generate the self-signed certificate; set a 16 character password, and deploy a specific version using Block storage of IBM Cloud. After the deployment, you will be validating the installation.

**1. Set up fetch utility**
```shell
sudo npm install -g github-files-fetcher
```

**2. Download the repo folder**
```shell
fetcher --url="https://github.com/ibm-watson-iot/iot-docs/tree/master/mongodb" .
```

**3. Grant execute permission**
```shell
cd mongodb && chmod -R +x * && cd certs
```

**4. Generate self-signed certificates**
```shell
./generateSelfSignedCert.sh
```

**5. Prepare variables. Create a password replacing xxxx**
```shell
export MONGO_PASSWORD=xxxxxxxxxxxx
export MONGO_NAMESPACE=mongo
export MONGO_VERSION=4.2.6
export MONGODB_STORAGE_CLASS=ibmc-block-gold
```

**6. Change directory**
```shell
cd ..
```

**7. Install MongoDB**
```shell
./install-mongo-ce.sh
```

⏰ Wait time 10-15 minutes.

<br>

#### Validate

**1. check status: 3 replicas**
```shell
oc get MongoDBCommunity -n mongo -o yaml
```
Ensure you see: `currentStatefulSetReplicas: 3`

**2. Validate URI**
```shell
oc get MongoDBCommunity -n mongo -o 'jsonpath={..status.mongoUri}'
```
Ensure you see the replicaset URI which looks like this: `mongodb://mas-mongo-ce-0.mas-mongo-ce-svc.mongo.svc.cluster.local:27017,mas-mongo-ce-1.mas-mongo-ce-svc.mongo.svc.cluster.local:27017,mas-mongo-ce-2.mas-mongo-ce-svc.mongo.svc.cluster.local:27017`

**3. From inside the MongoDB container**

Log in to the container.
```shell
oc exec -it mas-mongo-ce-0 --container mongod bash
```
Read the `conf` file to validate you see SCRAM-SHA-1
```shell
cat /data/automation-mongod.conf
```

**4. Access MongoDB shell**

Using the password set earlier with the self-signed SSL certs, run the following command to enter the MongoDB shell. Ensure you see `mas-mongo-ce:PRIMARY>`
```console
export MONGO_PASSWORD=xxxxxxxxxxxx
```
```console
mongo "mongodb://mas-mongo-ce-0.mas-mongo-ce-svc.mongo.svc.cluster.local:27017,mas-mongo-ce-1.mas-mongo-ce-svc.mongo.svc.cluster.local:27017,mas-mongo-ce-2.mas-mongo-ce-svc.mongo.svc.cluster.local:27017/?replicaSet=mas-mongo-ce" --username admin --password ${MONGO_PASSWORD} --authenticationDatabase admin  --ssl --sslAllowInvalidCertificates
```

**5. Exit out of the shell and the container**

```shell
exit
exit
```

<br>

### Collect MongoDB information for later use:
**Host**
```console
mas-mongo-ce-0.mas-mongo-ce-svc.mongo.svc
mas-mongo-ce-1.mas-mongo-ce-svc.mongo.svc
mas-mongo-ce-2.mas-mongo-ce-svc.mongo.svc
```
**Port**
```console
27017
```
**Certificate location**
```console
ConfigMap: mas-mongo-ce-cert-map
```

<br>

---

<sub>Reference MongoDB</sub><br>
<sub>https://github.com/ibm-watson-iot/iot-docs</sub>
