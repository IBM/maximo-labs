# Welcome to the Maximo Monitor 9.2 </br>CSV-Based Data Ingestion Lab

!!! info
    This Maximo Monitor lab demonstrates how to ingest device data by using CSV files in Monitor.

## Overview

CSV-based data ingestion in Maximo Monitor provides a simple alternative to real-time streaming protocols such as MQTT or HTTP. This lab shows how to upload CSV files, validate file content, track ingestion progress, manage storage behavior, and work with processed or failed files.

### Why Use CSV-Based Data Ingestion?

CSV-based ingestion is useful when organizations want to import time-series device data without setting up continuous streaming connections. It supports a low-barrier onboarding path for Asset Performance Management (APM) and Condition-Based Maintenance (CBM) scenarios.

With this approach, external systems can export device data in a standardized CSV format, and Monitor can ingest that data from supported storage locations such as persistent volume storage or cloud object storage.

## Data Ingestion Topics Covered

### 1. CSV File Upload

Upload CSV files into Monitor by using the **Data Ingestion** page or the **Device Type** configuration flow. This topic covers how to select the target device type and start the ingestion process.

**Key Features:**
- Upload CSV files from multiple entry points in Monitor
- Select the appropriate device type for ingestion
- Start the file ingestion workflow from the UI

### 2. Template Download and Validation

Download the built-in CSV template, prepare the file with the required structure, and understand how Monitor validates uploaded content before processing.

**Key Features:**
- Download the built-in CSV template
- Prepare CSV files with mandatory fields
- Understand file validation and data validation behavior

### 3. File Tracking and Management

Track uploaded files, review processing status, download processed or error files, manage storage behavior, configure retention days, and delete files when needed.

**Key Features:**
- Monitor file ingestion progress and status
- Download processed and failed output files
- Review storage usage and storage mode
- Configure file retention settings
- Delete uploaded CSV files

## Lab Exercises

In this lab, you will learn:

1. **Navigate Data Ingestion** - Access the CSV upload workflow in Monitor
2. **Download Built-in Template and Upload File** - Prepare and validate CSV files for ingestion
3. **Track Uploaded File Status** - Review file progress and ingestion history
4. **Download Processed and Error Files** - Retrieve output files based on processing results
5. **Review Storage Usage and Storage Mode** - Understand supported storage configurations
6. **Configure File Retention Days** - Manage how long uploaded files are retained
7. **Delete File** - Remove uploaded CSV files when needed

## Prerequisites

Before starting this lab, ensure you have:

- Access to Maximo Monitor 9.2
- A configured device type and devices in Monitor
- Access to the Data Ingestion workflow in Monitor
- Appropriate permissions in Maximo Application Suite

## Expected Outcomes

By the end of this lab, you will be able to:

- Upload CSV files for device data ingestion
- Prepare CSV files by using the built-in template
- Understand validation and ingestion results
- Track file processing status in Monitor
- Manage storage, retention, download, and deletion options for uploaded files

!!! note
    Expected time needed to complete the lab: **30 minutes**

## Getting Started

Proceed to the [Prerequisites](prereqs.md) section to verify your environment, then begin with [Exercise 1: Navigate Data Ingestion](upload_csv_files.md).

---

**Updated: 2026-06-18**

---