# Objectives
In this Exercise you will apply created custom function MultiplyByFactor to the device type.

### Create a sample device type

- In Maximo Monitor, navigate to side nav bar  <b>Setup > Device Types</b>
- Click the plus (+) icon to add a new device type
- Select the Robot sample type template
- Assign a descriptive name to the device type
- Click Create
- Select your new device type and click Set up device type
- Navigate to the Data tab

!!! note
    Metrics can take up to 5 minutes to generate data.

### Apply the custom function to the device type.

- If you have not created a distance metric, add it. Follow the steps in [Tutorial: Adding expressions](https://www.ibm.com/docs/en/masv-and-l/maximo-monitor/cd?topic=tutorials-tutorial-adding-expressions)
- Navigate to the Calculated Metric tab, click Create calculated metric
- Select your MultiplyByFactor{YourInitials} function from the catalog
- Set the appropriate scope and click Next
- Configure the function parameters:
    - Factor field: Enter 2
    - Input_item field: Select distance
- Click Next.
- Rename the output to 'adjusted_distance'.
- Click Create.
- In the data item list, select adjusted_distance. Wait up to 5 minutes for Maximo Monitor to evaluate the custom function against the sample data.

---
Congratulations you have successfully applied your custom function.</br>
