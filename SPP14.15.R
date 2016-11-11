setwd("~/Dropbox/Documents/Data Analytics/Data Sets/SPP/Data 14.15/")
Data <- read.csv("SPP.APD.2014.2015.csv", header=T, fill=T, stringsAsFactors=F, na.strings="Not Available")
Data1 <- read.csv("2015 Keystone Exam School Level Data.csv", header=T, fill=T, stringsAsFactors=F, na.strings="Not Available")
SPP <- Data[Data$Data.Element=="Final Academic Score", c(4, 2, 5, 6)]
Growth <- Data1[Data1$Student_Group_Name=="All Students" & Data1$Grade=="Total", c(1,4,5,6,12)]
Data3 <- merge(SPP, Growth, by="School.Number")
Data3c <- na.omit(Data3)