# Exercise 2 - Technical

## Objectives

In this Exercise you will learn how to:

* Acquire Red Hat OpenShift cluster from IBM's Technology Zone.

### Infrastructure decision

This lab employs IBM Cloud-managed OpenShift (Classic version 4.10). The lab was created and validated by the author using IBM's [Tech Zone platform](https://techzone.ibm.com/my/reservations/create/60da20f935e6ac001f1c4086) (available to IBMers and Business Partners).


![infrastructure_decision](/img/ocp_8.9/infrastructure_decision.png)


### OpenShift instance via IBM's Tech Zone

1\. Reserve an instance of OpenShift 4.10 via IBM's Technology Zone - [ROKS](https://techzone.ibm.com/collection/custom-roks-vmware-requests).

| Name                | IBM RedHat Openshift Kubernetes Service (ROKS) |
| ------------------- | ---------------------------------------------- |
| Purpose             | Practice / Self-Education                      |
| Customer names(s)   | Leave blank                                    |
| Purpose description | PoC                                            |
| Preferred Geography | Select your nearest data center location       |
| Worker Node Count   | 5                                              |
| Worker Node Flavor  | b3c.16x64 300gb                                |
| NFS Size            | None                                           |
| OpenShift Version   | 4.10                                           |
| Notes               | Leave blank                                    |

2\. Extend your reservation for the next seven days.

!!! note

    IBM's Tech Zone offers OpenShift clusters for 10 days maximum. 