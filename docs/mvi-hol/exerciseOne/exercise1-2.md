

<h2>Exercise 1.2 - Train and Deploy a Deep Learning Model</h2>


<b>Train Model:</b> Now that our data set has been created, we are ready to start training our Deep Learning Model. The more images you use to train a model on, the more accurate the model will be. Therefore, we provided you with an accurate model whereas this model your building with only 5 images will not be as accurate. 

1. Make sure you are on your `Cans-Augmented-YourInitials` data set. 

    <br>

2. Click `Train model`.

    ![img](/img/mvi-hol-imgs/img-exerciseOne/exercise1-2/trainModel.png){: style="height:600px;width:800px"}

    <br>

3.   Give your model the name of `Dent Detection Model-YourInitials`.

    ![img](/img/mvi-hol-imgs/img-exerciseOne/exercise1-2/nameModel.png){: style="height:300px;width:800px"}

    <br>

4.   Select `Object Detection` as the type of training and switch `Advanced settings` on in the top right corner.

    ![img](/img/mvi-hol-imgs/img-exerciseOne/exercise1-2/advanced.png){: style="height:300px;width:800px"}

    <br>

5.   Scroll down to the `Optimize Model` section, select `Tiny YOLO v2` as the model type. 

6. Select `CoreML` as the training options, which is what allows the model to be used on an iOS device. 

7. In the `Model hyperparameters`, change `Max Iteration` to `2000`.

    ![img](/img/mvi-hol-imgs/img-exerciseOne/exercise1-2/yolo.png){: style="height:400px;width:1000px"}

    We are only using 2000 iterations because we don't want to stretch the GPU too thin. Also, it takes a lot more time to train the model.
    
    <br>

8.  Click the `Train Model` button at the top of the page.

    ![img](/img/mvi-hol-imgs/img-exerciseOne/exercise1-2/trainModelB.png){: style="height:400px;width:800px"}

    <br>

9. The MVI Platform will schedule the model training and begin training when the resources become available.  The timing of training varies on how many iterations you've chosen and how much data you’re using to train the model. 

    ![img](/img/mvi-hol-imgs/img-exerciseOne/exercise1-2/training.png){: style="height:400px;width:1000px"}



<b>Deploy Model:</b> Now that you have created a Deep Learning model, we are going to deploy the model. We will be using the model that was provided in this lab while the model you created is training. The model we have provided was trained using over 2,000 images. Therefore, it will be significantly more accurate than the model you just created. 

1. First, select the `Models` tab.

    ![img](/img/mvi-hol-imgs/img-exerciseOne/exercise1-2/models.png){: style="height:300px;width:800px"}

    <br>

2. Just like we did with the Data Set .zip file, we will do the same with the Model .zip file. You will drag and drop the `Dent Detection Model - Lab.zip` file that you saved to your computer or click `Import .zip file` and select the .zip file. Also, you can click the `x` on the progress bar for your model that is training if it is in the way. 

    ![img](/img/mvi-hol-imgs/img-exerciseOne/exercise1-2/modelzip.png){: style="height:600px;width:900px"}

    <br>

3. Give at least 4-5 minutes for the model to finished uploading. 

    ![img](/img/mvi-hol-imgs/img-exerciseOne/exercise1-2/modelupload.png){: style="height:250px;width:900px"}

    <br>

4. Once the model has finished uploading, click the checkbox and select the `Deploy Model` button.

    ![img](/img/mvi-hol-imgs/img-exerciseOne/exercise1-2/deploymodel.png){: style="height:600px;width:900px"}

    <br>

5. Select `Deploy`.

    ![img](/img/mvi-hol-imgs/img-exerciseOne/exercise1-2/deploy.png){: style="height:300px;width:500px"}

    <br>

6. Wait a couple seconds for the model to be deployed. It should look like the picture below when it is ready.

    ![img](/img/mvi-hol-imgs/img-exerciseOne/exercise1-2/deployed.png){: style="height:300px;width:900px"}

    <br>

7. Click on the deployed model and then we can see the details of the model.

    ![img](/img/mvi-hol-imgs/img-exerciseOne/exercise1-2/details.png){: style="height:300px;width:900px"}

    <br>

8. Now scroll down so we can test the model. Drag the image we provided you for testing (it was not used to train this model) and drop it into the `Test Model` box or select `Import` and upload the picture. 

    ![img](/img/mvi-hol-imgs/img-exerciseOne/exercise1-2/test.png){: style="height:400px;width:1100px"}

    <br>

9. You can see our Deep Learning Model is able to identify which can is good and which can has a dent. On the right side, is the color of each label and the confidence scores of how likely it is that object. 

    ![img](/img/mvi-hol-imgs/img-exerciseOne/exercise1-2/results.png){: style="height:400px;width:900px"}



<b>Congrats, you have trained and deployed a model that can be used on Maximo Visual Inspection Mobile!</b> 



