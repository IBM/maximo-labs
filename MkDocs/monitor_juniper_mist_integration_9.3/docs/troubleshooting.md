# Objectives

In this Exercise you will learn how to troubleshoot and diagnose Juniper Mist integration issues using the Monitor UI, Health Check Swagger API, and pod-level logs.

---

*Before you begin:*  
This Exercise requires that you have:

1. Completed the pre-requisites required for [all labs](prereqs.md)
2. Access to Swagger API documentation and OpenShift/Kubernetes cluster logs (if performing pod-level diagnostics)

---

# Juniper Mist Integration Troubleshooting

If Juniper Mist data is not being received in IBM MAS Monitor, follow the troubleshooting steps below in sequence. Complete each step before proceeding to the next.

---

## Step 1: Verify Juniper Mist Connection Status in the Monitor UI

First, verify the Juniper Mist connection status in the IBM MAS Monitor UI:

1. Navigate to the **Juniper Mist Site Synchronization** page in the Monitor UI (`Setup → Integrations → Juniper Mist`).
2. At the top of the page, check the Juniper Mist connection status. The connection status can be one of the following:
    - **Connected to Juniper Mist**: The connection between IBM MAS Monitor and the configured Juniper Mist is established. However, data may still not be flowing from Juniper Mist. If the status is Connected but data is not being received, proceed to **Step 2**.
    - **Not Connected to Juniper Mist**: The connection to the configured Juniper Mist is unavailable. In this state, data will not be received from Juniper Mist. Proceed to **Step 2** to perform further health checks and identify the cause of the connection failure.

!!! note "Screenshot Placeholder: UI Connection Status Verification"
    <!-- Add screenshot showing connection status in Monitor UI -->

---

## Step 2: Verify Integration Health Using the Health Check API

If the Monitor UI shows `Connected to Juniper Mist`, but data is still not being received, perform a health check using the Health Check API:

1. Open the Monitor Health Check API through Swagger.
2. Execute the following endpoint:
   ```http
   GET https://<domain>/healthcheck/details
   ```
3. If the Juniper Mist integration status is **SUCCESS**, the integration is successfully connected. Proceed to verify the health status of the following three components:
    - `webSocketConnector`
    - `mistBuPresenceAggregator`
    - `mistBuOccupancyAggregator`
4. If the Juniper Mist integration status is **not SUCCESS**, review the `errorDetails` field in the response to identify the cause of the integration failure.

### Validating Components:

For each component, verify that:
- `status` is **SUCCESS**.
- `errorDetails` is **empty**.

If any of the three components shows a status such as **ERROR** or **FAILURE**, review the corresponding `errorDetails` to determine the root cause (connection, authentication, WebSocket connectivity, or configuration issue).

!!! note "Screenshot Placeholder: Swagger Health Check API Output"
    <!-- Add screenshot showing Swagger API execution and JSON response -->

---

## Step 3: Perform Pod-Level Checks

If the Health Check API returns **SUCCESS** for all three components but Juniper Mist data is still not being received, perform pod-level checks in the cluster. Review the status and logs of the following application pods:

!!! note
    If you want to check presence and occupancy data, the calculated metrics should be automatically created for each business unit at the floor, building, and site location. If the required calculated metrics are not available, the pods will not be able to persist the data.

### 3.1 Mist WebSocket Pod
Check the Mist WebSocket pod to verify that:
- The WebSocket connection to Juniper Mist is established and remains active.
- Events are being received from Juniper Mist.
- Review logs for WebSocket connection failures, disconnections, authentication issues, or incoming event errors:
  ```bash
  oc logs -l app=mist-websocket-connector -n <mas-monitor-namespace>
  ```

### 3.2 Occupancy Aggregator Pod
Check the Occupancy Aggregator pod to verify that:
- Occupancy events are being received and processed successfully.
- Review logs for occupancy event processing errors, Kafka communication issues, or database persistence failures:
  ```bash
  oc logs -l app=mist-bu-occupancy-aggregator -n <mas-monitor-namespace>
  ```

### 3.3 Presence Aggregator Pod
Check the Presence Aggregator pod to verify that:
- Presence events are being received and processed successfully.
- Review logs for presence event processing errors, Kafka communication issues, or processing failures:
  ```bash
  oc logs -l app=mist-bu-presence-aggregator -n <mas-monitor-namespace>
  ```

### 3.4 Core API Pod
Check the Core API pod for:
- Juniper Mist integration-related errors.
- API communication failures.
- Authentication or authorization errors.

### 3.5 Sync Scheduler Pod
Check the Sync Scheduler pod to verify that the synchronization scheduler is running successfully:
- Running without errors and connecting to Juniper Mist APIs.
- Fetching expected Juniper Mist data.
- Synchronizing sites, buildings, floors, and access points successfully.
- Calculated metrics are automatically created for floor, building, and site locations.

---
