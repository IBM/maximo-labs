

<h1>Exercise One - Maximo Visual Inspection Platform</h1>

In this lab, we have provided you with a set of images for training, a test image, and a model to use during the exercise.


In this exercise you will be able to:

- Upload images to a data set 
- Label those images for Object Detection
- Increase the number of images using data augmentation
- Train and deploy a Deep Learning Model 
- Make a project for Inspections



Before you begin, make sure you followed the steps in the Prerequisites page.



<h2>Exercise 1.1 - Creating a Data Set and Image Preparation</h2>


1. Log into Maximo Visual Inspections using your credentials.

     ![img](/img/mvi-hol-imgs/img-exerciseOne/exercise1-1/login.png){: style="height:400px;width:700px;"}

    <br>

2. Click `Get Started`.

    ![img](/img/mvi-hol-imgs/img-exerciseOne/exercise1-1/getstarted.png){: style="height:300px;width:700px;"}
    
    <br>

3. You should now be in the `Data Sets`tab.

    ![img](/img/mvi-hol-imgs/img-exerciseOne/exercise1-1/dataset.png){: style="height:120px;width:700px"}

    <br>

4. Select `Create new data set`.

     ![img](/img/mvi-hol-imgs/img-exerciseOne/exercise1-1/create.png){: style="height:400px;width:250px"}

     <br>

5. Name your net data set `Cans data set-YourInitials`. Then, `Create`.

    ![img](/img/mvi-hol-imgs/img-exerciseOne/exercise1-1/create3.png){: style="height:250px;width:500px"}

     <br>

6. Select the bottom half of the data set you just created.

    ![img](/img/mvi-hol-imgs/img-exerciseOne/exercise1-1/create4.png){: style="height:400px;width:400px"}

    <br>

7. You will now drag and drop the 5 images of cans we provided you onto the `Drop files here` box or click `Import files` and select the images.

    ![img](/img/mvi-hol-imgs/img-exerciseOne/exercise1-1/create6.png){: style="height:450px;width:650px"}

    <br>

8. Select `Add files`.

    ![img](/img/mvi-hol-imgs/img-exerciseOne/exercise1-1/create7.png){: style="height:200px;width:700px"}

    <br>

    Once the images are done uploading, we will begin the labeling process for Object Detection.

    <br>

9. Click the `Select` check box next to the `Label actions` button. Then, click on the `Label objects` button.

    ![img](/img/mvi-hol-imgs/img-exerciseOne/exercise1-1/startD.png)

    <br>

    We will now add labels of cans that are dented and cans that are not dented.

    <br>

7. On the right-hand side of the page click `Add Label`. 

    ![img](/img/mvi-hol-imgs/img-exerciseOne/exercise1-1/labell.png){: style="height:300px;width:700px"}

    <br>

8. Type “good” and then hit the `Enter` key (or click the `Add` button). Then, type “bad_dented” and then hit the `Enter` key (or click the `Add` button). Click the `Ok` button when the labels are created.

    ![img](/img/mvi-hol-imgs/img-exerciseOne/exercise1-1/good.png)
    ![img](/img/mvi-hol-imgs/img-exerciseOne/exercise1-1/addLabels.png)

    <br>

9. Look at the image and determine whether the can is “good” or “bad_dented”. Then, click the specific object name for the image and click the `Box` label.

    ![img](/img/mvi-hol-imgs/img-exerciseOne/exercise1-1/boxL.png){: style="height:500px;width:1200px"}

    <br>

10. Click and drag your mouse over the can for each label. Labeling each can "good" or "bad_dented."

    ![img](/img/mvi-hol-imgs/img-exerciseOne/exercise1-1/drag.png){: style="height:400px;width:900px"}

    <br>

11. Try to get the boxes around the cans as close as possible. If you need to adjust your label, just <u>uncheck</u> the `Box` label first (box turns BLUE when ACTIVE, BLACK when not active) and use the 4 white corners to <u>adjust</u> the label. You may need to click on one of the can boxes to select it, if the 4 white corner boxes are not showing. You can also select the <u>trash</u> can symbol next to the label on the top right to delete it.

    ![img](/img/mvi-hol-imgs/img-exerciseOne/exercise1-1/mistakes.png){: style="height:400px;width:900px"}

    <br>

12. Use the `Blue Arrow` to scroll up and down through all of the images or hover your mouse over and scroll. Label all of the “good” and “bad_dented” cans in all of the images.

    ![img](/img/mvi-hol-imgs/img-exerciseOne/exercise1-1/blueA.png){: style="height:400px;width:500px"}

13. Once finished, go back to the data set by clicking the back arrow.

    ![img](/img/mvi-hol-imgs/img-exerciseOne/exercise1-1/backA.png){: style="height:400px;width:900px"}



<h3><b><center>Data Augmentation</center></b></h3> 

When building out a Deep Learning model the more images you add to your data set, the more accurate your model will be. Maximo Visual Inspection has a data augmentation feature which allows you to expand your original data set by applying one or more operations against the images. You can Blur, Sharpen, Noise, Color, Crop, Vertical Flip, Horizontal Flip, and Rotate your images. This will create a new data set with the added affects you choose. For the purpose of this lab, we will only be using the <b>Horizontal flip</b> and <b>Vertical flip</b>. 


14. Now that your imaged have been labeled, let's begin to augment the data. You should be on our `Cans data Set-YourInitials` in the Data set tab. 

    ![img](/img/mvi-hol-imgs/img-exerciseOne/exercise1-1/dataset1.png){: style="height:480px;width:500px"}

    <br>

15. Now, click on the `Augment Data` button.

    ![img](/img/mvi-hol-imgs/img-exerciseOne/exercise1-1/augmentB.png){: style="height:450px;width:700px"}


    <br>


16. Click the `Vertical flip` checkbox, the `Horizontal flip` checkbox, and then the `Continue` button. (you may have to use the scroll bar to the right and scroll 
down a little to display the vertical and horizontal flip options)  

    ![img](/img/mvi-hol-imgs/img-exerciseOne/exercise1-1/aContinue.png){: style="height:400px;width:800px"}

    Note: Under `New Creations`, you can see how many new images will be created.

    <br>

17. When prompted, enter `Cans-Augmented-YourInitials` for the name of the new data set and then click the `Create data set` button. Wait until the augmentation process completes. (the running status appears in the top right corner)

    ![img](/img/mvi-hol-imgs/img-exerciseOne/exercise1-1/createDataSet.png){: style="height:400px;width:800px"}

    <br>

18. Click on the back button to return to the main data sets page. 

    ![img](/img/mvi-hol-imgs/img-exerciseOne/exercise1-1/back.png){: style="height:200px;width:900px"}

    <br>

19.  Your new augmented data set <b>Cans-Augmented-YourInitials</b> should be there, with three times the number of images than in your original data set. 

    <br>

20. Open this new data set that you just created by clicking in the lower half of the tile. You can see how MVI created these new images with each new image having a ![img](/img/mvi-hol-imgs/img-exerciseOne/exercise1-1/symbol.png){: style="height:30px;width:30px"} symbol on it, saving you time from taking more photos.

    ![img](/img/mvi-hol-imgs/img-exerciseOne/exercise1-1/new.png){: style="height:500px;width:600px"}


<b>Congrats, you have made a data set that is ready to be trained!</b>



