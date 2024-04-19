# Welcome to the </br>IBM Maximo Monitor Modbus Simulator Lab
This lab will describe how to install and setup a Modbus Simulater. 

The rationale behind creating this lab is:

- to provide an easy to use modbus simulator which can be used in other labs.
- to fill the gap of missing some OT data from an industrial device - without actually having one available.
- provide a multi-platform simulator, that can be used on Windows, MacOS and Linux.
- provide a simulator with dynamic OT data instead of a Windows based simulator that only provied fixed values (e.g. Unslave)
- can be used in many different custom demonstrations, hence why it is a separate lab.

## Objectives

After completing this lab, you will be able to either:</br></br>
►	Use a docker container. </br>
A black box solution with all defined:</br>
- easy to start and use</br>
- no need to install Node-RED</br>
- no possibility to change anything</br>
</br>
►	Install Node-RED somewhere and add a scripts.</br>
A white box solution:</br>
- takes a little longer to setup</br>
- is fully customisable</br>

## The Simulator
The modbus simulator is simulating 2 independant Lenze i550 Variable Frequency Drives</br>
delivering the following data points:

| Holding Register | Data point                            | Type      |
|:----------------:|:--------------------------------------|:----------|
| 2000             | AC Drive Status Word                  | Static    |
| 2001             | Frequency                             | Dynamic   |
| 2002             | Error Code                            | Static    |
| 2003             | Drive Status                          | Static    |
| 2004             | Motor Voltage                         | Dynamic   |
| 2005             | Motor Current                         | Dynamic   |
| 2006             | Not Used                              | Static    |
| 2007             | Not Used                              | Static    |
| 2008             | Not Used                              | Static    |
| 2009             | Control Card Temperature C            | Dynamic   |
| 2010             | DC Bus Voltage                        | Dynamic   |
| 2011             | Digital Input Status                  | Static    |
| 2012             | Motor Torque                          | Random    |
| 2101             | Frequency Command                     | Static    |

The two devices are using the Modbus TCP protocol using port 10502 and 20502.</br>
So you need to use the IP Address of the machine where the simulator is running combined with the port numbers, e.g.</br>
- 192.168.1.42:10502</br>
- 192.168.1.42:20502

!!! tip
    The dynamic and random values will change every 30 second.</br>
    The dynamic values are created using [Perlin Noise](https://en.wikipedia.org/wiki/Perlin_noise){target=_blank}</br>
    The standard port number for Modbus devices is 502, but I decided to use 10502 and 20502 so there would be two independant devices AND to make sure it would be supporting multiple platforms.


</br>
!!! note
    Expected time needed to run the complete lab: less than 30 minutes

---

**Updated: 2024-04-27**

---