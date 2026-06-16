# Pre-Requisite Instructions

Here are the pre-requisites for working with **Gateway Restrictions** in Maximo Monitor 9.2.

!!! attention
    This lab requires **Maximo Monitor version 9.2 or later** and valid access to the **Monitor Setup and Security Modules**.
    Gateway restrictions are **only available in MAS 9.2 and later**. If you are using version 9.1 or earlier, gateway restrictions are not supported.

---

# All Exercises

All exercises in the Gateway Restrictions module require that you have:

1. A laptop or desktop with a modern browser
   – Recommended: **Google Chrome** or **Mozilla Firefox**

2. Access to a **Maximo Application Suite (MAS) 9.2** environment with:
   - User login credentials for MAS
   - **Administrator-level access** to the Monitor application

3. A working IBM ID
   – If you don't have one, create it [here](https://www.ibm.com/account/reg/signup?){target=_blank}
   – Steps:
     - Click `Login to MY IBM`
     - Then click `Create an IBM ID`

4. **Existing Gateways** in your Monitor environment:
    - Gateways with different gateway type names
    - These will be used to test gateway restriction functionality

5. **Security Group and User Management** knowledge:
   - For creating Security Groups, assigning users, and adding data restrictions, refer to the [9.1 lab exercises](../../monitor_resource_based_access_control_9.1/create_security_groups)
   - The 9.1 lab covers the foundational steps for:
     - Creating Security Groups
     - Creating and assigning users
     - Adding data restrictions to Security Groups

---

!!! tip
    Not all MAS users will have Admin access. Please confirm with your environment administrator before proceeding.
    If you are new to Resource-Based Access Control, we recommend completing the [9.1 lab](../../monitor_resource_based_access_control_9.1/) first to understand the fundamental concepts of Security Groups, Users, and Data Restrictions.

---

# Confirming Environment Access

Before starting, please verify that:

- You can log in to the MAS 9.2 environment
- You can access **Security** menus
- You are able to create or modify Security Groups and Users
- You can view and configure **Data Restrictions** in Security Groups
- You can access **Setup** > **Gateways** menu in Maximo Monitor
- You have existing gateways with different gateway type names to test with

---