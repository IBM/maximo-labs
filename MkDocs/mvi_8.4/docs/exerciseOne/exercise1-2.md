

<h2>Exercise 1.2 - Train and Deploy a Deep Learning Model</h2>


<b>Train Model:</b> Now that our data set has been created, we are ready to start training our Deep Learning Model. In general, the more images used to train a model, the more accurate the model will be. The Augmented data set will create a better model than the 5 base images. We also have provided you with an even more accurate pretrained model built on 2000+ images.  

!!! note
    Please make sure there are enough GPUs to train the model. 

1. Make sure you are on your `Cans-Augmented-YourInitials` data set. 

    <br>

2. Click `Train model`.

    ![img](/img/mvi_8.4/img-exerciseOne/exercise1-2/trainModel.png){: style="height:600px;width:800px"}

    <br>

3.   Give your model the name of `Dent Detection Model-YourInitials`.

    ![img](/img/mvi_8.4/img-exerciseOne/exercise1-2/nameModel.png){: style="height:300px;width:800px"}

    <br>

4.   Select `Object Detection` as the type of training and switch `Advanced settings` on in the top right corner.

    ![img](/img/mvi_8.4/img-exerciseOne/exercise1-2/advanced.png){: style="height:300px;width:800px"}

    <br>

5.   Scroll down to the `Optimize Model` using section, select `Tiny YOLO v2` as the model type. 

6. Select `Enable Core ML` as the training option, which is what allows the model to be used on an iOS device. 

7. In the `Model hyperparameters`, change `Max Iteration` to `2000`.

    ![img](/img/mvi_8.4/img-exerciseOne/exercise1-2/yolo.png){: style="height:400px;width:1000px"}

!!! attention
    We are only using 2000 iterations because we don't want to stretch the GPU too thin. Also, it takes a lot more time to train the model with higher iterations. Increasing the iterations can improve model accuracy, similar to adding more images to a dataset. Please make sure there are enough GPUs to train the model.

8.  Click the `Train Model` button at the top of the page.

    ![img](/img/mvi_8.4/img-exerciseOne/exercise1-2/trainModelB.png){: style="height:400px;width:800px"}

    <br>

9. The MVI Platform will schedule the model training and begin training when the resources become available.  The timing of training varies on how many iterations you've chosen and how much data you’re using to train the model. As model training begins, you can move on to the next step and let it run in the background.

    ![img](/img/mvi_8.4/img-exerciseOne/exercise1-2/training.png){: style="height:400px;width:1000px"}

!!! note
    You can either wait for your model to be finished training and skip to deploying the model you created, or use the model provided in the box folder.


<b>Deploy Model:</b> While your model is training, we are going to deploy the model that was given to you as part of the lab artifacts. The model was trained using over 2,000 images. Therefore, it will be significantly more accurate than the model you just created. 

1. First, select the `Models` tab.

    ![img](/img/mvi_8.4/img-exerciseOne/exercise1-2/models.png){: style="height:300px;width:800px"}

    <br>

2. Just like we did with the images, we will do the same with the Model .zip file. You will drag and drop the `Dent Detection Model - Lab.zip` file that you saved to your computer or click `Import .zip file` and select the .zip file. Also, you can click the `x` on the progress bar for your model that is training if it is in the way. 

    ![img](/img/mvi_8.4/img-exerciseOne/exercise1-2/modelzip.png){: style="height:600px;width:900px"}

    <br>

3. Give at least 4-5 minutes for the model to finished uploading. 

    ![img](/img/mvi_8.4/img-exerciseOne/exercise1-2/modelupload.png){: style="height:250px;width:900px"}

    <br>

4. Once the model has finished uploading, click the checkbox and select the `Deploy Model` button.

    ![img](/img/mvi_8.4/img-exerciseOne/exercise1-2/deploymodel.png){: style="height:600px;width:900px"}

    <br>

5. Select `Deploy`.

    ![img](/img/mvi_8.4/img-exerciseOne/exercise1-2/deploy.png){: style="height:300px;width:500px"}

    <br>

6. Wait a couple seconds for the model to be deployed. It should look like the picture below when it is ready.

    ![img](/img/mvi_8.4/img-exerciseOne/exercise1-2/deployed.png){: style="height:300px;width:900px"}

    <br>

7. Click on the deployed model to see the details of the model.

    ![img](/img/mvi_8.4/img-exerciseOne/exercise1-2/details.png){: style="height:300px;width:900px"}

    <br>

8. Scroll down to test the model. Drag the `Model Test Pic` image we provided you for testing or use a picture you did not use to train your model and drop it into the `Test Model` box or select Import and upload the picture.  This image was not used to train the model we provided.

    ![img](/img/mvi_8.4/img-exerciseOne/exercise1-2/test.png){: style="height:400px;width:1100px"}

    <br>

9. You can see our Deep Learning Model is able to identify which can is good and which can has a dent. On the right side is the color of each label and the confidence scores of how likely it is to be that object. 

    ![img](/img/mvi_8.4/img-exerciseOne/exercise1-2/results.png){: style="height:400px;width:900px"}



<b>Congrats, you have trained and deployed a model that can be used on Maximo Visual Inspection Mobile!</b> 



