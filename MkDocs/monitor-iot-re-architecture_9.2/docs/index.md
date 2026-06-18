# Welcome to the Maximo Monitor 9.2 </br>IoTP API Key and Security Lab

!!! info
    This Maximo Monitor lab demonstrates how to manage API keys for secure device authentication and configure TLS connections for IoT devices.

## Overview

This lab covers essential security features in Maximo Monitor 9.2 for IoT Platform (IoTP) connectivity. You'll learn how to manage API keys for device authentication and configure various TLS security options to ensure secure communication between IoT devices and Maximo Monitor.

Security is a critical aspect of IoT deployments. This lab provides hands-on experience with two fundamental security mechanisms: API key management for authentication and TLS configuration for encrypted communication. By mastering these features, you'll be able to implement robust security practices for your IoT infrastructure.

## Lab Sections

### 1. Maximo Monitor IoTP API Key

API Keys in Maximo Monitor provide token-based authentication for IoT devices to securely send data to the platform.

#### What are IoTP API Keys?

API Keys are authentication tokens that enable secure device-to-platform communication. They serve as credentials that devices use to prove their identity when sending data to Maximo Monitor.

**Key Benefits:**

- **Secure Device Authentication**: Token-based authentication for IoT devices
- **Data Ingestion Control**: Manage which devices can send data to Monitor
- **Access Management**: Create, update, and revoke API keys as needed
- **Simplified Integration**: Easy-to-use authentication mechanism for device connectivity
- **Centralized Security**: Manage all device credentials from a single interface

#### Key Features

- Simple token-based authentication
- Easy key lifecycle management
- Secure credential generation
- Integration with device types
- Role-based access control
- Audit trail for key operations

#### What You'll Learn

In the API Key exercises, you will:

- **Generate API Key**: Create new API keys for device authentication and understand the key generation process
- **Edit/Update API Key**: Modify existing API key configurations and manage key properties
- **Delete API Key**: Remove API keys when no longer needed and understand security implications

**Practical Skills:**
- How to create API keys for different device types
- Best practices for API key management
- When to rotate or revoke API keys
- How API keys integrate with device authentication

### 2. Maximo Monitor IoTP Security

Configure secure TLS (Transport Layer Security) connections with multiple authentication options to protect data in transit between IoT devices and Maximo Monitor.

#### What is IoTP Security?

IoTP Security provides multiple layers of protection for device-to-platform communication using TLS encryption and various authentication methods. This ensures that data transmitted from IoT devices is encrypted and that only authorized devices can connect to the platform.

**Security Options:**

- **Token-Based Authentication**: Use API keys for device authentication
- **Certificate-Based Authentication**: Use client certificates for enhanced security
- **Combined Authentication**: Leverage both certificates and tokens for maximum security
- **Flexible Security Models**: Choose the authentication method that fits your security requirements

#### Key Features

- Multiple authentication methods
- TLS 1.2/1.3 encryption support
- Flexible security configurations
- Enhanced data protection
- Compliance with security standards
- Certificate management capabilities

#### What You'll Learn

In the IoTP Security exercises, you will:

- **TLS With Token**: Configure token-based TLS authentication
  - Understand how tokens work with TLS
  - Set up devices to use API keys over encrypted connections
  - Verify secure token-based communication

- **TLS With Client Certificate or Token**: Set up either certificate or token authentication
  - Learn when to use certificates vs tokens
  - Configure flexible authentication options
  - Implement fallback authentication mechanisms

- **TLS With Client Certificate and Token**: Implement dual authentication for maximum security
  - Combine certificate and token authentication
  - Understand the benefits of dual authentication
  - Configure the most secure connection method

**Practical Skills:**
- How to configure different TLS authentication methods
- When to use each authentication approach
- How to generate and manage client certificates
- Best practices for securing IoT device connections
- Troubleshooting TLS connection issues

## Prerequisites

Before starting this lab, ensure you have:

- Access to Maximo Monitor 9.2
- Administrator or appropriate security permissions
- Basic understanding of IoT device connectivity
- Familiarity with TLS/SSL concepts
- A device type configured in Monitor (for testing)
- Understanding of authentication and encryption principles

## Expected Outcomes

By the end of this lab, you will be able to:

- Generate and manage API keys for IoT device authentication
- Understand the role of API keys in device-to-platform security
- Configure TLS security with token-based authentication
- Set up certificate-based authentication for devices
- Implement combined certificate and token authentication
- Choose the appropriate security method for your use case
- Understand the security implications of each authentication method
- Apply security best practices to your IoT deployments

!!! note
    Expected time needed to complete the lab: **1 hour**

## Getting Started

Proceed to the [Prerequisites](prereqs.md) section to ensure your environment is ready, then begin with the [API Key exercises](create_api_key.md) or [TLS Security configuration](tls_with_token.md) based on your needs.

---

**Updated: 2026-06-18**

---