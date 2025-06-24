# Objectives
In this Exercise you will learn how to create the Managed Gateway in Monitor and add the new device you've added to the Device library.

---
*Before you begin:*  
This Exercise requires that you have:

1. completed the pre-requisites required for [all labs](prereqs.md)
2. completed the previous exercises

---

#### Add a Managed Gateway

Login to MAS and navigate to Monitor:
![MAS Monitor](img/create_gateway_01.png)</br></br>

Expand Setup in the left menu and select Gateways:
![Create Gateway](img/create_gateway_02.png)</br>

!!! note "New in MAS 9.1"
    Monitor no longer have a main home page. All interaction with Monitor is initiated from the Monitor section in the left menu</br>

</br>
Select `Add gateway`:
![Create Gateway](img/create_gateway_03.png)</br></br>

Define the gateway ID `XX_MGT_GW_01` and the gateway Type `XX_MGT_GW`.</br>

!!! tip
    XX in the gateway ID and Type should be your initials in case other people are following this lab in the same Maximo Application Suite environment.</br>

Make sure the gateway Configuration is Managed and click `Save`:
![Create Gateway](img/create_gateway_04.png)</br></br>

!!! note "New in MAS 9.0"
    The Managed Gateway is a new type of gateway introduced in MAS Monitor 9.0.</br>
    It is an integrated flow in Monitor, which removes/replaces the tedious and error prone manual process of defining an Edge Data Collector Integration in prior versions.</br>

You will now see your new Managed Gateway, including a `Managed` tag in both the list of Gateways as well as in the gateway definition:
![Create Gateway](img/create_gateway_05.png)</br>

!!! note
    Credentials are automatically "baked into" the docker image for the Managed Gateway.</br>
    This means that the credentials will not be presented to you, as with the other gateway configuration types.</br>

</br>

#### Add your new device to the Managed Gateway

In the Managed Gateway click on `Add device`:</br>
![Add device](img/create_gateway_06.png)</br></br>

Since this is a Managed Gateway the `Use device library` is automatically selected, as it is only possible to use devices from the Device library.</br>
Just click on Continue 🤗</br>
![Add device](img/create_gateway_07.png)</br></br>

Search for Siemens in the Manufacturer list:</br>
![Add device](img/create_gateway_08.png)</br></br>

Then search for S7 devices in the long list of Siemens devices - select you newly added device under `S7 OPC-UA Server`, and click `Next`:</br>
![Add device](img/create_gateway_09.png)</br></br>

Add the OPC UA Server IP Address and Port, and click `Next`:</br>
![Add device](img/create_gateway_10.png)</br></br>

Define the Device type and Device ID (using your initials instead of XX), and click `Next`:</br>
![Add device](img/create_gateway_11.png)</br></br>

Set the Data frequency to 30000 ms (30 seconds) and select the following 7 data tags to be used as metrics in Monitor. Once done click `Save`:</br>
![Add device](img/create_gateway_12.png)</br></br>

You will now see your new added device being a part of your new Managed gateway:</br>
![Add device](img/create_gateway_13.png)</br></br>



---
Congratulations you have successfully created the Managed Gateway in Monitor and added an instance of the newly added device in the Device library.</br>
