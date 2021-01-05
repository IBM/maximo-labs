<h2>Exercise 2.1 - Create the Inspection</h2>

In this exercise you will be able to:

- Create an Inspection on your phone
- Conduct the Inspection
- See your inspections results on a real-time Dashboard

<br>
Before you begin, make sure you followed the steps in the Prerequisites page pertaining to the app.

<h2>Exercise 2.1 - Create an Inspection</h2>

In this exercise, we will be creating an inspection that will be able to identify when an aluminum can has a dent or does not have a dent.

1. Go to the MVI Mobile app and click the ![img](/img/mvi_saas/img-exerciseTwo/img-exercise2-1/plusSign.jpg){: style="height:30px;width:30px"} sign in the top right corner of your screen.

2. Name your Inspection and select the project we previously created in Exercise 1.3.

    ![img](/img/mvi_saas/img-exerciseTwo/img-exercise2-1/inspectPhoto1.png){: style="height:400px;width:250px;margin-left:40px"}
    ![img](/img/mvi_saas/img-exerciseTwo/img-exercise2-1/inspectPhoto2.png){: style="height:400px;width:250px;margin-left:40px"}

3. Then select <b>Model</b>, and the <b>Dent Detection Model</b>.

    ![img](/img/mvi_saas/img-exerciseTwo/img-exercise2-1/inspectPhoto3.png){: style="height:400px;width:250px;margin-left:40px"}
    ![img](/img/mvi_saas/img-exerciseTwo/img-exercise2-1/model.png){: style="height:400px;width:250px;margin-left:40px"}

4. After you select the model, select <b>Set Thresholds</b>.

    ![img](/img/mvi_saas/img-exerciseTwo/img-exercise2-1/setT.png){: style="height:400px;width:250px;margin-left:40px"}

    - Put <b>Ignore Results Below</b> threshold to 70%.

        ![img](/img/mvi_saas/img-exerciseTwo/img-exercise2-1/ignoreR.png){: style="height:400px;width:250px;margin-left:40px"}

    - Select <b>Advanced</b> under good and switch the <b>No Action</b> button to green.

        ![img](/img/mvi_saas/img-exerciseTwo/img-exercise2-1/good.png){: style="height:400px;width:250px;margin-left:40px"}
        ![img](/img/mvi_saas/img-exerciseTwo/img-exercise2-1/noAction.png){: style="height:400px;width:250px;margin-left:40px"}

    - Go back to <b>Set Thresholds</b> and select <b>Advanced</b> under bad_dented.

        ![img](/img/mvi_saas/img-exerciseTwo/img-exercise2-1/baddentedA.png){: style="height:400px;width:250px;margin-left:40px"}

        - Put <b>bad_dented</b> Threshold to <b>70%</b>. Then, select <b>Additional Rules</b>.

        ![img](/img/mvi_saas/img-exerciseTwo/img-exercise2-1/additionalR.png){: style="height:400px;width:250px;margin-left:40px"}
        

        - Select <b>Expected Count</b> and put <b>0</b>, then go back to <b>Set Thresholds.</b>

        ![img](/img/mvi_saas/img-exerciseTwo/img-exercise2-1/expectedC.png){: style="height:400px;width:250px;margin-left:40px"}
        ![img](/img/mvi_saas/img-exerciseTwo/img-exercise2-1/expected0.png){: style="height:400px;width:250px;margin-left:40px"}

5. Select <b>Model</b> to go back to your inspection.

    ![img](/img/mvi_saas/img-exerciseTwo/img-exercise2-1/modelS.png){: style="height:400px;width:250px;margin-left:40px"}

6. Now, select <b>Data Set</b> and <b>Create a New Data Set</b>.

    ![img](/img/mvi_saas/img-exerciseTwo/img-exercise2-1/dataS.png){: style="height:400px;width:250px;margin-left:40px"}
    ![img](/img/mvi_saas/img-exerciseTwo/img-exercise2-1/dataS2.png){: style="height:400px;width:250px;margin-left:40px"}

    - Name your data set <b>Inspection Results-(YourName)</b> and select <b>Done</b>.

    ![img](/img/mvi_saas/img-exerciseTwo/img-exercise2-1/newDS.png){: style="height:400px;width:250px;margin-left:40px"}
 
7. You will be brought back to the main inspection screen, then click <b>Done</b>.

    ![img](/img/mvi_saas/img-exerciseTwo/img-exercise2-1/done.png){: style="height:400px;width:250px;margin-left:40px"}

8. Click on your newly created inspection and wait for your inspection to finish downloading. 

    ![img](/img/mvi_saas/img-exerciseTwo/img-exercise2-1/downloading.png){: style="height:400px;width:250px;margin-left:40px"}

9. Once it is finished downloading, you can move on to the next exercise.

    ![img](/img/mvi_saas/img-exerciseTwo/img-exercise2-1/downloaded.png){: style="height:400px;width:250px;margin-left:40px"}

<b>Congrats, you have created an inspection on Maximo Visual Inspection Mobile!</b>
