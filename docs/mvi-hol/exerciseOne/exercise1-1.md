

# Exercise One - Maximo Visual Inspection Platform

In this lab, we have provided you with a set of images to train, a test image, and a model to use during this exercise in the <b>.zip files</b> in your registration email.


In this exercise you will be able to:

- Upload images to a data set and prepare those images through data augmentation
- Train and Deploy a Deep Learning Model 
- Make a project for Inspections



Before you begin, make sure you followed the steps in the [Prerequisites](prereqs.md) page.

<h2>Exercise 1.1 - Creating a Data Set and Image Preparation</h2>


1. Log into Maximo Visual Inspections using your credentials.

     ![img](/img/mvi-hol-imgs/img-exerciseOne/exercise1-1/login.png){: style="height:400px;width:500px"}

  

2. Click <b>Get Started</b>.

    ![img](/img/mvi-hol-imgs/img-exerciseOne/exercise1-1/getstarted.png){: style="height:300px;width:700px"}

3. You should now be in the <b>Data Sets</b> tab.

    ![img](/img/mvi-hol-imgs/img-exerciseOne/exercise1-1/dataset.png){: style="height:120px;width:700px"}

4. You will now drag and drop the <b>CansSampleDataSet.zip</b> file that you saved to your computer or click <b>Import .zip file</b> and select the .zip file.

    ![img](/img/mvi-hol-imgs/img-exerciseOne/exercise1-1/dataZip.png){: style="height:600px;width:700px"}

5. Once the data set is done uploading, <b>click</b> in the lower half of the tile of the data set that you just uploaded. 

    ![img](/img/mvi-hol-imgs/img-exerciseOne/exercise1-1/startD.png)

6. Click on the <b>Select</b> checkbox to select all images. Then, click on the <b>Label Objects</b> button.

    ![img](/img/mvi-hol-imgs/img-exerciseOne/exercise1-1/dataLabel.png){: style="height:500px;width:700px"}

7. On the right-hand side of the page click <b>Add Label</b>. We will begin to add labels of cans that are dented and cans that are not dented.

    ![img](/img/mvi-hol-imgs/img-exerciseOne/exercise1-1/labell.png){: style="height:200px;width:1000px"}

8. Type “good” and then hit the <b>Enter</b> key (or click the <b>Add</b> button). Then, type “bad_dented” and then hit the <b>Enter</b> key (or click the <b>Add</b> button). Click the <b>Ok</b> button when the labels are created.

    ![img](/img/mvi-hol-imgs/img-exerciseOne/exercise1-1/good.png)
    ![img](/img/mvi-hol-imgs/img-exerciseOne/exercise1-1/addLabels.png){: style="height:250px;width:500px"}

9. Look at the image and determine whether the can is “good” or “bad_dented”. Then, click the specific label name for the image. Now you can click the <b>Box</b> label.

    ![img](/img/mvi-hol-imgs/img-exerciseOne/exercise1-1/boxL.png){: style="height:400px;width:900px"}


10. Click and drag your mouse over the can for each label. Labeling each can "good" or "bad_dented."

    ![img](/img/mvi-hol-imgs/img-exerciseOne/exercise1-1/drag.png){: style="height:400px;width:900px"}

11. Try to get the labels around the cans as close as possible. If you need to adjust your label, just <u>uncheck</u> the <b>Box</b> label and use the 4 white corners to <u>adjust</u> the label. You can also select the trash can symbol to delete the label.

    ![img](/img/mvi-hol-imgs/img-exerciseOne/exercise1-1/mistakes.png){: style="height:400px;width:900px"}

12. Use the <b>Blue Arrow</b> to scroll up and down through all of the images or over your mouse over and scroll. Label all of the “good” and “bad_dented” cans in all of the images.

    ![img](/img/mvi-hol-imgs/img-exerciseOne/exercise1-1/blueA.png){: style="height:400px;width:500px"}

13. Once finished, go back to the data set by clicking the back arrow.

    ![img](/img/mvi-hol-imgs/img-exerciseOne/exercise1-1/backA.png){: style="height:400px;width:900px"}



<h3><b><center>Data Augmentation</center></b></h3> 

When building out a Deep Learning model the more images you add to your data set, the more accurate your model will be. Maximo Visual Inspection has a data augmentation feature which allows you to expand your original data set by applying one or more operations against the images. You can Blur, Sharpen, Noise, Color, Crop, Vertical Flip, Horizontal Flip, and Rotate your images. This will create a new a new data set with the added affects you choose. For the purpose of this lab, we will only be using the <b>Horizontal</b> and <b>Vertical Flip</b>. 




14. Now that your imaged have been labeled, let's begin to augment the data. You should be on our <b>Cans Sample Data Set</b> in the Data set tab. 

    ![img](/img/mvi-hol-imgs/img-exerciseOne/exercise1-1/startD.png){: style="height:600px;width:700px"}

15. Now, click on the <b>Augmented Data</b> button.

    ![img](/img/mvi-hol-imgs/img-exerciseOne/exercise1-1/augmentB.png){: style="height:600px;width:700px"}

16. Click the <b>Vertical flip</b> checkbox, the <b>Horizontal flip</b> checkbox, and then the <b>Continue</b> button. Note: Under <b>New Creations</b>, you can see how many new images will be created. 

    ![img](/img/mvi-hol-imgs/img-exerciseOne/exercise1-1/aContinue.png){: style="height:400px;width:800px"}

17. When prompted, enter "Cans-Augmented-(YourInitials)" for the name of the new data set and then click the Create data set button. Wait until the augmentation process completes (the running status appears in the top right corner).

    ![img](/img/mvi-hol-imgs/img-exerciseOne/exercise1-1/createDataSet.png){: style="height:400px;width:800px"}


18. Click on the back button to return to the main Data Sets page. 

    ![img](/img/mvi-hol-imgs/img-exerciseOne/exercise1-1/back.png){: style="height:200px;width:900px"}

19.  Your new augmented data set <b>Cans-Augmented-(YourInitials)</b> should be there, with three times the number of images than in your original data set. Open this new data set that you just created by clicking in the lower half of the tile. You can see how MVI created these new images with each new image having a ![img](/img/mvi-hol-imgs/img-exerciseOne/exercise1-1/symbol.png){: style="height:30px;width:30px"} symbol on it, saving you time from taking more photos.

    ![img](/img/mvi-hol-imgs/img-exerciseOne/exercise1-1/new.png){: style="height:600px;width:800px"}


<b>Congrats, you have made a data set that is ready to be trained!</b>



