# Introduction to Health Scoring

What is a Health score? How should I set up my scores? How can I add condition and other types of data into my score calculations?

The following posts and labs will address all of those questions.

Whether you are doing you are doing preventive maintenance, condition-based maintenance, predictive maintenance, setting up scores is *key*. 

Contrary to popular belief, you can start using scores in Maximo Health just with basic asset and work order data. You can add more complexity to your scores later once you have more data.

## What is a Health score? ##

We need to differentiated a "Health" score and a "health" score.

When referring to a "Health" score (capital "H"), we are talking about a score from the Maximo Health application. It is a calculated representation of some aspect of your asset. It can be a score that indicates an asset's condition, maintenance health, criticality, risk, sustainability, safety, etc.

Generally, we recommend some basic score types to start:

- Health score
- Criticality score
- Risk score

## Why do I need Health scores? ##

You need to setup scores in Health if you want to use Maximo Application Suite (MAS) to do any of the following:

- Preventive maintenance
- Condition-based maintenance
- Risk-based maintenanece
- Predictive maintenance

By setting up Health scores, you can easily view and analyze your assets' performance.

A Health score takes all of an asset’s data from IT and OT sources and represents an aspect of an asset's performance as a number: 0 being very poor performing and 100 being very good performing.

Understanding asset scores can help an engineer, maintenance planner, or asset planner better make decisions to reduce unplanned downtime, prevent unnecessary costs, and extend an asset's life:

- decide what work orders to carry out to prevent expensive unplanned downtime today
- plan maintenance or replacement to avoid expensive unplanned downtime in the future

## What data do I need to get started? ##

You only need two things to start using scores in Health:

1. Assets loaded into Maximo Manage/EAM (or use App Connect to load non-Maximo data into MAS)
2. At least some work order data
 
Yes, it is that easy!

Maximo Health can also handle more complex data, such as Monitor condition data, historical data, cost and financial data, etc.

## What basic Health scores do I need? ##

- **Health, or asset health context**
    - *Health* is an index that is an aggregate score for the health of an asset and is calculated from the historical performance of the asset and the measured physical condition. The higher the value for the *asset health index*, the less likely the asset will fail. Example factors that are used to calculate the heath index are age, manufacturer, and overload time.

- **Criticality**
    - *Criticality* is business importance of an asset that measures the severity of the customer, financial, and safety impact if the asset were to fail. *Criticality* can have a combination of factors, a common one being the numbers customers that are supported by an asset.

- **Risk**
    - *Risk* is the risk to the business of a failure in the network. The higher the value for *risk*, the more risk there is to the business. It is usually a product of an asset's *health* and *criticality*.

## How to read a Health score ##

A Health score is usually presented as a value from 0 to 100. It is a normalized value so that a it can be compared with other assets in a group, site, system, fleet, or organization. Depending on the score type, 100 can be good (ie. indicating perfect asset health) or 100 can be (ie. indicating extremely high risk of failure)

- *Health* returns values in the range 0 to 100 where 100 is as new condition and 0 is very poor condition.

- *Criticality* is rated from 0 to 100 where 0 is not critical at all and 100 is very critical.

- *Risk* is a percentage value given by the product of the values for *Health* and *Criticality*, where 0 is lowest risk and 100 is highest risk.


Please view the following topics for information on using asset scoring in Maximo Health.

**Topics**

- How Health Score Configurations Are Determined
- Understanding OOTB Health Scores
- How to Edit OOTB Health Score Configurations
- Troubleshooting: Why Are My Scores Aren’t Showing?

