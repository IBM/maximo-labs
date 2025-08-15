#!/bin/bash
##################################################################################
#### DON't CHANGE THE BELOW MANDATORY SECTION WHICH IS A PRE-REQ FOR THE LABS ####
##################################################################################

# Set the Root directory, which is where this file is located.
root_dir=`pwd`

# Clear the existing /site content:
rm -r site
echo "BUILD_INFO - The existing /site has been removed to avoid any leftovers."
sleep 1

# Build the top level:
cd $root_dir/MkDocs/toplevel
mkdocs build
echo "BUILD_INFO - The top level of IBM Maximo Labs is build."

##################################################################################
#### DON't CHANGE THE ABOVE MANDATORY SECTION WHICH IS A PRE-REQ FOR THE LABS ####
##################################################################################

: '
How to comment out a blog to lower build time during development. 
Look at the character used above and belove these two lines of text.
'

#### BELOW IS WHERE EACH LAB IS BEING BUILD.              ####
#### PLEASE KEEP SAME ORDER AS IN THE INDEX.MD, I.E.      ####
#### ADDING NEW LABS RIGHT UNDER THIS COMMENT             ####


##############################################################
#### Maximo Application Suite 9.1 Labs                    ####

# Build the Monitor Modbus Custom Device upload:
lab=monitor_managed_gw_json_9.1
echo "==================================================================================="
echo "BUILD_INFO - The $lab lab is being build"
cd $root_dir/MkDocs/$lab
mkdocs build
echo "BUILD_INFO - The $lab lab is build and added under the top level of IBM Maximo Labs."

# Build the Monitor Modbus Custom Device upload:
lab=monitor_modbus_custom_device_9.1
echo "==================================================================================="
echo "BUILD_INFO - The $lab lab is being build"
cd $root_dir/MkDocs/$lab
mkdocs build
echo "BUILD_INFO - The $lab lab is build and added under the top level of IBM Maximo Labs."

# Build the Maximo Monitor Cisco Spaces Integration 9.1 level:
lab=monitor_cisco_spaces_integration_9.1
echo "==================================================================================="
echo "BUILD_INFO - The $lab lab is being build"
cd $root_dir/MkDocs/$lab
mkdocs build
echo "BUILD_INFO - The $lab lab is build and added under the top level of IBM Maximo Labs."

# Build the Maximo Monitor Real Estate and Facilities level:
lab=monitor_MREF_integration_9.1
echo "==================================================================================="
echo "BUILD_INFO - The $lab lab is being build"
cd $root_dir/MkDocs/$lab
mkdocs build
echo "BUILD_INFO - The $lab lab is build and added under the top level of IBM Maximo Labs."

# Build the Monitor Role Based Access Control 9.1 level:
lab=monitor_role_based_access_control_9.1
echo "==================================================================================="
echo "BUILD_INFO - The $lab lab is being build"
cd $root_dir/MkDocs/$lab
mkdocs build
echo "BUILD_INFO - The $lab lab is build and added under the top level of IBM Maximo Labs."

# Build the Monitor Avevapi Scada Historian Integration 9.1 level:
lab=monitor_avevapi_scada_historian_integration_9.1
echo "==================================================================================="
echo "BUILD_INFO - The $lab lab is being build"
cd $root_dir/MkDocs/$lab
mkdocs build
echo "BUILD_INFO - The $lab lab is build and added under the top level of IBM Maximo Labs."

# Build the Monitor Custom Function:
lab=monitor_custom_function_9.1
echo "==================================================================================="
echo "BUILD_INFO - The $lab lab is being build"
cd $root_dir/MkDocs/$lab
mkdocs build
echo "BUILD_INFO - The $lab lab is build and added under the top level of IBM Maximo Labs."

# Build the Monitor Maximo alerts:
lab=monitor_alerts_9.1
echo "==================================================================================="
echo "BUILD_INFO - The $lab lab is being build"
cd $root_dir/MkDocs/$lab
mkdocs build
echo "BUILD_INFO - The $lab lab is build and added under the top level of IBM Maximo Labs."

# Build the Monitor Managed Gatewway Modbus 9.0 level:
lab=monitor_hierarchy_9.1
echo "==================================================================================="
echo "BUILD_INFO - The $lab lab is being build"
cd $root_dir/MkDocs/$lab
mkdocs build
echo "BUILD_INFO - The $lab lab is build and added under the top level of IBM Maximo Labs."

# Build the Maximo Monitor Cisco Webex Integration 9.1 level:
lab=monitor_cisco_webex_integration_9.1
echo "==================================================================================="
echo "BUILD_INFO - The $lab lab is being build"
cd $root_dir/MkDocs/$lab
mkdocs build
echo "BUILD_INFO - The $lab lab is build and added under the top level of IBM Maximo Labs."

# Build the Monitor Meter/Metric Mapping 9.1 level:
lab=monitor_meter_metric_mapping_9.1
echo "==================================================================================="
echo "BUILD_INFO - The $lab lab is being build"
cd $root_dir/MkDocs/$lab
mkdocs build
echo "BUILD_INFO - The $lab lab is build and added under the top level of IBM Maximo Labs."

# Build the Monitor Device and device type setup 9.1 level:
lab=monitor_device_devicetype_setup_9.1
echo "==================================================================================="
echo "BUILD_INFO - The $lab lab is being build"
cd $root_dir/MkDocs/$lab
mkdocs build
echo "BUILD_INFO - The $lab lab is build and added under the top level of IBM Maximo Labs."

