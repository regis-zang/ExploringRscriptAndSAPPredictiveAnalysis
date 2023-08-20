# **Sample Document Readme**


## About the Data Foundation for Google Cloud Cortex Framework
The Data Foundation for [Google Cloud Cortex Framework](https://cloud.google.com/solutions/cortex) is a set of analytical artifacts that can be automatically deployed together with reference architectures.


```mermaid
flowchart LR
A[Yahoo Fin] --- B(R-Script) --Actual--> C{Google Drive} --Actual--> D(SAC Pred) 
D(SAC Pred) -.Forecast.-> C{Google Drive}
C{Google Drive} -.Forecast.-> B(R-script)
```
![Yahoo001](https://github.com/regis-zang/ExploringRscriptAndSAPPredictiveAnalysis/assets/84210539/e12f976c-c290-4fac-9bb8-590fe52c775a)
