#creating a strategy to trading cryptocurrence

#charging librarys
library(data.table)
library(quantmod)
library(TTR)

#import que database
project<-fread("crypto_trading_project2.csv",header = TRUE,sep=";")
project<-data.frame(project)
names(project)

#creating indicators
project$sma15<-SMA(project$close,n=15)

#separating the database that will be really used
project2<-project[15:length(project$open),]

#creating a loop to calculate the target and another variables
for (x in 1:length(project$open)) {
  project2$var[x]<-(project2$close[x+1]/project2$open[x+1])-1
  project2$var[1334]<-0
  
  x<-x+1
  
}

#creating the traderule
for (y in 1:length(project2$open)) {
  if(project2$close[y] > project2$sma15[y]){
    project2$long[y]<-1
  }else{
    project2$long[y]<--1
  }
  if(project2$close[y] < project2$sma15[y]){
    project2$short[y]<-1
  }else{
    project2$short[y]<--1
  }
  if(project2$long[y]==1 && project2$short[y]== -1){
    project2$trade[y]<-1
  }
  if(project2$short[y]==1 && project2$long[y]== -1){
    project2$trade[y]<--1
  }
  
  y<-y+1
  
}

#calculating the returns
for (z in 1:length(project2$open)) {
  if(project2$trade[z] == 1 && project2$var[z] > 0){
    project2$return[z]<-project2$var[z]
  }
  if(project2$trade[z] == 1 && project2$var[z] < 0){
    project2$return[z]<-project2$var[z]
  }
  if(project2$trade[z] == -1 && project2$var[z] < 0){
    project2$return[z]<-project2$var[z]*(-1)
  }
  if(project2$trade[z] == -1 && project2$var[z] > 0){
    project2$return[z]<-project2$var[z]*(-1)
  }
  if(project2$trade[z] == 0){
    project2$return[z]<-0
  }
  z<-z+1
  
}

#calculating a acumulated capital curv
project2$acumulated<-cumsum(project2$return)

#ploting grafit of results
plot(project2$acumulated)
