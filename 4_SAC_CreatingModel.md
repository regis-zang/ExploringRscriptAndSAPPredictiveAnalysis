Now you start to make your job in SAP Analitic Cloud.
![R-Logo](Images/SAP-Analytics-Cloud-Logo.jpg)


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
![R-Logo](Images/SAC_Model001.jpg)

B - Create New. <br>
![R-Logo](Images/SAC_Model002.jpg) 
<br>
![R-Logo](Images/SAC_Model003.jpg) 
<br>
C - New Model (Recomendation) <br>
![R-Logo](Images/SAC_Model004.jpg) 

## SAC Modeling 003 - Configurate model:
Now you need to do it the model. <br>
D - add the measure.
![R-Logo](Images/SAC_Model005.jpg) 

<br><br>
### SAC Configurate model Create Measures
E - add the measure.
![R-Logo](Images/SAC_Model006.jpg) 


F - OPEN.
![R-Logo](Images/SAC_Model007.jpg) 

G - High.
![R-Logo](Images/SAC_Model008.jpg) 

<br><br>



