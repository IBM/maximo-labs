# Objectives
In this exercise you will learn how to:

*  Download, install and setup MongoDB.
*  Validate MongoDB is ready for use with Maximo Application Suite (MAS).
 
## Install MongoDB

In this exercise, you will learn how to deploy MongoDB as a first dependent component of the Maximo Application Suite (MAS): In this part of the MongoDB installation, you will be downloading an open source public repository of IBM's MongoDB.

You will generate the self-signed certificate, set a 16-character password, and deploy a specific version using Block storage of the IBM Cloud. After the deployment, you will be validating the installation.

1\. Log in to your OCP cluster via the command line.

```shell
oc login ...
```

2\. Open a Terminal Window and git clone.

```shell
git clone https://github.com/ibm-watson-iot/iot-docs.git
```

3\. Grant execute permission

```shell
cd iot-docs && cd mongodb && chmod -R +x * && cd certs
```

4\. Generate self-signed certificates.

```shell
./generateSelfSignedCert.sh
```

5\. Prepare variables. Create a password replacing xxxx

```shell
export MONGO_PASSWORD=xxxxxxxxxxxx
```
```shell
export MONGO_NAMESPACE=mongo
```
```shell
export MONGO_VERSION=4.2.6
```
```shell
export MONGODB_STORAGE_CLASS=ibmc-block-gold
```

6\. Change directory and install.

```shell
cd .. && ./install-mongo-ce.sh
```

!!! note

    ⏰ Wait time 15-20 minutes.

## Validate MongoDB Installation

![img](/img/ocp_8.6/mongodb-ocp.png)

1\. Open a Terminal Window and check status: 3 replicas.

```shell
oc get MongoDBCommunity -n mongo -o yaml
```

Ensure you see:
`currentStatefulSetReplicas: 3`

2\. Validate URI.

```shell
oc get MongoDBCommunity -n mongo -o 'jsonpath={..status.mongoUri}'
```

Ensure you see the replicaset URI which looks like this:
`mongodb://mas-mongo-ce-0.mas-mongo-ce-svc.mongo.svc.cluster.local:27017,mas-mongo-ce-1.mas-mongo-ce-svc.mongo.svc.cluster.local:27017,mas-mongo-ce-2.mas-mongo-ce-svc.mongo.svc.cluster.local:27017`

3\. From inside the MongoDB container.  Log in to the container.

```shell
oc exec -it mas-mongo-ce-0 --container mongod bash
```

4\. Read the `conf` file to validate you see `SCRAM-SHA-1`

```shell
cat /data/automation-mongod.conf
```

5\. Access MongoDB shell.  Using the password set earlier with the self-signed SSL certs, run the following command to enter the MongoDB shell. Ensure you see `mas-mongo-ce:PRIMARY>`

```shell
export MONGO_PASSWORD=xxxxxxxxxxxx
```
```shell
mongo "mongodb://mas-mongo-ce-0.mas-mongo-ce-svc.mongo.svc.cluster.local:27017,mas-mongo-ce-1.mas-mongo-ce-svc.mongo.svc.cluster.local:27017,mas-mongo-ce-2.mas-mongo-ce-svc.mongo.svc.cluster.local:27017/?replicaSet=mas-mongo-ce" --username admin --password ${MONGO_PASSWORD} --authenticationDatabase admin  --ssl --sslAllowInvalidCertificates
```

6\. Exit out of the shell and the container.

```shell
exit
exit
```

### MongoDB information for Later

1\. Host information.
`mas-mongo-ce-0.mas-mongo-ce-svc.mongo.svc`
`mas-mongo-ce-1.mas-mongo-ce-svc.mongo.svc`
`mas-mongo-ce-2.mas-mongo-ce-svc.mongo.svc`

2\. Port information.
`27017`

3\. Certificate location.
`ConfigMap: mas-mongo-ce-cert-map`

<br>

#### References
MongoDB  [URL](https://github.com/ibm-watson-iot/iot-docs)
