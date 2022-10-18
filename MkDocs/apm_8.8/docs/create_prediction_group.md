# Prediction Groups

Maximo Predict includes [prediction groups](https://www.ibm.com/docs/en/mhmpmh-and-p-u/8.5.0?topic=overviews-maximo-predict-850)  to identify which assets should be evaulated with a specific model template noteboo. 


Model templates are optimized for specific asset classes that have similar types of anomaly behaviors and failure modes.   The behaviors may be different between a screw pump and a submersible  centrifugal pump. By creating prediction groups and linking them to the deployed trained models that work with those assets.  You can better ensure the accuracy of the model scoring results which helps avoid false positives.  It also helps ensures the proper actions are being taken for addressing asset anomaly and failure alerts so you can choose the right asset inspection, replacement and repair work order.

In this exercise the Reliability Engineer uses Predict to:

- [Creates a Prediction Group](#prediction_group) to identify which assets to use in a prediction failure date notebook template. 

In this exercise the Datascientist:

- [Programatically set the prediction group to use with notebook](link-predict-notebook) using the Predict API choose the Predict group to use with a trained, deployed and activated model template using Watson Studio.


!!!!
    You must complete the previous exercise for [Data Preparation and Loading Using Notebooks](data_preparation.md) exercise before you start this exercise.

Pre-requisites 

- Review Predict documentation for the [list of available models](https://www.ibm.com/docs/en/mhmpmh-and-p-u/8.5.0?topic=overviews-maximo-predict-850).
- Ensure your MAS Predict environment is running and you have access.  Try your server URL that might look something like: [https://main.predict.ivt11rel87.ivt.suite.myhost.com/ibm/pmi/service/rest/system/info](https://main.predict.ivt11rel87.ivt.suite.myhost.com/ibm/pmi/service/rest/system/info)


## Create a Prediction Group 
<a name="prediction_group"></a>


## Programatically Set the prediction group
<a>name="link-predict-notebook"></a>
1. Upload

Congratulations.  You created a Prediction Group](#prediction_group) to identify which assets to use in a prediction failure date notebook template. 

You have programmatically set the prediction group to use with notebook so that you can better understand asset conddi
