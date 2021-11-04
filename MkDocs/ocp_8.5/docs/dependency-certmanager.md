# Objectives
In this exercise you will learn how to:

*  Setup Cert Manager.

### Cert Manager

In this exercise, you will learn how to setup Jetstack's opensource community based [cert-manager](https://cert-manager.io/) which is a dependency of MAS for the maintenance of X.509 certificates. Setting up your own domain name using DNS with public certificates, is beyond the scope of this guide (contact the author if you need general guidelines). In this tutorial, you will be setting up MAS with the default Ingress certificate of the IBM ROKS cluster.

!!! note

    ⏰ Wait time <5 minutes.

1\. Create a new project.

```shell
oc new-project cert-manager
```

2\. Install cert-manager using a one-line command.

```shell
oc apply -f https://github.com/jetstack/cert-manager/releases/download/v1.2.0/cert-manager.yaml
```

<br>

## References
cert-manager  [URL](https://www.ibm.com/docs/en/mas85/8.5.0?topic=installation-system-requirements#cert-manager)
