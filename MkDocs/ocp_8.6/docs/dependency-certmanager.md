# Objectives
In this exercise you will learn how to:

*  Setup Certificate Management.

### Certificate Management

In this exercise, you will learn how to setup Jetstack's opensource community based [cert-manager](https://cert-manager.io/) which is a dependency of MAS for the maintenance of X.509 certificates. 

!!! warning

    Setting up your own domain name using DNS with public certificates, is beyond the scope of this guide. In this tutorial, you will be setting up MAS with the self-signed certificate using default Ingress route of the IBM ROKS cluster.

!!! tip

    📨 If you have a sales opportunity and want to set up a PoC or MVP using a custom domain and a CA-signed certificate, please contact the author: aali@us.ibm.com

1\. Create a new project.

```shell
oc new-project cert-manager
```

2\. Install [cert-manager](https://www.ibm.com/docs/en/mas85/8.5.0?topic=installation-system-requirements#cert-manager) 
using a one-line command.

```shell
oc apply -f https://github.com/jetstack/cert-manager/releases/download/v1.2.0/cert-manager.yaml
```

!!! note

    ⏰ Wait time <5 minutes.

<br>

## References
cert-manager  [URL](https://www.ibm.com/docs/en/mas86/8.6.0?topic=installation-system-requirements#cert-manager)