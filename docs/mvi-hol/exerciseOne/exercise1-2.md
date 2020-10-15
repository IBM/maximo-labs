

<h1>Exercise 1.2 - Train and Deploy a Deep Learning Model</h1>


<b>Train Model:</b> Now that our data set has been created, we are ready to start training our Deep Learning Model. The more images you train a model on, the more accurate the model is. Therefore, we provided you with an accurate model whereas this model your building with only 20 images will not be as accurate. 

1. Make sure you are on your <b>Cans-Augmented-(YourInitials)</b> Data Set. 

2. Click <b>Train model</b>.

    ![img](/img/mvi-hol-imgs/img-exerciseOne/exercise1-2/trainModel.png){: style="height:600px;width:800px"}

3.   Give your model the name of "Dent Detection Model-YourIntials".

    ![img](/img/mvi-hol-imgs/img-exerciseOne/exercise1-2/nameModel.png){: style="height:300px;width:800px"}

4.   Select <b>Object Detection</b> as the type of training and switch <b>Advanced settings</b> on in the top right corner.

    ![img](/img/mvi-hol-imgs/img-exerciseOne/exercise1-2/advanced.png){: style="height:300px;width:800px"}


5.   Scroll down to the <b>Optimize Model</b> section, select <b>Tiny YOLO v2</b> as the model type. Then select <b>CoreML</b> as the training options, which is what allows the model to be used on an iOS device. In the <b>Model hyperparameters</b>, change <b>Max Iteration</b> to <b>2000</b>.

    ![img](/img/mvi-hol-imgs/img-exerciseOne/exercise1-2/yolo.png){: style="height:500px;width:1000px"}

6.  Click the <b>Train Model</b> button at the top of the page.

    ![img](/img/mvi-hol-imgs/img-exerciseOne/exercise1-2/trainModelB.png){: style="height:400px;width:800px"}

7.   Your model will then begin to schedule the training and begin training. The timing of training varies on how many iterations you've chosen and how much data your training your model on. 

    ![img](/img/mvi-hol-imgs/img-exerciseOne/exercise1-2/training.png){: style="height:700px;width:1000px"}



<b>Deploy Model:</b> Now that you have created a Deep Learning model, we are going to deploy the model. We will be using the model that was provided in this lab while the model you created is training. This model we have provided is trained on over 2,000 images of cans. Therefore, it will be significantly more accurate than the model you just created. 

1. First, select the <b>Models</b> tab.

    ![img](/img/mvi-hol-imgs/img-exerciseOne/exercise1-2/models.png){: style="height:300px;width:800px"}


2. Just like we did with the Data Set .zip file, we will do the same with the Model .zip file. You will drag and drop the <b>Dent Detection Model.zip</b> file that you saved to your computer or click <b>Import .zip file</b> and select the .zip file.

    ![img](/img/mvi-hol-imgs/img-exerciseOne/exercise1-2/modelzip.png){: style="height:600px;width:900px"}


3. Give at least 4-5 minutes for the model to finished uploading. 

    ![img](/img/mvi-hol-imgs/img-exerciseOne/exercise1-2/modelupload.png){: style="height:600px;width:900px"}

4. Once the model has finished uploading, click the checkbox and select the <b>Deploy Model</b> button.

    ![img](/img/mvi-hol-imgs/img-exerciseOne/exercise1-2/deploymodel.png){: style="height:600px;width:900px"}

5. Select <b>Deploy</b>.

    ![img](/img/mvi-hol-imgs/img-exerciseOne/exercise1-2/deploy.png){: style="height:300px;width:400px"}

6. Wait a couple seconds for the model to be deployed. It should look like the picture below when it is ready. Also, you can click the <b>x</b> on the progress bar for your model that is training if it is in the way. 

    ![img](/img/mvi-hol-imgs/img-exerciseOne/exercise1-2/deployed.png){: style="height:300px;width:900px"}

7. Click on the deployed model and then we can see the details of the model.

    ![img](/img/mvi-hol-imgs/img-exerciseOne/exercise1-2/details.png){: style="height:300px;width:900px"}

8. Now scroll down so we can test the model. Drag the image we provided you for testing (it was not used to train this model) and drop it into the <b>Test Model</b> box or select <b>Import</b> and upload the picture. 

    ![img](/img/mvi-hol-imgs/img-exerciseOne/exercise1-2/test.png){: style="height:400px;width:1100px"}

9. You can see our Deep Learning Model is able to identify which can is good and which can has a dent. On the right side, is the color of each label and the confidence scores of how likely it is that object. 

    ![img](/img/mvi-hol-imgs/img-exerciseOne/exercise1-2/results.png){: style="height:400px;width:900px"}



<b>Congrats, you have trained and deployed a model that can be used on Maximo Visual Inspection Mobile!</b> 

<footer>4</footer>

