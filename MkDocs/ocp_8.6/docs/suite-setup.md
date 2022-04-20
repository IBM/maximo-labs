# Objectives
In this exercise you will learn how to:

*  Configures dependencies of Maximo Application Suite Core.
*  Upload the AppPoint license file.
*  Validate Maximo Application Suite's installation by logging in to the Suite.
*  Create an administrator account for yourself.

## Maximo Application Suite Core

### MongoDB

1\. You will need the following to configure MongoDB.

2\. Port: `27017`

3\. Hosts/Hostnames:

```console
mas-mongo-ce-0.mas-mongo-ce-svc.mongo.svc
mas-mongo-ce-1.mas-mongo-ce-svc.mongo.svc
mas-mongo-ce-2.mas-mongo-ce-svc.mongo.svc
```

4\. Authentication Mechanism: `DEFAULT`

5\. Auth DB: `admin`

6\. Username: `admin`

7\. Run the following command to acquire the password.

```shell
MONGO_PASSWORD=$(oc get secret mas-mongo-ce-admin-password -n mongo -o jsonpath='{.data.password}' | base64 -d) ; echo $MONGO_PASSWORD
```

8\. Certificate is located in `mongo` Project / Workloads / Config Maps: `mas-mongo-ce-cert-map`

Alias: `mongoCA`

### Behavior Analytics Service

1\. You will need the following to configure BAS.

2\. URL: `https://event-api-service.ibm-bas.svc:8443`

3\. API key:

```shell
oc get secret bas-api-key -n ibm-bas --output="jsonpath={.data.apikey}" | base64 -d
```

4\. Certificates: There are two `tls.crt` certificates in `ibm-bas` Project / Workloads / Secret: `event-api-certs`.

5\. Copy and paste the first block of certificate text starting and ending with

```console
-----BEGIN CERTIFICATE-----
MIID5zCCAs+gAwIBAgIIMc8pv2BYX4EwDQYJKoZIhvcNAQELBQAwNjE0MDIGA1UE
...
...
-----END CERTIFICATE-----
```

6\. Type Alias: `basCA1`.

7\. Repeat the same for the second block of certificate using the alias of `basCA2`.

### Suite Licensing Service

1\. You will need the following to configure SLS.

2\. Suite Licensing Service URL:

```shell
oc get -n ibm-sls cm sls-suite-registration -o jsonpath='{.data.url}'
```

3\. Registration Key:

```shell
oc get -n ibm-sls cm sls-suite-registration -o jsonpath='{.data.registrationKey}'
```

4\. Certificate is located in `ibm-sls` Project / Workloads / Secret: `sls-cert-ca`

5\. Type alias: `slsCA`

!!! note

    ⏰ Wait for the validation to complete.


## License key

You will need the following to download the app points license file:

* Number of keys to generate: depends upon the type of environment and the number of connected users. You may generate 1 key for learning purposes.
* Host ID Type: Ethernet Address.
* Host ID: See SLS exercise.
* Hostname: sls.ibm-sls.svc
* Port: 27000

### Obtaining license keys with IBM License Key Center

[https://www.ibm.com/docs/en/common-licensing/8.1.6?topic=licensing-obtaining-license-keys-license-key-center](https://www.ibm.com/docs/en/common-licensing/8.1.6?topic=licensing-obtaining-license-keys-license-key-center)

### Log in to LKC

[https://www.ibm.com/support/pages/ibm-support-licensing-start-page](https://www.ibm.com/support/pages/ibm-support-licensing-start-page)

### Generate and download the license file

Using the provided information, fill out the license form and download the `license.dat` file. Upload the same file into the Upload license file section.

### Workspace

Identify a short enough word for yourself as a workspace ID. For example: `demo`. Click save.


### Validate

1\. Before you hit the Finish button, validate the inserted values by looking up the data in JSON format via an API call. Open a new browser tab and browse your URL with prefixes of `api` and `/about`. For example:

`https://api.cp4dtmp-aa-b3eda218bea755b53112afae5117841b-0000.us-south.containers.appdomain.cloud/about`

2\. Firefox browser will show you JSON output in a pretty format out-of-the-box. On Chrome browser, right-click to open Inspect Element and go to the Network tab. Reload the browser and click on About. Drop-down `status` and `conditions`. Validate the messages. For example:

```console
message: "MAS is ready to use", reason: "Ready",…}
message: "Ready", reason: "Ready", status: "True",…}
message: "BAS configuration was successfully verified",…}
message: "MAS Licensing API endpoint check succeeded",…}
```

3\. Click on Finish button of the Suite setup if all the conditions are `Ready`.

### Success!

You will be shown a success message with two URLs: Suite administration and Suite navigator. Copy and save both URLs for yourself. Access Suite administration. Log in with super user credentials.

![img](/img/ocp_8.6/suite-setup-success.png)

## 👏 Congratulations

You have completed the deployment of Maximo Application Suite core. 

![img](/img/ocp_8.6/suite-setup-login.png)

### Admin account

1\. Create an admin account for yourself with a 16 character password. Give yourself full authorized access to the app and all of its points.

2\. Log out of the super user credentials and log back in with the admin account you just created.

<br>


