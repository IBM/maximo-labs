# Objectives
Image locations and references to the images has to change:

* Image location of lab images
* Edit build_all_mkdocs.sh


## 1. Image location of lab images

Previously it was needed to use absolute links to images which also had to include the name of the lab, e.g.:</br>
![Image Link Before](img/image_locations_05.png)

this needs to be changed to a relative link, as github pages add a first level in the URL being the name of the Github repository.
Because of that the images needs to be located under the lab, e.g.:  
![Image Link After](img/image_locations_06.png)


This also means that the image files must be in the labs `img` folder without an additional folder that needs to have the same name as the lab.
Meaning this structure:
![Image Location Before](img/image_locations_01.png)

has to change to this structure:
![Image Location After](img/image_locations_02.png)

It also means, that the following kind of messages during the build should dissapper:
![Remove Image INFO during build](img/image_locations_07.png)


## 2. Edit build_all_mkdocs.sh

Once the image locations have changed (in the folder structure and in the links in the md files) then we need to change the build script from:
![Build script before](img/image_locations_03.png)

by removing the last two lines per lab, hence do not copy images to a central (but unavailable for github pages) location:
![Build script after](img/image_locations_04.png)
While we are there also change/add the ecco strings to easier see what is happening during debug of building the whole site.

