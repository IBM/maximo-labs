# Pre-Requisite Instructions

Here are the pre-requisites for this Maximo Data Ingestion hands-on lab.

!!! attention
    This lab requires Maximo Monitor 9.2 or later.</br>
    MAS application entitlement must be `Limited` or higher.

# All Exercises

All exercises require that you have:

1. A computer with a Chrome, Firefox, or Safari browser and internet connectivity.

2. User access to a Maximo Application Suite environment with permissions to:
   - Access Maximo Monitor
   - Access the Data Ingestion workflow
   - View and edit device types
   - Administrator access to Maximo Application Suite, if required for configuration tasks

3. An IBM ID. If you do not have an IBM ID, you can get one [here](https://www.ibm.com/account/reg/signup?){target=_blank}:
   - Click `Login to MY IBM`
   - Click `Create an IBM ID`

4. Test your access to the Maximo Application Suite environment.

# Environment Setup

Ensure your Maximo Monitor environment has:

1. **Configured Device Types**: At least one device type available in Monitor
2. **Registered Devices**: Devices associated with the device type
3. **Data Ingestion Access**: Access to **Setup → Data Ingestion** or **Setup → Device Types → Edit → Data Ingestion**
4. **Storage Configuration**: Storage configured for file ingestion, such as Persistent Volume (PV) or Cloud Object Storage (COS/S3)

# Verification Steps

Before proceeding with the exercises:

1. Log in to Maximo Application Suite
2. Navigate to Maximo Monitor
3. Verify that you can access **Setup → Data Ingestion**
4. Confirm that you can access **Setup → Device Types**
5. Check that at least one device type is available for CSV ingestion

!!! tip
    If you encounter access issues, contact your Maximo administrator to verify your user permissions, entitlements, and storage configuration.

---

**Ready to begin?** Proceed to [Exercise 1: Navigate Data Ingestion](upload_csv_files.md)