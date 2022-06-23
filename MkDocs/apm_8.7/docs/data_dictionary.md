# Data Dictionary

In this exercise you will:

- [Understand the Asset Data ](data_dictionary) that will be used in these labs for each exercise.

!!! note
    This lab is still being developed, incomplete and may have errors.  We provide it to get your [feedback](https://github.com/IBM/monitor-hands-on-lab/issues/new) and allow you to reference the materials as the labs are built.


## Understand Asset Data
<a name="data_dictionary"></a>

This lab uses publicly available data for a centrifugal pump on [Kaggle.com](https://www.kaggle.com/datasets/nphantawee/pump-sensor-data/discussion/131429?resource=download)

The data is for a single pump that exhibited 7 failures.   The table below describes the columns with sensor time series data that are included in the CSV files. See the Kaggle web site for more explanation of the data.

| Metric Name    | Description                               |
|----------------|-------------------------------------------|
| SENSOR_00      | Motor Casing Vibration                    |
| SENSOR_01      | Motor Frequency A                         |
| SENSOR_02      | Motor Frequency B                         |
| SENSOR_03      | Motor Frequency C                         |
| SENSOR_04      | Motor Speed                               |
| SENSOR_05      | Motor Current                             |
| SENSOR_06      | Motor Active Power                        |
| SENSOR_07      | Motor Apparent Power                      |
| SENSOR_08      | Motor Reactive Power                      |
| SENSOR_09      | Motor Shaft Power                         |
| SENSOR_10      | Motor Phase Current A                     |
| SENSOR_11      | Motor Phase Current B                     |
| SENSOR_12      | Motor Phase Current C                     |
| SENSOR_13      | Motor Coupling Vibration                  |
| SENSOR_14      | Motor Phase Voltage AB                    |
| SENSOR_16      | Motor Phase Voltage BC                    |
| SENSOR_17      | Motor Phase Voltage CA                    |
| SENSOR_18      | Pump Casing Vibration                     |
| SENSOR_19      | Pump Stage 1 Impeller Speed               |
| SENSOR_20      | Pump Stage 1 Impeller Speed               |
| SENSOR_21      | Pump Stage 1 Impeller Speed               |
| SENSOR_22      | Pump Stage 1 Impeller Speed               |
| SENSOR_23      | Pump Stage 1 Impeller Speed               |
| SENSOR_24      | Pump Stage 1 Impeller Speed               |
| SENSOR_25      | Pump Stage 2 Impeller Speed               |
| SENSOR_26      | Pump Stage 2 Impeller Speed               |
| SENSOR_27      | Pump Stage 2 Impeller Speed               |
| SENSOR_28      | Pump Stage 2 Impeller Speed               |
| SENSOR_29      | Pump Stage 2 Impeller Speed               |
| SENSOR_30      | Pump Stage 2 Impeller Speed               |
| SENSOR_31      | Pump Stage 2 Impeller Speed               |
| SENSOR_32      | Pump Stage 2 Impeller Speed               |
| SENSOR_33      | Pump Stage 2 Impeller Speed               |
| SENSOR_34      | Pump Inlet Flow                           |
| SENSOR_35      | Pump Discharge Flow                       |
| SENSOR_36      | Pump UNKNOWN                              |
| SENSOR_37      | Pump Lube Oil Overhead Reservoir Level    |
| SENSOR_38      | Pump Lube Oil Return Temp                 |
| SENSOR_39      | Pump Lube Oil Supply Temp                 |
| SENSOR_40      | Pump Thrust Bearing Active Temp           |
| SENSOR_41      | Motor Non Drive End Radial Bearing Temp 1 |
| SENSOR_42      | Motor Non Drive End Radial Bearing Temp 2 |
| SENSOR_43      | Pump Thrust Bearing Inactive Temp         |
| SENSOR_44      | Pump Drive End Radial Bearing Temp 1      |
| SENSOR_45      | Pump non Drive End Radial Bearing Temp 1  |
| SENSOR_46      | Pump Non Drive End Radial Bearing Temp 2  |
| SENSOR_47      | Pump Drive End Radial Bearing Temp 2      |
| SENSOR_48      | Pump Inlet Pressure                       |
| SENSOR_49      | Pump Temp Unknown                         |
| SENSOR_50      | Pump Discharge Pressure 1                 |
| SENSOR_51      | Pump Discharge Pressure 2                 |
| machine_status | NORMAL, BROKEN or RECOVERING              |


Congratulations.  You now have sample pump data you can work with to analyze for anomalies and failures.

In a later lab exercise you will prepare the data for being used by Health and Predict for algorithm and model performance assessment using Watson Studio.

