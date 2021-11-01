# Objectives
This exercise will teach you how to set up MAS Core:

<br>

## MAS Core

**1. Installer**

Unzip mas-core installer (downloaded via Passport Advantage).
```shell
gunzip -c mas-installer-8.5.0.tgz | tar zxvf -
cd ibm-mas
```

**2. Variables**

Export needed variables. The `LICENSING_ID` is equal to `LICENSEID` discovered earlier via the Licenseservice. The `ENTITLEMENT_KEY` is equal to the key identified earlier via [Container Software Library](https://myibm.ibm.com/products-services/containerlibrary)
```shell
export ENTITLEMENT_KEY=xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
export LICENSING_ID=xxxxxxxxxxxx
```

**3. Install**

Install MAS core replacing `MyIngressSubDomain` with your ROKS's Ingress subdomain. The `masdemo` is your Instance name.
```shell
LICENSING_ID=xxxxxxxxxxxx bash install-mas.sh -i masdemo -d MyIngressSubDomain --accept-license
```

⏰ Wait time 35-40 minutes.

Wait until you are provided application URLs with superusername and superuserpassword
```console
https://admin.MyIngressSubDomain
Username: xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
Password: xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
https://admin.MyIngressSubDomaind/initialsetup
```
Use `https://admin.MyIngressSubDomaind/initialsetup` to login.

TBA: Manually upload self-signed certificate to Firefox browser.
