# Objectives
In this exercise you will learn how to:

*  Set up Maximo Application Suite Core
*  Upload self-signed certificate to MAS from Firefox

## Maximo Application Suite Core

1\. Download the Installer

Unzip mas-core installer (downloaded via Passport Advantage).

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

## Upload self-signed certificate in Firefox/Chrome (Windows/MAC) to avoid browser warning.

TODO!!!  Instructions on how to manually upload self-signed certificate to Firefox browser.
