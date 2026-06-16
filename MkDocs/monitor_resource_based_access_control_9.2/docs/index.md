# Welcome to Resource-Based Access Control in Maximo Monitor 9.2

!!! info
    This section covers **Gateway Restrictions**, a new feature in Maximo Application Suite 9.2 that extends resource-based access control to include gateways.

## What's New in 9.2

Maximo Application Suite 9.2 introduces support for **Gateway Restrictions**, allowing administrators to control which gateways users can access based on gateway type names and gateway device IDs.

### Gateway Restrictions

Gateway restrictions enable you to:

* **Limit gateway visibility** to authorized gateway types only
* **Filter gateways by type name** using exact match or pattern matching
* **Enforce security requirements** for gateway access across Monitor applications
* **Support role-based gateway management** for different teams

## Relationship to 9.1 Features

Gateway restrictions complement the existing resource-based access control features introduced in Maximo Monitor 9.1:

* **9.1 Resources**: Organizations, Sites, Systems, Locations, Assets, Device Types, Devices
* **9.2 Addition**: Gateways

For information about resource-based access control for other resource types (Organizations, Sites, Systems, Locations, Assets, Device Types, Devices), see [Resource-Based Access Control in Maximo Monitor 9.1](../../monitor_resource_based_access_control_9.1/).

## Gateway Data Restrictions

### Setup Applications

Gateway data restrictions can be added to the following Setup application:

* `MONITOR_SETUP_GATEWAYS`

!!! note
    Gateway restrictions are applied through the Setup application. The system filters gateways based on the `gatewayTypeName` or `gatewayDeviceId` fields. For detailed query patterns and examples, see the [Gateway Restrictions](gateway_restrictions.md#supported-query-patterns) exercise.

## What You Will Learn

In this guide, we will cover:

* How to apply gateway restrictions to Security Groups
* How to use different query patterns for gateway filtering
* How to test and verify gateway restrictions are working correctly
* Understanding gateway type name filtering

!!! note
    Estimated time to complete gateway restriction setup and testing: **10–15 minutes**

---