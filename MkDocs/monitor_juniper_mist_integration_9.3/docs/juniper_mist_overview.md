<!-- # Objectives

In this Exercise you will learn about Juniper Mist, the purpose of integrating it with IBM Maximo Monitor, and the architectural components that process real-time Wi-Fi connectivity events. -->

<!-- --- -->

<!-- *Before you begin:*  
This Exercise requires that you have:

1. Completed the pre-requisites required for [all labs](prereqs.md) -->

<!-- --- -->

# Overview about Juniper Mist

**Juniper Mist** is a cloud-native, AI-driven networking and location intelligence platform that provides visibility into wireless and wired network infrastructure, connected devices, and location-aware services.

**IBM Maximo Monitor 9.2.4 and 9.3 FC** provides native integration with Juniper Mist to leverage Wi-Fi connectivity and location data for real-time occupancy and presence analytics.

The integration connects IBM Maximo Monitor with the Juniper Mist cloud platform through its APIs and real-time event interfaces, enabling data to be collected, processed, and presented through Monitor dashboards.

!!! note "Screenshot Placeholder: Juniper Mist Overview & Integration"
    <!-- Add screenshot/graphic of Juniper Mist & Maximo Monitor Integration -->

<!-- --- -->

## Purpose of Using Juniper Mist in MAS Monitor

- **Workplace Strategy & Activity**  
  IBM Global Real Estate (GRE) and enterprise workplace teams use the integration to understand workplace activity across sites, buildings, floors, and business units.

- **Space Optimization & Capacity Planning**  
  Supports facility operations, space right-sizing, and capacity planning based on actual Wi-Fi presence.

- **Real-Time Insights**  
  Transforms live connectivity events from Juniper Mist into aggregated workplace metrics viewed in Maximo Monitor dashboards.

- **Business Unit Breakdown**  
  Resolves user information to respective Business Units (BUs) through configurable mappings or lookup APIs.

<!-- ---

## Integration Architecture

The integration between IBM Maximo Monitor and Juniper Mist is composed of the following key layers:

1. **MIST Cloud Integration Layer**  
   Integrates with Juniper MIST APIs and WebSocket to retrieve site hierarchy, configuration, occupancy data, presence data, and real-time events.

2. **Configuration & Subscription Layer**  
   Provides Monitor UI capabilities for configuring MIST connectivity, business-unit mappings, and site-level subscriptions. Subscriptions are managed at the Site, Building, and Floor level and are ultimately resolved to floor-level event subscriptions.

3. **Synchronization Layer**  
   Periodically synchronizes the MIST site hierarchy and configuration into the Monitor database. This establishes the required Site, Building, and Floor relationships before event processing begins.

4. **Real-Time Event Ingestion Layer**  
   Maintains WebSocket connections with MIST for subscribed sites, receives real-time user events, and calculates occupancy and presence count data. Incoming events are validated and transformed into the Monitor canonical event format.

5. **Event Processing & Messaging Layer**  
   Normalized MIST events are published to Monitor Kafka topics, providing an asynchronous communication mechanism between the WebSocket listener and downstream processing services.

6. **Business & Aggregation Layer**  
   Dedicated aggregation services consume the incoming events, associate them with the appropriate business units and locations, and calculate the occupancy and presence information required by Monitor.

7. **Data Persistence & Analytics Layer**  
   Events consumed from Kafka and processed for occupancy and presence are persisted in the Monitor database. Processed data is exposed through Maximo Monitor dashboards, Swagger APIs, and calculated metrics.

--- -->
