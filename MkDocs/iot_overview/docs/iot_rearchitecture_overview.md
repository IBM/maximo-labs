# Maximo Monitor IoTP Re-Architecture Overview (9.2)

## Overview

IoTP 9.1 consists of more than 20 components, with most of them designed to support standalone IoT functionality. Only a small subset of these components is integrated with Monitor.

One of the key challenges in the current architecture is that many IoTP components consume significant system resources, including CPU and memory.

To address this, the 9.2 architecture has been restructured to make IoTP an optional component. Only the components required for Monitor functionality are retained, reducing the overall resource footprint and simplifying deployment.

## Key Changes in 9.2

### IoTP as an Optional Component

In 9.2, IoTP has been made an optional component.

If a customer does not use MQTT-enabled devices, IoTP is not installed as part of the Monitor deployment.

Device event records can instead be ingested through the new CSV File FTP Data Ingestion feature introduced in 9.2.

### Component Architecture

The updated architecture and component design for Monitor & IoT 9.2 includes only the components required to support Monitor functionality.

The retained IoT components include:

* mfgx (msproxy)
* mbgx
* Authentication components

All other non-essential IoTP components have been removed from the deployment footprint.

### Database Schema Changes

IoTP 9.1 maintained a dedicated IoTP database schema. In 9.2, this separate schema has been eliminated.

The required IoTP tables and columns have been migrated into the Monitor database schema.

### New Authentication Flow

A new repository, **maximo-iot-monitor-auth**, has been created under the wiotp workspace.

This repository provides additional APIs and services for:

* Gateway creation
* Device creation
* MQTT connection authentication

These services are consumed by the IoTP Auth Client and the msproxy authenticator during MQTT device authentication.

Following successful implementation of the new authentication flow, the next phase will focus on removing legacy dependencies such as **auth-store** and **auth-data-store**.

### Monitor Integration Changes

In Monitor 9.1, integrations with IoTP were used to create gateways, devices, and API keys whenever these entities were created through the Monitor UI.

To support both architectures, a new configuration flag has been introduced to control the invocation of IoTP APIs from Monitor:

* Disabled for Monitor & IoT 9.2
* Enabled for Monitor & IoT 9.1

The Monitor backend APIs have been updated to use this flag and bypass IoTP integration service calls when running in a 9.2 environment.

All required configuration and operational data for Monitor 9.2 is now stored directly within the Monitor database schema.

### Upgrade Version

For upgrades from versions prior to 9.2, existing gateway, device, and API key data is migrated from the IoTP database schema to the Monitor database schema as part of the upgrade process.

## Benefits of the 9.2 Architecture

* Reduced resource consumption by eliminating unnecessary IoTP components.
* Simplified deployment and maintenance.
* Optional IoTP installation based on customer requirements.
* Consolidated data model within the Monitor database schema.
* Reduced dependency on legacy IoTP services and repositories.
* Improved alignment between Monitor and IoT functionality.

---
