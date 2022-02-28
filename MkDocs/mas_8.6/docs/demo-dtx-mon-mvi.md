# Digital Twin Exchange - Visual Inspection Lab

!!! note
    Please follow the `Action` statements to navigate the steps and perform the lab. If you scroll in on the images, they are easier to see.

The sedimentation tanks needs to be constantly monitored for growth of fungi or other unwanted debris. The operator uses Maximo Visual Inspection to inspect the tanks. The cameras will be posted around the tanks for 24 hours a day, saving the operator time from checking the tanks every hour.
 
I am a Asset Analyst at the facility and have been tasked to develop models that can identify dirty tanks. The developed models need to be highly accurate as they will be integrated into our Asset management solution using IBM Maximo.<br>
 `Action:` Access Maximo Visual Inspection from the console. Launch Maximo Visual Inspection from the suite’s navigator
 ![img](/img/mas_8.6/vi_login.png){:style="height:400px;width:800px"} 

## Create Dataset

The Asset Analyst must create a dataset to aggregate images of the tank and label the data that represents dirty and clean tanks.<br>

![img](/img/mas_8.6/cdataset_mvi.png){:style="height:400px;width:800px"} 

`Action:` Create a dataset from these sample images on this [box link](https://ibm.box.com/s/y5eh9l2t38fkddk856y96zfz0jc3ke0q).
![img](/img/mas_8.6/dataset_mvi.png){:style="height:400px;width:800px"} 

`Action:` Drag and drop images of dirty and clean tanks into the dataset.<br>
![img](/img/mas_8.6/dragndrop1.png){:style="height:250px;width:800px"}
![img](/img/mas_8.6/dragndrop2.png){:style="height:250px;width:800px"}

A loaded dataset will look like the following:<br>
![img](/img/mas_8.6/loaded_ds.png){:style="height:250px;width:800px"}

`Action:` Select all Images and click `Label Objects`<br>
![img](/img/mas_8.6/label1mvi.png){:style="height:250px;width:800px"}

`Action:` Create labels. Click `Add label` and create two labels (`clean` and `dirty`).
![img](/img/mas_8.6/labelmvi2.png){:style="height:250px;width:800px"}


Annotate images with portions that denotes a clean tank.<br> 
`Action:` Select `clean`, select `Box` and draw a box around portion of the image that denotes a clean tank
![img](/img/mas_8.6/cleantank.png){:style="height:250px;width:800px"}

Repeat labeling all the images with “clean” tanks.

Now label all the images with dirty tanks.<br> 
`Action:` Select `dirty`, select `Box` and draw a box around portion of the image that denotes a dirty tank
![img](/img/mas_8.6/dirtytank.png){:style="height:250px;width:800px"}

You have now labeled 13 images (8 clean and 5 dirty). To train deep learning models of high accuracies, a dataset should have a variety and volume of images. MVI offers an ability to augment initial images by applying several filters.<br>  
`Action:` Select all the images and click “Augment Data”
![img](/img/mas_8.6/aug_data.png){:style="height:250px;width:800px"}

`Action:` Select filters to Sharpen, Crop, Rotate, Vertical & Horizontal flips to generate 221 additional images. Label the new dataset `Augmented Sedimentation Tanks`. 

![img](/img/mas_8.6/aug_data2.png){:style="height:250px;width:800px"}
![img](/img/mas_8.6/aug_data3.png){:style="height:250px;width:800px"}

This feature lowers the cost of data acquisition and labelling for Asset Analysts. 

!!! note

    The annotations are also inherited on the augmented images

Navigate to the new dataset and identify the 234 images, 144 labeled images with clean tanks and 90 images with dirty tanks.<br>
![img](/img/mas_8.6/new_ds.png){:style="height:250px;width:800px"}

## Train Models

`Action:` Click the button labeled `Train Model`. Select `Object detection`, make sure `Faster R-CNN` is selected. MVI offers several types of models required to address a use case.<br> 
![img](/img/mas_8.6/train_model.png){:style="height:250px;width:800px"}

!!! note

    14.	If you click the button to “Train model”, it would take 30 minutes to complete the training. For the demo, show the pretrained model ALREADY in the demo system, or available on the Digital Twin exchange [here](https://digitaltwinexchange.ibm.com/product/analyze-sedimentation-tanks-for-cleanliness/)

As an Asset Analyst, I can view the characteristics of the trained model.<br> 
`Action:` Click the trained model to view model metrics like Accuracy, mAP, Precision, Recall, IoU, Loss graphs and Confusion martix.<br>
![img](/img/mas_8.6/matrix.png){:style="height:250px;width:800px"}

`Action:` Click button to `Deploy model`

Validate the deployed model.<br> 
`Action:` Click the model from the deployment page.
![img](/img/mas_8.6/deploy.png){:style="height:250px;width:800px"}

Access the validation images on the box folder at this [box link](https://ibm.box.com/s/ozscdc8xp6fuh7z2ndxhjunx8fk0aznh).<br>
`Action:` Drag and drop images to validate. 
![img](/img/mas_8.6/testpic1.png){:style="height:350px;width:800px"}

<br>

![img](/img/mas_8.6/testpic2.png){:style="height:350px;width:800px"}

With validated model, you can build a dashboard in Maximo Monitor that will display the results of the tank inspections, from live camera feeds, as demonstrated in the Monitor section above.

<b>TRANSITION:</b> Now, I’m going to turn it over to the Asset Manager who uses artifacts in Digital Twin Exchange to set up data model and asset in MAS applications



