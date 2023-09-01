#GetStockHistoricalData
#Please if you see any observation , please letme know!
#e-mail=celregiszang@gmail.com
#E
##N
###J
####o
#####Y
#Remove all Variable in run moment.
rm(list=ls())
#install.packages("quantmod")
library(quantmod)
library(xts)
library(readr)
#Select Folders Project
#Note you need to set your Project folder
StockProjFolder <- "C:/XXXYOURLOCATIONXXXXX/ForecastRscriptAndSAC/ProjectR/"

#Set Work Place
setwd(StockProjFolder)

#Get List Symbol of Project
dfListSymbol <- read_csv("ListSymbol.csv", 
                            col_names = c("Symbol"))
#Create a Enviroment
data.env <- new.env()

#Create a List of object with a content of Df List Symbol
VarQtdSymbol <- nrow(dfListSymbol)+1

#Looping by Qtd of Symbol with each content in the file and run get data put in
#
z <- 1
while (z < VarQtdSymbol) {
  VarSynbol <- as.character(dfListSymbol[z,1])
  getSymbols(VarSynbol, src="yahoo",env = data.env)
  #colnames(DfSacDtSrc)<- c('Open','High','Low','Close','Volume','Adjusted')
  
  print(VarSynbol)
  z = z+1
}
#Dummy data to make sctruture
CpXts <- data.env[["BABA"]]
DF_GT_DF <- data.frame(date=index(CpXts), coredata(CpXts))
DF_DB_Symbol <- "XXXXX"
DF_SAC_DS <- cbind(DF_GT_DF, DF_DB_Symbol)
colnames(DF_SAC_DS)<- c('Date','Open','High','Low','Close','Volume','Adjusted','Symbol')  

x <- 1
while (x < VarQtdSymbol) {
  VarSynbol <- as.character(dfListSymbol[x,1])
  Df_YahooHist <- data.env[[VarSynbol]]
  #add Date in df
  df_Repository <- data.frame(date=index(Df_YahooHist), coredata(Df_YahooHist))
  df_Repository <- cbind(df_Repository, VarSynbol)
  #Rename Columns
  colnames(df_Repository)<- c('Date','Open','High','Low','Close','Volume','Adjusted','Symbol')  
  #Change symbol to name file
  ###>class(df_Test2$Volume)
  df_Repository$Volume <- as.integer(df_Repository$Volume)
  ###>class(Integer_var)
  ###>
  ###>
  DF_SAC_DS <- rbind(DF_SAC_DS, df_Repository)
  x = x+1
}
#Create Name File pt1
StockProjFolder <- "C:/Users/RZang/Meu Drive/ForecastRscriptAndSAC/File_Source/"
#Set Work Place
setwd(StockProjFolder)
name_file_1 = paste("DataSourceSAC_Model","X", sep="-")
#Create Name File pt2
FullName = paste0(name_file_1,".csv")
#Save to external File.
write.csv(DF_SAC_DS,FullName, row.names = FALSE)

#Note you need to set your Project folder
StockProjFolder <- "C:/XXXYOURLOCATIONXXXXX/ForecastRscriptAndSAC/ProjectR/"

#Set Work Place
setwd(StockProjFolder)
