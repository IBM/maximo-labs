# Objectives
In this exercise you will learn how to:

*  Set up DB2 Wareshouse for Maximo Manage and Health

## Database for Manage with Health

### Database Configuration

1\. Apply DB2 registry changes (originally [documented here](https://www.ibm.com/docs/en/maximo-manage/8.2.0?topic=deployment-configuring-db2-warehouse)).

```shell
cd mas-ocp-lab/
```
```shell
oc project zen
```

Replace `c-db2wh-xxxxxxxxxxxxx-db2u-0` with your deployment id retreived in the previous exercise.

```shell
oc get pods c-db2wh-1650206381239231-db2u-0
```
```shell
oc cp db2_manage_upd.sh c-db2wh-1649036346696995-db2u-0:/tmp/
```
```shell
oc rsh pod/c-db2wh-1649036346696995-db2u-0 su - db2inst1
```
```shell
cp /tmp/db2_manage_upd.sh .
```
```shell
chmod +x db2_manage_upd.sh
```
```shell
./db2_manage_upd.sh
```

!!! note

    ⏰ Wait 2-3 minutes. 

```shell
exit
```