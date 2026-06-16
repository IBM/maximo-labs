# Welcome to the Maximo Monitor 9.2 </br>Smart Alerts Lab

!!! info
    This Maximo Monitor lab demonstrates how to configure Smart Alerts for intelligent device monitoring.

## Overview

Smart Alerts in Maximo Monitor enable intelligent, condition-based alerting that reduces noise and focuses on meaningful patterns. This lab covers two fundamental alert types that help you detect critical conditions and data gaps in your IoT devices.

### What are Smart Alerts?

Smart Alerts are advanced monitoring capabilities that:

- **Detect Patterns**: Identify recurring conditions rather than one-off events
- **Reduce False Positives**: Filter out intermittent noise through configurable thresholds
- **Track Data Gaps**: Alert when devices stop sending data
- **Prevent Alert Fatigue**: Use cooldown periods to avoid duplicate notifications

## Alert Types Covered

### 1. AlertsByOccurrencesCount

Trigger alerts when a condition becomes true **N times within a time window T**. This frequency-based alert is ideal for:

- Detecting recurring metric threshold breaches
- Identifying intermittent sensor failures
- Monitoring repeated anomalies
- Converting noise into meaningful patterns

**Key Features:**
- Configurable occurrence thresholds (N)
- Sliding or tumbling time windows (T)
- Rising edge or continuous evaluation modes
- Cooldown periods to prevent alert spam

### 2. NoData Alerts

Trigger alerts when **no data arrives for a continuous duration D**. This time-gap alert detects:

- Device offline conditions
- Sensor heartbeat failures
- Connectivity outages
- Communication disruptions

**Key Features:**
- Duration-based detection (D)
- Cooldown management
- Monitoring of specific data item

## Lab Exercises

In this lab, you will learn:

1. **Configure NoData Alerts** - Set up alerts to detect when devices stop sending data
2. **Configure AlertsByOccurrencesCount** - Create frequency-based alerts for recurring conditions
3. **Create Alerts in Manage** - Integrate alerts with Maximo Manage

## Prerequisites

Before starting this lab, ensure you have:

- Access to Maximo Monitor 9.2
- A device type with active data streams
- Basic understanding of KPI functions
- Familiarity with Maximo Monitor UI

## Expected Outcomes

By the end of this lab, you will be able to:

- Understand the difference between occurrence-based and time-gap alerts
- Configure alert parameters (N, T, D, cooldown)
- Choose appropriate occurrence detection modes
- Create actionable alerts in Maximo Manage

!!! note
    Expected time needed to complete the lab: **30 minutes**

## Getting Started

Proceed to the [Prerequisites](prereqs.md) section to ensure your environment is ready, then begin with [Exercise 1: NoData Alerts](nodata_alerts.md).

---

**Updated: 2026-06-16**

---