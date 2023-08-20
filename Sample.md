# **Sample Document Readme**


## About the Data Foundation for Google Cloud Cortex Framework
The Data Foundation for [Google Cloud Cortex Framework](https://cloud.google.com/solutions/cortex) is a set of analytical artifacts that can be automatically deployed together with reference architectures.


```mermaid
flowchart LR
A[Yahoo Fin] --- B(R-Script) --Actual--> C{Google Drive} --Actual--> D(SAC Pred) 
D(SAC Pred) -.Forecast.-> C{Google Drive}
C{Google Drive} -.Forecast.-> B(R-script)
```


![Structure of SAC](FluxRscriptSAC.jpg)
