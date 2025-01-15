#  Visual Inspection

Visual Inspection Models (Asset Analyst)

!!! note
    Follow this process to demonstrate how the MVI models were created and used in the Monitor section above.

The sedimentation tanks need to be constantly monitored for growth of fungi or other unwanted debris. The operator uses Maximo Visual Inspection to inspect the tanks. The cameras will be posted around the tanks for 24 hours a day, saving the operator time from checking the tanks every hour.
 
Demo:  I am an Asset Analyst at the facility and have been tasked to develop models that can identify dirty tanks. The developed models need to be highly accurate as they will be integrated into our Asset management solution using IBM Maximo.


## Create Dataset


The Asset Analyst must create a dataset to aggregate images of the tank and label the data that represents dirty and clean tanks. First, we need to teach the model what it’s looking for by uploading an image dataset and label or categorize the images in the dataset.  The sample images can be found in the [Box folder](https://ibm.box.com/s/y5eh9l2t38fkddk856y96zfz0jc3ke0q), but the dataset has already been loaded.<br> 

1. Access Maximo Visual Inspection with the following [URL](https://gtmdemo.visualinspection.mviwwdemo.gtm-pat.com/#/)
![setup assets](../../mas_9.0/img/wwpump_8.11/MVI00016.png)
2. Click on `Get Started` you should see the datasets page. In this demo, we will show you how to create a model to automatically inspect sedimentation tank cleanliness. We have pre-uploaded a dataset with images.
![setup assets](../../mas_9.0/img/wwpump_8.11/MVI00017.png)
3. Type `tank` in the search bar to filter for this dataset.
4. Click on the `Tank 1 Training` IMAGE to open the dataset.
![setup assets](../../mas_9.0/img/wwpump_8.11/MVI0002.png)
5. Select `Select Files` then `Allv to select all images.
6. Click `Label` then `Objects`.  This is the training dataset to teach the model to recognize `clean` vs. `dirty` tanks. There may be multiple tanks in an image so we will create an object detection model where we can label multiple objects in an image.  Images have already been labeled.
![setup assets](../../mas_9.0/img/wwpump_8.11/MVI0003.png)
7. Select a `clean tank` image from the images presented on the left.
8. Select `clean`, select the `draw box` icon, and `draw a box` around portion of the image that denotes a `clean tank`.  This will annotate images with portions that denotes a `clean tank`. 
![setup assets](../../mas_9.0/img/wwpump_8.11/MVI00018.png)
9. Choose an image to see how to see label an object in the image.  The labels `clean` and `dirty` have already been created as seen on the right side. If there was another label needed, you would click `add label`.   
10. Repeat labelling all the images with `dirty` and `clean` tanks
![setup assets](../../mas_9.0/img/wwpump_8.11/MVI0005.png)
11. Select `dirty`, or `clean` as needed, select `Box and draw` to draw a box around portion of the image that denotes the correct tank.
12. Return to `Tank 1 Training` using the breadcrumbs.
13. Select all the images and click `Augment Data`.  You have now labeled 15 images (14 clean and 7 dirty). To train deep learning models of high accuracy, a dataset should have a variety and volume of images.  MVI offers an ability to augment initial images by applying several filters.  
![setup assets](../../mas_9.0/img/wwpump_8.11/MVI0006.png)
14. Select filters to `Sharpen`, `Crop`, `Rotate`, `Vertical` & `Horizontal`flips to generate 255 additional images. 
![setup assets](../../mas_9.0/img/wwpump_8.11/MVI0007.png)
15. You can click `cancel` and navigate to the `augmented dataset` that is already created.
![setup assets](../../mas_9.0/img/wwpump_8.11/MVI00022.png)

Image augmentation prevents overfitting your model to the few images uploaded and can increase accuracy of the model.  This feature lowers the cost of data acquisition and labelling for Asset Analysts. Please note, the annotations are also inherited on the augmented images.

1. Navigate to the new dataset called `Tank 1 Augmented – DO NOT DELETE` and using the filter on objects, identify the 270 images, 252 labeled images with clean tanks and 126 images with dirty tanks.  Your dataset may appear in a different order.
![setup assets](../../mas_9.0/img/wwpump_8.11/MVI0008.png)


## Train Models

We are ready to train a model.
1. Click the button labelled `Train Model`. 
2. Select `Object detection`, make sure `Faster R-CNN` is selected. Normally you would click train model - a model is already created so show the model called `DO NOT DELETE: OBJECT DETECTION MODEL FOR TANKS`
![setup assets](../../mas_9.0/img/wwpump_8.11/MVI0010.png)

!!! note
    WARNING:  If you click the button to `Train model`, it will take 30 minutes to complete the training. 

MVI offers several types of models required to address a use case. There is image classification to classify the whole image, object detection models to identify an object or objects within an image, and action detection models to detect an action. For this use case, there may be multiple tanks in the frame of reference so we have will train an object detection model.  For the demo, show the pretrained model ALREADY in the demo system.

1. Select `Models` from the left nav bar.
![setup assets](../../mas_9.0/img/wwpump_8.11/MVI0011.png)
2. Use the search bar to find the `DO NOT DELETE:  OBJECT DETECTION MODEL FOR TANKS` model
![setup assets](../../mas_9.0/img/wwpump_8.11/MVI0012.png)
![setup assets](../../mas_9.0/img/wwpump_8.11/MVI0013.png)

As an Asset Analyst, I can view the characteristics of the trained model. Click the trained model to view model metrics like Accuracy, mAP, Precision, Recall, IoU, Loss graphs and Confusion matrix.  Validate the deployed model. 

1. Click the model from the deployment page.
![setup assets](../../mas_9.0/img/wwpump_8.11/MVI0030.png)
2. Select “Deployed models” from the left nav bar.
![setup assets](../../mas_9.0/img/wwpump_8.11/MVI0031.png)
3. Use the search bar to find the “DO NOT DELETE:  OBJECT DETECTION MODEL FOR TANKS” model
![setup assets](../../mas_9.0/img/wwpump_8.11/MVI0032.png)
4. Access the validation images on the [box folder](https://ibm.box.com/s/ozscdc8xp6fuh7z2ndxhjunx8fk0aznh)
5. Download an image from the `clean` folder. 
![setup assets](../../mas_9.0/img/wwpump_8.11/MVI0033.png)
![setup assets](../../mas_9.0/img/wwpump_8.11/MVI0034.png)
6. Drag and drop the image to validate. With validated model, you can build a dashboard in Maximo Monitor that will display the results of the tank inspections, from live camera feeds, as demonstrated in the Monitor section above.
![setup assets](../../mas_9.0/img/wwpump_8.11/MVI0035.png)
![setup assets](../../mas_9.0/img/wwpump_8.11/MVI0036.png)
![setup assets](../../mas_9.0/img/wwpump_8.11/MVI0037.png)


## Deploy the models 

Now, I’m going to turn it over to the Asset Manager who can deploy the models to run the automated visual inspections on MVI Edge. As the Asset Inspector at the facility and have been tasked to monitor the facility for dirty tanks. I have deployed the models from the MVI training server onto MVI Edge. MVI Edge is connected to multiple cameras inspecting tanks across the facility. From the MVI Edge dashboard, I can keep track of the real-time inspections and send a service request if needed. 


## Setup Rules 

1. Access `Maximo Visual Inspection Edge` using [URL](https://mvie811v2-visualinspection-edge.mvi-wwdemo-d0ef7f39d9cfcd50dc3b8ae064f7a945-0000.us-south.containers.appdomain.cloud/#/login) using the log in information from your email. You will find the dashboard of all your inspections running on this `MVI Edge`.
![setup assets](../../mas_9.0/img/wwpump_8.11/MVIE001.png)
2. Click on `Tank 1`
3. Click on `Configuration`
![setup assets](../../mas_9.0/img/wwpump_8.11/MVIE0011.png)
4. The project made in the MVI training server is deployed in `MVI Edge` with the dataset and model.
![setup assets](../../mas_9.0/img/wwpump_8.11/MVIE002.png)

!!! note
    Before giving the demo, check that there are images in the inspection results. If there are not then:

        1. Disable inspection with the `Enabled` toggle. 
    
        2. Scroll down to `edit input source`. 
    
        3. Click the refresh icon next to `Processed`. 
    
        4. Then go back and toggle to Enable inspection with “Disabled” toggle.

5. Scroll down to the `Rules` section.
![setup assets](../../mas_9.0/img/wwpump_8.11/MVIE003.png)
6. Click on the icon under `Settings`.
![setup assets](../../mas_9.0/img/wwpump_8.11/MVIE0031.png)
![setup assets](../../mas_9.0/img/wwpump_8.11/MVIE004.png)

## Setup Alerts

The asset inspector can create rules based off the inference results. In this case, if the inference result is a `clean` tank with a confidence score of greater than a .8 threshold then the asset inspector can mark the inference inspection as a pass. The other rule set the inspection as a fail when the model finds a dirty tank. 

1. Scroll down to view the `Alert type`.  We can see that the asset inspector can send alerts via MQTT with the `Maximo Monitor settings` or via Twilio. We see here that the MQTT sent the inspection results to Maximo Monitor which we saw previously.
![setup assets](../../mas_9.0/img/wwpump_8.11/MVIE005.png)
2. Click `Cancel` to exit the pop-up. We can select our `input source`, connecting an `image folder`, `video`, or `camera`.  In our case, we are connected to an `image folder`.
![setup assets](../../mas_9.0/img/wwpump_8.11/MVIE0051.png)
3. Scroll back to the top and click on the “Images” tab to see the inspection results from the input source. 
4. Click on an image.
![setup assets](../../mas_9.0/img/wwpump_8.11/MVIE006.png)

## Review Results
We see here all the inference results from this input source. There is a green check mark for a pass and a red X for a failed dirty tank inspection. There may also be a yellow question mark if the model is unsure about the result. We also see the exclamation point in the triangle to indicate that the particular inspection result has been sent to Maximo Monitor via MQTT.

1. Navigate back to `Maximo Visual Inspection` core using the [URL](https://gtmdemo.visualinspection.mviwwdemo.gtm-pat.com/#/).
2. Select `Projects` from the left nav.
![setup assets](../../mas_9.0/img/wwpump_8.11/MVIE007.png) 
3. Click on the Sedimentation tank project called `World Wide Demo – DO NOT DELETE` 
![setup assets](../../mas_9.0/img/wwpump_8.11/MVIE0071.png) 


## Summary
You have seen how easy it is to create AI models visual inspection using MVI projects to include the training datasets, inspection results datasets and models.  `MAS Visual Inspection for Business Users` includes tools and interfaces for anyone with limited skills in deep learning technologies.  This proven integrated technology solution scales real-time defect detection, allows alert capabilities from inspections, and optimizes manufacturing workflows, setting it apart from other products in the industry.





