#!/bin/bash

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
sleep 1




# Build the Monitor SaaS level:
lab=monitor_saas
cd $root_dir/MkDocs/$lab
mkdocs build
echo "BUILD_INFO - The $lab labs are build and added under the top level of IBM Maximo Labs."
mv $root_dir/site/$lab/img/$lab $root_dir/site/img/
echo "BUILD_INFO - The $lab lab images has been moved under /site/img/$lab."
sleep 1

# Build the Monitor 8.2 level:
#lab=monitor_8.2
#cd $root_dir/MkDocs/$lab
#mkdocs build
#echo "BUILD_INFO - The $lab labs are build and added under the top level of IBM Maximo Labs."
#mv $root_dir/site/$lab/img/$lab $root_dir/site/img/
#echo "BUILD_INFO - The $lab lab images has been moved under /site/img/$lab."
#sleep 1

# Build the Visual Inspection level:
#lab=mvi
#cd $root_dir/MkDocs/$lab
#mkdocs build
#echo "BUILD_INFO - The $lab labs are build and added under the top level of IBM Maximo Labs."
#mv $root_dir/site/$lab/img/$lab $root_dir/site/img/
#echo "BUILD_INFO - The $lab lab images has been moved under /site/img/$lab."
#sleep 2


# Start the web server hosting the complete site - then open the following URL in a browser: http://127.0.0.1:8080
cd $root_dir/site
echo "BUILD_INFO - Starting the web server on http://127.0.0.1:8080."
python3 -m http.server --cgi 8080 