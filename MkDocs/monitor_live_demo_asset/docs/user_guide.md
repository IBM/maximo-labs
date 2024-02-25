# RPE User Guide
This user guide will describe how to use and operate the RP Engine controller (RPE) once an RPE have been deployed following the exercises of this lab, hence this user guide assumes that is the case.

Hardware requirements are located here: [Hardware pre-requisites](prereqs.md#Hardware)

You can use this user guide to:</br>
►	Understand the RPE measurements</br>
►	Understand the RPE SenseHAT LED output</br>
►	Operate the RPE using the SenseHAT joystick</br>
►	Use the RPE local dashboard</br>


## 1. Understand the RPE measurements
The three devices (CPU, OSC, and ENV) in your RPE asset will submit its measured data on a regular basis to Maximo Monitor. 

The last exercise in this lab ended with a screen shot of the data being delivered for the CPU device into the IoT Tool:</br>
![IoT RPE data](img/user_guide_01.png)
 
The properties are abbreviations of different measurements, which are explained here

The Central Processing Unit (CPU) Device:

| Metric | Unit       | Description                        |
|--------|------------|-------------------------------------|
| cl     | Percentage | CPU Load                            |
| ct     | C          | CPU Temperature                     |
| du     | Percentage | Disk Usage of the SD card in the Pi |
| mu     | Percentage | Memory Usage of the Pi              |


The Oscillator (OSC) device:

| Metric  | Unit       | Description            |
|---------|------------|------------------------|
| ov      | Volt       | Oscillator Voltage     |
| ot      | Celcius    | Oscillator Temperature |
| of      | MHz        | Oscillator Frequency   |


The Environment (ENV) device:

| Metric | Unit       | Description ç                                              |
|--------|------------|-----------------------------------------------------------|
| eh     | Percentage | Environment relativ Humidity measured by the SenseHat     |
| ep     | millibar   | Environment atmospheric Pressure measured by the SenseHat |
| et     | Celcius    | Environment Temperature measured by the SenseHat          |





## 2 Understand the RPE SenseHAT LED output



## 3 Operate the RPE using the SenseHAT joystick


## 4 Use the RPE local dashboard

