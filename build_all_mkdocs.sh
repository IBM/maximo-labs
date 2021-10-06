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
echo "BUILD_INFO - The top level of IBM Maximo Labs are build."

##################################################################################
#### DON't CHANGE THE ABOVE MANDATORY SECTION WHICH IS A PRE-REQ FOR THE LABS ####
##################################################################################

#### BELOW IS WHERE EACH LAB IS BEING BUILD                                   ####

# Build the Monitor SaaS level:
lab=monitor_saas
cd $root_dir/MkDocs/$lab
mkdocs build
echo "BUILD_INFO - The $lab labs are build and added under the top level of IBM Maximo Labs."
mv $root_dir/site/$lab/img/$lab $root_dir/site/img/
echo "BUILD_INFO - The $lab lab images has been moved under /site/img/$lab."

# Build the Monitor 8.2 level:
lab=monitor_8.2
cd $root_dir/MkDocs/$lab
mkdocs build
echo "BUILD_INFO - The $lab labs are build and added under the top level of IBM Maximo Labs."
mv $root_dir/site/$lab/img/$lab $root_dir/site/img/
echo "BUILD_INFO - The $lab lab images has been moved under /site/img/$lab."

# Build the MVI Saas level:
lab=mvi_saas
cd $root_dir/MkDocs/$lab
mkdocs build
echo "BUILD_INFO - The $lab labs are build and added under the top level of IBM Maximo Labs."
mv $root_dir/site/$lab/img/$lab $root_dir/site/img/
echo "BUILD_INFO - The $lab lab images has been moved under /site/img/$lab."

# Build the MVI 8.2 level:
lab=mvi_8.2
cd $root_dir/MkDocs/$lab
mkdocs build
echo "BUILD_INFO - The $lab labs are build and added under the top level of IBM Maximo Labs."
mv $root_dir/site/$lab/img/$lab $root_dir/site/img/
echo "BUILD_INFO - The $lab lab images has been moved under /site/img/$lab."

# Build the Maximo Monitor, Health, and Predict Overview 8.2  level:
lab=apm_fs21
cd $root_dir/MkDocs/$lab
mkdocs build
echo "BUILD_INFO - The $lab labs are build and added under the top level of IBM Maximo Labs."
mv $root_dir/site/$lab/img/$lab $root_dir/site/img/
echo "BUILD_INFO - The $lab lab images has been moved under /site/img/$lab."

# Build the Maximo Application Suite Overview 8.3 level:
lab=mas_8.3
cd $root_dir/MkDocs/$lab
mkdocs build
echo "BUILD_INFO - The $lab labs are build and added under the top level of IBM Maximo Labs."
mv $root_dir/site/$lab/img/$lab $root_dir/site/img/
echo "BUILD_INFO - The $lab lab images has been moved under /site/img/$lab."

# Build the Maximo Monitor Auto AI 8.4 level:
lab=monitor_autoai_8.4
cd $root_dir/MkDocs/$lab
mkdocs build
echo "BUILD_INFO - The $lab labs are build and added under the top level of IBM Maximo Labs."
mv $root_dir/site/$lab/img/$lab $root_dir/site/img/
echo "BUILD_INFO - The $lab lab images has been moved under /site/img/$lab."

# Build the Maximo Visual Inspection 8.4 level:
lab=mvi_8.4
cd $root_dir/MkDocs/$lab
mkdocs build
echo "BUILD_INFO - The $lab labs are build and added under the top level of IBM Maximo Labs."
mv $root_dir/site/$lab/img/$lab $root_dir/site/img/
echo "BUILD_INFO - The $lab lab images has been moved under /site/img/$lab."

# Build the Maximo Application Suite Overview 8.5 level:
lab=mas_8.5
cd $root_dir/MkDocs/$lab
mkdocs build
echo "BUILD_INFO - The $lab labs are build and added under the top level of IBM Maximo Labs."
mv $root_dir/site/$lab/img/$lab $root_dir/site/img/
echo "BUILD_INFO - The $lab lab images has been moved under /site/img/$lab."

# Build the MAS v8.5 Monitor Lab level:
lab=monitor_8.5
cd $root_dir/MkDocs/$lab
mkdocs build
echo "BUILD_INFO - The $lab labs are build and added under the top level of IBM Maximo Labs."
mv $root_dir/site/$lab/img/$lab $root_dir/site/img/
echo "BUILD_INFO - The $lab lab images has been moved under /site/img/$lab."

########################################################################################
#### DON't CHANGE THE BELOW MANDATORY SECTION WHICH IS PART OF THE TOPLEVEL CONTENT ####
########################################################################################

# Build the template level:
lab=template_1.0
cd $root_dir/MkDocs/$lab
mkdocs build
echo "BUILD_INFO - The $lab labs are build and added under the top level of IBM Maximo Labs."
mv $root_dir/site/$lab/img/$lab $root_dir/site/img/
echo "BUILD_INFO - The $lab lab images has been moved under /site/img/$lab."

# Build the contribution level:
lab=contribute
cd $root_dir/MkDocs/$lab
mkdocs build
echo "BUILD_INFO - The $lab labs are build and added under the top level of IBM Maximo Labs."
mv $root_dir/site/$lab/img/$lab $root_dir/site/img/
echo "BUILD_INFO - The $lab lab images has been moved under /site/img/$lab."


# Start the web server hosting the complete site - then open the following URL in a browser: http://127.0.0.1:8080
cd $root_dir/site
echo "BUILD_INFO - Starting the web server on http://127.0.0.1:8080."
python3 -m http.server --cgi 8080 