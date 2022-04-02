# Objectives
In this exercise you will learn how to:

*  Set up Maximo Application Suite Core
*  Upload self-signed certificate to MAS from Firefox

## Maximo Application Suite Core

1\. Download the Installer from Passport Advantage.

Unzip mas-core installer.

```shell
gunzip -c mas-installer-8.5.0.tgz | tar zxvf -
cd ibm-mas
```

2\. Set Environment Variables

Export needed variables. The `LICENSING_ID` is equal to `LICENSEID` discovered earlier via the Licenseservice. The `ENTITLEMENT_KEY` is equal to the key identified earlier via [Container Software Library](https://myibm.ibm.com/products-services/containerlibrary)

```shell
export ENTITLEMENT_KEY=xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
export LICENSING_ID=xxxxxxxxxxxx
export TM_VERSION=1.1.1
```

!!! warning

    Do not apply `TM_VERSION` variable if you happen to be following this guide when deploying MAS 8.6.


3\. Install Maximo Application Suite

Install MAS core replacing `MyIngressSubDomain` with your ROKS's Ingress subdomain. The `masdemo` is your Instance name.

```shell
LICENSING_ID=xxxxxxxxxxxx bash install-mas.sh -i masdemo -d MyIngressSubDomain --accept-license
```

!!! note
    ⏰ Wait time 35-40 minutes. Wait until you are provided application URLs with `superusername` and `superuserpassword` 

```console
https://admin.MyIngressSubDomain
Username: xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
Password: xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
https://admin.MyIngressSubDomaind/initialsetup
```

4\.  Using Firefox browser, accept the self-signed risk and login `https://admin.MyIngressSubDomaind/initialsetup`.

## Self-signed certificate acceptance warnings in Firefox/Chrome browsers.

1\. Your browser will present a self-signed acceptance warning the first time you access the `https://admin.MyIngressSubDomaind/initialsetup` URL. 

2\. Access the API URL to accept its self-signed certificate as well: `https://api.MyIngressSubDomaind/initialsetup`

3\. Hit the browser's back button to go back to the `https://admin.MyIngressSubDomaind/initialsetup` and proceed forward with the next steps of Suite setup.
