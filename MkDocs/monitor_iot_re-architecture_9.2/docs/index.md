# Welcome to the Maximo Monitor 9.2 </br></br>IoTP API Key and Security Lab

!!! info
    This Maximo Monitor lab demonstrates how to manage API keys for secure device authentication and configure TLS connections for IoT devices.

## Overview

This lab covers essential security features in Maximo Monitor 9.2 for IoT Platform (IoTP) connectivity. Also you'll learn how to manage API keys for device authentication.

Security is a critical aspect of IoT deployments. This lab provides hands-on experience with two fundamental security mechanisms: API key management for authentication and TLS configuration for encrypted communication. 

## Lab Sections

### 1. Maximo Monitor IoTP API Key

API Keys in Maximo Monitor provide token-based authentication for IoT devices to securely send data to the platform.

#### What are IoTP API Keys?

API Keys are authentication tokens that enable secure device-to-platform communication. They serve as credentials that devices use to prove their identity when sending data to Maximo Monitor.

**Key Benefits:**

- **Secure Device Authentication**: Token-based authentication for IoT devices
- **Access Management**: Create, update, and revoke API keys as needed

#### What You'll Learn

In the API Key exercises, you will:

- **Generate API Key**: Create new API keys for device authentication and understand the key generation process
- **Edit/Update API Key**: Modify existing API key configurations and manage key properties
- **Delete API Key**: Remove API keys when no longer needed and understand security implications

### 2. Maximo Monitor IoTP Security

Configure secure TLS (Transport Layer Security) connections with multiple authentication options to protect data in transit between IoT devices and Maximo Monitor.

#### What is IoTP Security?

IoTP Security provides multiple layers of protection for device-to-platform communication using TLS encryption and various authentication methods. This ensures that data transmitted from IoT devices is encrypted and that only authorized devices can connect to the platform.

#### What You'll Learn

In the IoTP Security exercises, you will:

- **TLS With Token**: Configure token-based TLS authentication

- **TLS With Client Certificate or Token**: Set up either certificate or token authentication

- **TLS With Client Certificate and Token**: Implement dual authentication for maximum security

## Prerequisites

Before starting this lab, ensure you have:

- Access to Maximo Monitor 9.2
- Basic understanding of IoT device connectivity
- A device type configured in Monitor (for testing)

## Getting Started

Proceed to the [Prerequisites](prereqs.md) section to ensure your environment is ready, then begin with the [API Key exercises](create_api_key.md) or [TLS Security configuration](tls_with_token.md) based on your needs.

---

**Updated: 2026-06-23**

---