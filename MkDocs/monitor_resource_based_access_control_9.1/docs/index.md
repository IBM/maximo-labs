# Welcome to Resource-Based Access Control in Maximo Monitor 9.1

!!! info
    This section introduces **Resource-Based Access Control**, a powerful data restriction feature in Maximo Monitor version 9.1 that determines which data a user can see based on rules defined for specific resource types.

Instead of granting access to all available data, resource-based access control ensures that users see only the subset of resources that they are permitted to access.

In Maximo Application Suite, resource-based access control is enforced at the application level by using the Maximo Application Suite administration security group data restriction framework. This approach supports fine-grained data visibility and allows broader access in other applications, such as Manage.
</br>

### Key Benefits of Resource-Based Access Control

Enterprise environments often include large volumes of data across assets, locations, systems, and devices. Not all users can see or interact with all data.

Resource-based access control helps you:

* **Limit data visibility** to authorized resources only
* **Enforce security requirements** consistently across Monitor UI applications
* **Support different access scopes** across MAS applications
* **Reduce the risk** of unauthorized data exposure

!!! example
    A user might have access to many assets in Maximo Manage, but in Maximo Monitor, the user sees only the assets relevant to their role or responsibility.

### Relationship to Role-Based Permissions

Resource-based access control complements role-based access control, rather than replacing it.

* **Role-based permissions** determine what actions that a user can perform (for example, read or update)
* **Resource-based access control** determines which data the user can see

Both models work together to provide secure and flexible access control across Monitor applications.

### Resources Controlled by RBAC

Resource-based access control applies to common Monitor resource types, including:

* **Assets**
* **Locations**
* **Systems**
* **Organizations**
* **Sites**
* **Device types**
* **Devices**

    
!!! warning "Gateway Restrictions Not Supported in 9.1"
    Gateway restrictions are **not supported** in Maximo Monitor 9.1. Gateways cannot be filtered using data restrictions.
    
    **Gateway restrictions are supported in Maximo Application Suite 9.2.** For information about Gateway restrictions in 9.2, see [Resource-Based Access Control in Maximo Monitor 9.2](../../monitor_resource_based_access_control_9.2/).

### Data Restrictions

#### Dashboard Applications

Data restrictions can be added to the following Dashboard apps:

* `MONITOR_DB_ASSETS`
* `MONITOR_DB_LOCATIONS`
* `MONITOR_DB_SYSTEMS`
* `MONITOR_DB_ORGANIZATIONS`
* `MONITOR_DB_SITES`
* `MONITOR_DB_DEVICE_TYPES`

#### Setup Applications

Data restrictions can be added to the following Setup apps:

* `MONITOR_SETUP_ASSETS`
* `MONITOR_SETUP_LOCATIONS`
* `MONITOR_SETUP_SYSTEMS`
* `MONITOR_SETUP_ORGANIZATIONS`
* `MONITOR_SETUP_SITES`
* `MONITOR_SETUP_DEVICE_TYPES`

!!! warning "Applications Not Used for Data Restrictions"
    The following applications are **NOT used** for applying data restrictions in Maximo Monitor 9.1:
    
    **Dashboard Applications:**
    
    * `MONITOR_DB_HIERARCHY` - Hierarchy view automatically inherits restrictions from resource-specific applications
    * `MONITOR_DB_DEVICES` - Device access is controlled through `MONITOR_DB_DEVICE_TYPES` restrictions
    * `MONITOR_DB_PINS` - Pin Dashboard automatically inherits restrictions from resource-specific applications
    * `MONITOR_DB_FACILITIES` - Facilities restrictions are not supported
    
    **Setup Applications:**
    
    * `MONITOR_SETUP_HIERARCHY` - Hierarchy configuration inherits restrictions from resource-specific applications
    * `MONITOR_SETUP_DEVICES` - Device configuration is controlled through `MONITOR_SETUP_DEVICE_TYPES` restrictions
    * `MONITOR_SETUP_DEVICE_LIBRARY` - Device Library restrictions are not supported
    
    **Why these applications are not used:**
    
    - **Hierarchy applications**: The hierarchy view automatically filters resources based on the restrictions applied to individual resource types (organizations, sites, systems, locations, assets, device types). There is no need to apply separate hierarchy restrictions.
    - **Device applications**: Devices are filtered based on their device type. When you apply restrictions to `MONITOR_DB_DEVICE_TYPES` or `MONITOR_SETUP_DEVICE_TYPES`, the system automatically filters devices belonging to those device types. Individual device restrictions are not supported.
    - **Pin Dashboard application**: Pin Dashboard automatically filters pinned dashboards based on the underlying resource restrictions. When you apply restrictions to resource-specific applications (like `MONITOR_DB_LOCATIONS`, `MONITOR_DB_ASSETS`, `MONITOR_DB_DEVICE_TYPES`), the Pin Dashboard automatically shows only pins for resources the user has access to. There is no need to apply separate pin restrictions.

### What You Will Learn

In this guide, we will cover:

* How to create Security Groups with data restrictions
* How to configure resource-based restrictions for specific Monitor applications
* How to assign users to security groups with data restrictions
* How to test and verify data restrictions are working correctly
* Understanding the interaction between role-based and resource-based access control
</br>

!!! note
    Estimated time to complete all Resource-Based Access Control setup and testing steps: **1 hour**

---
