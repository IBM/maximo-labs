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

#### BELOW IS WHERE EACH LAB IS BEING BUILD                                   ####

: '
How to comment out a blog to lower build time during development. 
Look at the character used above and belove these two lines of text.
'

# Build the Monitor SaaS level:
lab=monitor_saas
echo "==================================================================================="
echo "BUILD_INFO - The $lab lab is being build"
cd $root_dir/MkDocs/$lab
mkdocs build
echo "BUILD_INFO - The $lab lab is build and added under the top level of IBM Maximo Labs."

# Build the HPU 8.6 level:
lab=hpu_8.6
echo "==================================================================================="
echo "BUILD_INFO - The $lab lab is being build"
cd $root_dir/MkDocs/$lab
mkdocs build
echo "BUILD_INFO - The $lab lab is build and added under the top level of IBM Maximo Labs."

# Build the MVI Saas level:
lab=mvi_saas
echo "==================================================================================="
echo "BUILD_INFO - The $lab lab is being build"
cd $root_dir/MkDocs/$lab
mkdocs build
echo "BUILD_INFO - The $lab lab is build and added under the top level of IBM Maximo Labs."

# Build the Maximo Monitor Auto AI 8.5 level:
lab=monitor_autoai_8.5
echo "==================================================================================="
echo "BUILD_INFO - The $lab lab is being build"
cd $root_dir/MkDocs/$lab
mkdocs build
echo "BUILD_INFO - The $lab lab is build and added under the top level of IBM Maximo Labs."

# Build the Maximo Application Suite Overview 8.6 level:
lab=mas_8.6
echo "==================================================================================="
echo "BUILD_INFO - The $lab lab is being build"
cd $root_dir/MkDocs/$lab
mkdocs build
echo "BUILD_INFO - The $lab lab is build and added under the top level of IBM Maximo Labs."

# Build the Maximo Application Suite Sustainability Use Cases level:
lab=sustain_mas
echo "==================================================================================="
echo "BUILD_INFO - The $lab lab is being build"
cd $root_dir/MkDocs/$lab
mkdocs build
echo "BUILD_INFO - The $lab lab is build and added under the top level of IBM Maximo Labs."

# Build the MAS v8.5 Monitor Lab level:
lab=monitor_8.5
echo "==================================================================================="
echo "BUILD_INFO - The $lab lab is being build"
cd $root_dir/MkDocs/$lab
mkdocs build
echo "BUILD_INFO - The $lab lab is build and added under the top level of IBM Maximo Labs."

# Build the Monitor 8.6 CSV Importer level:
lab=monitor_nodered_csv_importer_1.0
echo "==================================================================================="
echo "BUILD_INFO - The $lab lab is being build"
cd $root_dir/MkDocs/$lab
mkdocs build
echo "BUILD_INFO - The $lab lab is build and added under the top level of IBM Maximo Labs."

# Build the Monitor 8.8+ CSV Importer level:
lab=monitor_nodered_csv_importer_2.0
echo "==================================================================================="
echo "BUILD_INFO - The $lab lab is being build"
cd $root_dir/MkDocs/$lab
mkdocs build
echo "BUILD_INFO - The $lab lab is build and added under the top level of IBM Maximo Labs."

# Build the MAS v8.7 deployment for Health Predict and Utilities Lab level:
lab=apm_8.7
echo "==================================================================================="
echo "BUILD_INFO - The $lab lab is being build"
cd $root_dir/MkDocs/$lab
mkdocs build
echo "BUILD_INFO - The $lab lab is build and added under the top level of IBM Maximo Labs."

# Build the MAS v8.8 deployment for Health Predict and Utilities Lab level:
lab=apm_8.8
echo "==================================================================================="
echo "BUILD_INFO - The $lab lab is being build"
cd $root_dir/MkDocs/$lab
mkdocs build
echo "BUILD_INFO - The $lab lab is build and added under the top level of IBM Maximo Labs."

# Build the MAS v8.9 deployment for Health Predict and Utilities Lab level:
lab=apm_8.9
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

# Build the MAS deployment on OCP lab level:
lab=ocp_8.9
echo "==================================================================================="
echo "BUILD_INFO - The $lab lab is being build"
cd $root_dir/MkDocs/$lab
mkdocs build
echo "BUILD_INFO - The $lab lab is build and added under the top level of IBM Maximo Labs."

# Build the Monitor hierarchy level:
lab=mas_monitor_hierarchy
echo "==================================================================================="
echo "BUILD_INFO - The $lab lab is being build"
cd $root_dir/MkDocs/$lab
mkdocs build
echo "BUILD_INFO - The $lab lab is build and added under the top level of IBM Maximo Labs."

# Build the MAS Monitor Connect level:
lab=mas_monitor_connect
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

# Build the Github Pages level:
lab=github_pages
echo "==================================================================================="
echo "BUILD_INFO - The $lab lab is being build"
cd $root_dir/MkDocs/$lab
mkdocs build
echo "BUILD_INFO - The $lab lab is build and added under the top level of IBM Maximo Labs."

# Build the Monitor Live Demo Asset level:
lab=monitor_live_demo_asset
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

# Build the APM 9 level:
lab=apm_9.0
echo "==================================================================================="
echo "BUILD_INFO - The $lab lab is being build"
cd $root_dir/MkDocs/$lab
mkdocs build
echo "BUILD_INFO - The $lab lab is build and added under the top level of IBM Maximo Labs."

# Build the MAS 9 Overview level:
lab=mas_9.0
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

# Build the Monitor Managed Gatewway OPC-UA 9.0 level:
lab=monitor_managed_gw_opcua_9.0
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

# Build the Monitor Installation level:
lab=monitor_installation
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