# Build the Monitor Managed Gatewway OPC-UA 9.0 level:
lab=monitor_managed_gw_opcua_9.1
echo "==================================================================================="
echo "BUILD_INFO - The $lab lab is being build"
cd $root_dir/MkDocs/$lab
mkdocs build
echo "BUILD_INFO - The $lab lab is build and added under the top level of IBM Maximo Labs."

# Build the Monitor Managed Gatewway Modbus 9.0 level:
lab=monitor_managed_gw_modbus_9.1
echo "==================================================================================="
echo "BUILD_INFO - The $lab lab is being build"
cd $root_dir/MkDocs/$lab
mkdocs build
echo "BUILD_INFO - The $lab lab is build and added under the top level of IBM Maximo Labs."

# Build the Monitor Modbus Simulator level:
lab=monitor_modbus_simulator
echo "==================================================================================="
echo "BUILD_INFO - The $lab lab is being build"
cd $root_dir/MkDocs/$lab
mkdocs build
echo "BUILD_INFO - The $lab lab is build and added under the top level of IBM Maximo Labs."


##############################################################
#### Maximo Application Suite 9.0 Labs                    ####

# Build the MAS 9 Overview level:
lab=mas_9.0
echo "==================================================================================="
echo "BUILD_INFO - The $lab lab is being build"
cd $root_dir/MkDocs/$lab
mkdocs build
echo "BUILD_INFO - The $lab lab is build and added under the top level of IBM Maximo Labs."

# Build the Monitor Managed Gatewway OPC-UA 9.0 level:
lab=monitor_managed_gw_opcua_9.0
echo "==================================================================================="
echo "BUILD_INFO - The $lab lab is being build"
cd $root_dir/MkDocs/$lab
mkdocs build
echo "BUILD_INFO - The $lab lab is build and added under the top level of IBM Maximo Labs."

# Build the Monitor Installation level:
lab=monitor_installation
echo "==================================================================================="
echo "BUILD_INFO - The $lab lab is being build"
cd $root_dir/MkDocs/$lab
mkdocs build
echo "BUILD_INFO - The $lab lab is build and added under the top level of IBM Maximo Labs."

# Build the MAS TechZone Base Certified Image level:
lab=mas_techzone_base
echo "==================================================================================="
echo "BUILD_INFO - The $lab lab is being build"
cd $root_dir/MkDocs/$lab
mkdocs build
echo "BUILD_INFO - The $lab lab is build and added under the top level of IBM Maximo Labs."

# Build the Monitor Managed Gatewway Modbus 9.0 level:
lab=monitor_managed_gw_modbus_9.0
echo "==================================================================================="
echo "BUILD_INFO - The $lab lab is being build"
cd $root_dir/MkDocs/$lab
mkdocs build
echo "BUILD_INFO - The $lab lab is build and added under the top level of IBM Maximo Labs."

# Build the APM 9 level:
lab=apm_9.0
echo "==================================================================================="
echo "BUILD_INFO - The $lab lab is being build"
cd $root_dir/MkDocs/$lab
mkdocs build
echo "BUILD_INFO - The $lab lab is build and added under the top level of IBM Maximo Labs."


##############################################################
#### Maximo Application Suite 8.10 Labs                   ####

# Build the Monitor Live Demo Asset level:
lab=monitor_live_demo_asset
echo "==================================================================================="
echo "BUILD_INFO - The $lab lab is being build"
cd $root_dir/MkDocs/$lab
mkdocs build
echo "BUILD_INFO - The $lab lab is build and added under the top level of IBM Maximo Labs."

# Build the Monitor Edge Data Collector level:
lab=edc_8.11
echo "==================================================================================="
echo "BUILD_INFO - The $lab lab is being build"
cd $root_dir/MkDocs/$lab
mkdocs build
echo "BUILD_INFO - The $lab lab is build and added under the top level of IBM Maximo Labs."

# Build the MAS v8.11 deployment for Health Predict and Utilities Lab level:
lab=apm_8.11
echo "==================================================================================="
echo "BUILD_INFO - The $lab lab is being build"
cd $root_dir/MkDocs/$lab
mkdocs build
echo "BUILD_INFO - The $lab lab is build and added under the top level of IBM Maximo Labs."


##############################################################
#### Maximo Application Suite 8.10 Labs                   ####

# Build the Monitor 8.8+ CSV Importer level:
lab=monitor_nodered_csv_importer_2.0
echo "==================================================================================="
echo "BUILD_INFO - The $lab lab is being build"
cd $root_dir/MkDocs/$lab
mkdocs build
echo "BUILD_INFO - The $lab lab is build and added under the top level of IBM Maximo Labs."



########################################################################################
#### DON't CHANGE THE BELOW MANDATORY SECTION WHICH IS PART OF THE TOPLEVEL CONTENT ####
########################################################################################

# Build the template level:
lab=template_1.0
echo "==================================================================================="
echo "BUILD_INFO - The $lab lab is being build"
cd $root_dir/MkDocs/$lab
mkdocs build
echo "BUILD_INFO - The $lab lab is build and added under the top level of IBM Maximo Labs."

# Build the contribution level:
lab=contribute
echo "==================================================================================="
echo "BUILD_INFO - The $lab lab is being build"
cd $root_dir/MkDocs/$lab
mkdocs build
echo "BUILD_INFO - The $lab lab is build and added under the top level of IBM Maximo Labs."

echo "==================================================================================="

# Start the web server hosting the complete site if executed locally - then open the following URL in a browser: http://127.0.0.1:8080
if [[ -z "${MKDOCS_DEPLOY}" ]]; then
    cd $root_dir/site
    echo "BUILD_INFO - Starting the web server on http://127.0.0.1:8080."
    python -m http.server --cgi 8080
fi