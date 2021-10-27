# Objectives
In this Exercise you will learn how to deploy Cert Manager as a dependent
component of MAS:

<br>

## Cert Manager

Jetstack's opensource community based [cert-manager](https://cert-manager.io/) is a dependency of MAS for the maintenance of X.509 certificates. Setting up your own domain name using DNS with public certificates, is beyond the scope of this guide (contact the author if you need general guidelines). In this tutorial, you will be setting up MAS with the default Ingress certificate of the IBM ROKS cluster.

<br>

⏰ Wait time <5 minutes.

### Install Cert Manager

Create a new project and install cert-manager using a one-line command.

```shell
oc new-project cert-manager
```
```shell
oc apply -f https://github.com/jetstack/cert-manager/releases/download/v1.2.0/cert-manager.yaml
```

<br>

---
<sub>Reference Cert Manager</sub><br>
<sub>https://www.ibm.com/docs/en/mas85/8.5.0?topic=installation-system-requirements#cert-manager</sub>
