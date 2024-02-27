# Welcome to the </br>IBM Maximo Monitor Live Demo Asset Lab
This lab will describe how to install and setup a Raspberry Pi Engine controller (RPE) asset with its corresponding three devices delivering data asynchronously. 

The rationale behind creating “yet another” demo asset is to differ on a couple of areas by using an asset that:

- is accessible for most people, hence why a Raspberry Pi was chosen.
- delivers real measurements instead of simulated data, which can be accomplished by using the real sensors on the Raspberry Pi as well as on an attached SenseHat.
It has been tested on up to 8 RPE's running in three different countries. They actually behaved differently even though the same hardware and software was used - which is closer to the real world.
- is easy to install, so a standard Pi installation using standard Node-RED was selected.
- can act as a “machine” or “an embedded circuit in an industrial device”.
- can be used in many different custom demonstrations, hence why it is a separate lab.


## Objectives

After completing this lab, you will be able to:</br></br>
►	Create RPE device credentials in Maximo Application Suite (MAS) Monitor</br>
►	Prepare a Raspberry Pi with a SenseHat</br>
►	Convert the Raspberry Pi into an RPE asset</br>
►	Verify that data is delivered from the RPE devices to MAS Monitor</br>


Hardware requirements are located here: [Hardware pre-requisites](prereqs.md#Hardware)

Once the lab is completed, the [RPE User Guide](user_guide.md) describes how to operate the RPE using the SenseHAT LED's and Joystick, which is helpful during custom demonstrations.

!!! note
    Expected time needed to run the complete lab: 2 hour

---

**Updated: 2024-02-27**

---