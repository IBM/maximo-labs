# Objectives
In this exercise you will learn how to:

*  Set up Maximo Application Suite Core
*  Upload self-signed certificate to MAS from Firefox

## Maximo Application Suite Core

1\. Download the Installer from Passport Advantage.

Unzip mas-core installer.

```shell
tar xvf mas-installer-8.6.0.tgz && cd ibm-mas
```

2\. Set Environment Variables

Export needed variables. The `LICENSING_ID` is equal to `LICENSEID` discovered earlier via the Licenseservice. The `ENTITLEMENT_KEY` is equal to the key identified earlier via [Container Software Library](https://myibm.ibm.com/products-services/containerlibrary)

```shell
export ENTITLEMENT_KEY=xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
```
```shell
export LICENSING_ID=xxxxxxxxxxxx
```

3\. Install Maximo Application Suite

Install MAS core replacing `MyIngressSubDomain` with your OpenShift's ingress subdomain. The `masdemo` is your instance name. Locate your ingress subdomain:

```shell
oc get Ingress.config cluster -o jsonpath='{.spec.domain} {"\n"}'
```

```shell
LICENSING_ID=xxxxxxxxxxxx bash install-mas.sh -i masdemo -d MyIngressSubDomain --accept-license
```

!!! note

    ⏰ Wait time 15-20 minutes. Wait until you are provided application URLs with `superusername` and `superuserpassword` 

```console
https://admin.MyIngressSubDomain
Username: xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
Password: xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
https://admin.MyIngressSubDomaind/initialsetup
```

## Self-signed certificate acceptance warnings in Firefox/Chrome browsers

!!! tip

    The following tips will help you access self-signed URLs on Firefox or Chrome browser.

1\.  Using Firefox browser, accept the self-signed risk and login `https://admin.MyIngressSubDomaind/initialsetup`. 

2\. On Chrome browser, type `thisisunsafe` anywhere on the page to move past the exception (note that this is a commonly known solution).

3\. Your browser will present a self-signed acceptance warning the first time you access the `https://admin.MyIngressSubDomaind/initialsetup` URL. 

4\. Access the API URL to accept its self-signed certificate as well: `https://api.MyIngressSubDomaind/initialsetup`

5\. Hit the browser's back button to go back to the `https://admin.MyIngressSubDomaind/initialsetup` and proceed forward with the next steps of Suite setup.
