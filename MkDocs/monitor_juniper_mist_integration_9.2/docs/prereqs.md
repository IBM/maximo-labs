# Pre-Requisite Instructions

Here are the pre-requisites for this Maximo hands-on lab.

!!! attention
    This lab requires **Maximo Monitor 9.2.4 or 9.3 FC** or later.</br>
    MAS application entitlement must be `Limited` or higher.

# All Exercises

All Exercises require that you have:

1. A computer with a Chrome or Firefox browser and internet connectivity.

2. User access to a Maximo Application Suite environment that can configure Juniper Mist integration. This requires:
    - Your user must have access to Maximo Monitor with administrative/configuration permissions.

3. An IBM ID. If you don't have an IBM ID you can get one [here](https://www.ibm.com/account/reg/signup?){target=_blank}:
    - Click `Login to MY IBM` button
    - Click `Create an IBM ID` link

4. Test your access to the Maximo Application Suite environment.

5. Locations set up in **Maximo Manage** (`Organization → Site → System → Location`), as Juniper Mist sites, buildings, and floors must be assigned to Manage locations.

# Exercise Prerequisites

- You must have administrator access to your **Juniper Mist organization portal** (`https://manage.mist.com`).

- Obtain the following values from your Juniper Mist account:
    - **Mist Cloud URL** (e.g., `https://api.mist.com`)
    - **API Access Token / Secret**
    - **Organization ID**

- Verify outbound network connectivity from your Maximo Monitor cluster to the Juniper Mist REST API and WebSocket (`wss://`) endpoints.
