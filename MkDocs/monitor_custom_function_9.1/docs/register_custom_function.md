# Objectives
In this Exercise you will learn how to register custom function with Maximo Monitor.

### Install the custom function locally

Install the custom function in your local environment. Update the variables in {} to match your environment.
<pre class="language-bash"><code>
    pip3 install git+https://{XXXXXX}@github.com/{user_id}{path_to_repository}@starter_package --upgrade
</code></pre>

Replace  `{xxxxxx}` with your personal access token.

<ol> <b> Test your custom function locally </b></br>

<li>Create a script called test_my_custom_function.py in the scripts folder. In the script, import Python libraries and packages:
<pre class ="language-bash"><code>
    import datetime as dt
    import json
    import pandas as pd
    import numpy as np
    from sqlalchemy import Column, Integer, String, Float, DateTime, Boolean, func
    from iotfunctions.base import BaseTransformer
    from iotfunctions.metadata import EntityType
    from iotfunctions.db import Database
    from iotfunctions import ui
</code></pre>
</li>
<li>
    Connect to Maximo Monitor. In the test_my_custom_function.py script, add:
    <pre class ="language-bash"><code>
    with open('credentials_as.json', encoding='utf-8') as F:
    credentials = json.loads(F.read())
    db_schema = None
    db = Database(credentials=credentials)
    </code></pre>
</li>
<li> Import and instantiate the function. In the test_my_custom_function.py script, add the following code. Update the variables in {} to match your environment. 
<pre class ="language-bash"><code>
    from custom{yourinitials}.multiplybyfactor{yourinitials} import MultiplyByFactor{YourInitials}
    fn = MultiplyByFactor{YourInitials}(
    input_items = ['speed', 'travel_time'],
    factor = '2',
    output_items = ['adjusted_speed', 'adjusted_travel_time']
              )
    df = fn.execute_local_test(db=db, db_schema=db_schema, generate_days=1,to_csv=True)
    print(df)
    </code></pre>
</li>
<li>Run the script from the command line. The date frame results are saved to a .csv file. Look for df_test_entity_for_multiplybyfactor{your_initials}.csv in the scripts directory. Enter:
    <pre class ="language-bash"><code>
        python3 test_my_custom_function.py
     </code></pre>
</li>
</ol>

### Register your custom function
<ol> 
    <li> Create a script called register_my_custom_function.py in the scripts folder. In the script, import Python libraries and packages:
    </li>
    <li>
    <pre class="language-bash"><code>
    import datetime as dt
    import json
    import pandas as pd
    import numpy as np
    from sqlalchemy import Column, Integer, String, Float, DateTime, Boolean, func
    from iotfunctions.base import BaseTransformer
    from iotfunctions.metadata import EntityType
    from iotfunctions.db import Database
    from iotfunctions import ui
    </code></pre>
    </li>
    <li>Connect to Maximo Monitor. In the register_my_custom_function.py script, add:
        <pre><code class="language-bash">
        with open('credentials_as.json', encoding='utf-8') as F:
        credentials = json.loads(F.read())
        db_schema = None
        db = Database(credentials=credentials)
        </code></pre>
    </li>
    <li>In the register_my_custom_function.py script, to register the function, add the following code. Update the variables in {} to match your environment.
        <pre><code class="language-bash">
        from custom{yourinitials}.multiplybyfactor{yourinitials} import MultiplyByFactor{YourInitials}
        db.register_functions([MultiplyByFactor{YourInitials}])
        </pre></code>
    </li>
    <li> Run the script from the command line. For example:
        <pre><code class="language-bash">
            python3 register_my_custom_function.py
        </code></pre>
    </li>
</ol>

---
Congratulations you have successfully registerd a custom function with maximo monitor</br>


[Add device]: img/add_device_01.png
[Use device library]: img/add_device_02.png
