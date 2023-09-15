Now you start to make your job in SAP Analitic Cloud.

<br>
<center> <img src="Images/SAP-Analytics-Cloud-Logo.jpg" width="200" height="100"> </center>


In this document we will create a model in SAC.<br>
To this we need go SAC.

## SAC Modeling 001 - Points we need to know
This model we wil create to get each objects as necessary in this material.<br>
Below have a simple diagram what you need to know.
```mermaid
flowchart LR
B(Date Dim) === C{Fact Table}
D(Symbol Dim) === C{Fact Table}
E(Company Dim) === C{Fact Table}
C{Fact Table} -.Stock Values.-> A[Measures]
A[Measures] === Z[Calculations]

```
## SAC Modeling 002 - Create a new model:
A - In SAC Tenant, click in Modeler into trhee dot. <br>
<center> <img src="Images/SAC_Model001.jpg" width="200" height="100"> </center> <br>

B - Create New. <br>
<center> <img src="Images/SAC_Model002.jpg" width="600" height="200"> </center> <br>
<br>
<center> <img src="Images/SAC_Model003.jpg" width="200" height="200"> </center> <br>

<br>
C - New Model (Recomendation) <br>
<center> <img src="Images/SAC_Model004.jpg" width="300" height="200"> </center> <br>


## SAC Modeling 003 - Configurate model:
Now you need to do it the model. <br>
D - add the measure.
<center> <img src="Images/SAC_Model005.jpg" width="150" height="100"> </center>  <br>
<BR>
<center> <img src="Images/SAC_Model006.jpg" width="250" height="200"> </center>
<BR>
<center> <img src="Images/SAC_Model006_A.jpg" width="600" height="200"> </center>


### SAC Configurate model Create Measures
E - OPEN.<br>
The open price is the first price a stock trades at during the day. For active stocks that price will likely be set right at the market open, which occurs at 9:30am Eastern Standard Time.
<BR>
<center> <img src="Images/SAC_Model007.jpg" width="150" height="200"> </center>

-------
F - High.<br>
The high represents a stock's highest trading price for the day.<br>
<BR>
<center> <img src="Images/SAC_Model008.jpg" width="150" height="200"> </center>


G - LOW.<br>
The low is a stock's lowest trading price for the day. 52-week high and low. The 52-week high and low are a stock's highest and lowest<br>
<BR>
<center> <img src="Images/SAC_Model009.jpg" width="150" height="200"> </center>

H - Close.<br>
the closing price after adjustments for all applicable splits and dividend distributions.<br>
<center> <img src="Images/SAC_Model010.jpg" width="150" height="200"> </center>

I - VOLUME.<br>
is the number of shares of a security traded during a given period of time.<br>
<center> <img src="Images/SAC_Model011.jpg" width="150" height="200"> </center>


I - Adjusted.<br>
is the closing price after adjustments for all applicable splits and dividend distributions. Data is adjusted using appropriate split and dividend multipliers, adhering to Center for Research in Security Prices (CRSP) standards.<br>
<center> <img src="Images/SAC_Model012.jpg" width="150" height="200"> </center>

### SAC Configurate Calendar Dimension
J - Date Dimension.<br>
Now we talk about The time!<br>
<center> <img src="Images/DeloreanDashboard.jpg" width="800" height="400"> </center><br>
Click in Date!<br>
![R-Logo](Images/SAC_Model013.jpg) 

K - Date Dimension Detail.
The Dimension Date at a granularity of Day is a crucial aspect when analyzing and working with historical data since 2007. Here are some key reasons for its importance:

Time-based analysis: With a Dimension Date at Day granularity, you can perform detailed time-based analysis. This allows you to identify trends, seasonal patterns, and anomalies within the data on a daily basis. Granularity at the day level enables a comprehensive understanding of how variables evolve and interact over time.

Historical context: By starting the Dimension Date from 2007, you have a substantial historical timeframe. This long-term historical perspective is valuable for evaluating how variables, such as stock prices, have changed and evolved over the years. It provides context for generating insights based on long-term trends and patterns.

Comparative analysis: The Dimension Date allows you to compare and contrast data across different time periods. You can analyze performance metrics, such as daily returns or trading volumes, over specific time ranges and make comparisons to identify patterns, changes, or anomalies. This comparative analysis helps in understanding how metrics have shifted over time.

Forecasting and predictive modeling: Historical data with a Dimension Date at a day granularity is ideal for developing forecasting models and predictive analytics. By leveraging the rich historical dataset, you can build accurate and robust models that capture the dynamics and variability of underlying variables over time. These models can help anticipate future trends and make informed decisions.

Data-driven decision making: With detailed historical data and a Day granularity, you can make data-driven decisions with greater confidence. By analyzing patterns and trends, you can identify correlations, causations, and potential factors influencing the data. This information can guide important business decisions, investment strategies, or risk assessments based on solid historical evidence.

In summary, the Dimension Date at a granularity of Day, covering historical data from 2007, provides a comprehensive and rich context for extensive time-based analysis. It enables a deep understanding of historical trends, supports comparative analysis, facilitates forecasting and predictive modeling, and drives data-driven decision making. Utilizing this invaluable historical data can help uncover insights and drive actionable outcomes.<br><br>
![R-Logo](Images/SAC_Model014_p1.jpg) <BR>
![R-Logo](Images/SAC_Model014_p2.jpg) <BR>

<br><br>
### SAC Configurate Others Dimensions 
L - Click in Add New Dimension. <BR>
![R-Logo](Images/SAC_Model015.jpg) <BR><BR>

M - Symbol in Name and in Type Generic.<BR>
![R-Logo](Images/SAC_Model016.jpg) <BR><BR>

N - Repeat Again to create a CompanySymbol.<BR>
![R-Logo](Images/SAC_Model017.jpg) <BR>
![R-Logo](Images/SAC_Model018.jpg) <BR><BR>

O - Now you have something like bellow:<BR>
![R-Logo](Images/SAC_Model019.jpg) <BR><BR>

P - Save your Model.<BR>
![R-Logo](Images/SAC_Model020.jpg) <BR>
Name: SAC_Predict_StockAnalysis <BR>
Description: SAC Predictive analysis in Stock Market Yahoo DATA<BR>
![R-Logo](Images/SAC_Model021.jpg) <BR><BR>
See in your model:<BR>
![R-Logo](Images/SAC_Model022.jpg) <BR><BR>

## SAP Analytics Cloud  - one more works done.
![R-Logo](Images/WonkaHalfThere.jpg) <BR><BR>

<br><br>
### SAC Create Calculated Measure 
Now all entity are created and before start to fill tis model left some nice objects what we will used in our model. <BR>

Firstly we need some informations before this step:
1. Determine the appropriate objects (dimensions, measures, or attributes) that you want to include in your calculation or measure. This selection will depend on the specific analysis requirements and the insights you want to derive from the data.
2. SAC provides various calculation options such as mathematical operations, aggregations, condition-based calculations, and complex formulas. Understand the available calculation functions and choose the appropriate ones to perform the desired calculations.
3. Consider the aggregation level and granularity of your data. Choose the correct aggregation methods (such as sum, average, count) to ensure the accuracy and relevance of your calculations.

|Nr Item |Calc Measure NAME |C. Meas. Description |Agg - Exception Aggregation | Formula |
| --------- | --------- | --------- | --------- |--------- |
| Item 01   | MaxHigh    | Maximun High | Date, Symbol |[High]|




