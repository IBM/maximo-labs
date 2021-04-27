#Train, Test and Save Prediction Model in Monitor

Monitor provides an APi to store and retrieve models that can  be called using using a custom function to make predictions. 
This exercise include a sample Jupyter Notebook that shows you how to retrieve data from Monitor and a csv file to train 
a model. How to store a model and retrieve a model from Monitor make a prediction. 

In these exercises using the provided Jupyter Notebook you will:

-  [Train a Model](#TrainModel)
-  [Test a Model](#TestModel)
-  [Save a Model in Monitor](#SaveModel)
-  [Retrieve a Model from Monitor](#RetrieveModel)

##Train a Model 
<a name="TrainModel"></a>

!!! note
    If this lab is instructor led, he or she will provide you access to virtual image that has the Jupyter and the notebooks already installed and skip steps 2 and 3 of this exercise. 
    They have already been completed.

Open and study the project notebook named [maximo_auto_ai-extra-trees-pump.ipynb](http://localhost:8888/notebooks/notebooks/maximo_auto_ai-extra-trees-pump.ipynb) using the [instructions](setup_local_environment.md) for the 
virtual environment you created.  Rename the notebook, change the name of your notebook by appending your own initials to the end of the Jupyter Notebook name. Select `file` menu and `rename`  

Set Monitor credentials and entity type for your your instance of Monitor.  

    credentials = {}
    with open('/Users/carlos.ferreira1ibm.com/ws/autoai/beta-1_credentials.json', encoding='utf-8') as F:
        credentials = json.loads(F.read())
    db = Database(credentials = credentials)
    db_schema = "BLUADMIN" #  set if you are not using the default
    entity_type = 'pump_co'
   

Build a model for each pump.  The `Entity ID` uniquely identifies each asset the model should be trained for. Set the
`Entity_Type_ID` the model should be associated with.  There are two ways Search the custom function logs in Cloud Object 
Storage using Cyberduck as described in the exercise named [Download, Install and Configure CyberDuck for View Logs in Monitor](#cyberduck) 
Search for 'entity_type_id'.  It should be on the first row of the log files. Download,  

    entity_type = 'pump_cp'
    entity_type_id = 19305
    entity_name = '04714B6037F8'
    a_df = r_df.loc[r_df['device_id'] == entity_name, :]
    print ('a_df.shape 1')
    print (a_df.shape)
    print (a_df)
   
This code in the notebook splits the data into train and test subsets.

    from sklearn.model_selection import train_test_split 
    X_train, X_test, y_train, y_test = train_test_split(x, y, test_size=0.20, random_state=42)
    
This code in the notebook creates the model using the train data.

    extra_trees_model = ExtraTreesRegressor()
    extra_trees_model.fit(X_train, y_train.values.ravel() )
  
   
## Test a Model 
<a name="TestModel"></a>

This code in the notebook tests the model using the test data to make a prediction.  It should return a power 
 prediction = 11.471

    row = [[ 971.0,  989.633,  331.0,  26.44]]
    yhat = extra_trees_model.predict(row)    
    x_pos_predictions = extra_trees_model.predict(X_test)
    
This code in the notebook plots the prediction accuracy by comparing prediction values versus true values.  

    plt.scatter(y_test, x_pos_predictions)
    plt.xlabel('True Values')
    plt.ylabel('Predictions')
    
![Plot Compare Predictions](/img/monitor_autoai_8.4/t01.png)


This code in the notebook calculates the model accuracy. Smaller values indicate better accuracy making predictions. 

    from sklearn import metrics
    print("Mean Absolute Error")
    print(metrics.mean_absolute_error(y_test, x_pos_predictions))
    print("Mean Square Error")
    print(metrics.mean_squared_error(y_test, x_pos_predictions))
    print("Root Mean Square Error")
    print(np.sqrt(metrics.mean_squared_error(y_test, x_pos_predictions)))

![RMSE](/img/monitor_autoai_8.4/t02.png)
   
##Save Model to Monitor.  
<a name="SaveModel"></a>
In the notebook, change the name of your model by replacing `co` with your own initials `power_extra_trees_model_co.mod` 

Save the model to disk locally and try to read the model and make a prediction.


    import pickle
    model_file_path = '/Users/carlos.ferreira1ibm.com/ws/autoai/models/power_random_forest.mod'
    pickle.dump(extra_trees_model, open(model_file_path, 'wb'))
    model = pickle.load(open(model_file_path, 'rb'))
    row = [[1160.0, 1190.626, 438.0, 33.16]]    
    yhat = model.predict(row)

Save the model in Monitor.  Make sure you replace the `co` in the model name to youro own initials  `power_extra_trees_model_co.mod`


    from iotfunctions.db import Database
    import json
    credentials = {}
    credential_file = '/Users/carlos.ferreira1ibm.com/ws/autoai/beta-1_credentials.json'    
    with open(credential_file, encoding='utf-8') as F:
        credentials = json.loads(F.read())
    db_ctp = Database(credentials=credentials, entity_type_id=entity_type_id )
    from datetime import datetime
    model_name = 'power_extra_trees_model_co.mod'
    try:
        feature_vector = ['speed', 'flow', 'voltage', 'CURRENT' ]
        model_dict  = {
        'model': model,
        'feature_vector': feature_vector,
        'timesstamp' : datetime.now().strftime("%Y%m%d%H%M%S")
        }
        db_ctp.model_store.store_model(model_name, model_dict) 
    except Exception as e:
        print('Model store failed with ' + str(e))
        pass


## Retrieve a Model and Make Predictions  
<a name="RetrieveModel"></a>

Retrieve the model from Monitor and try to  make a prediction.  


    try:
        model_dict = db_ctp.model_store.retrieve_model(model_name)
        print("load model")
        monitor_model = model_dict["model"]
        print(monitor_model)
        feature_vector = model_dict["feature_vector"]
        print(feature_vector)
        feature_vector = model_dict["timesstamp"]
        print(feature_vector)
    except Exception as e:
        print("Model retrieval failed with " + str(e))
        pass
    
Congratulations you know have learned how to use the provide Jupyter notebook to train test and deploy a prediction model to Monitor.  For more resource intensive models you should deploy them to a separate runtime service to make predictions.  In  the next lab exercise you will register the provided Monitor Custom function that will allow you to send the pump metrics data to your deployed model to make a prediction.  
