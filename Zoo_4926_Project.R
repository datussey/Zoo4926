#Packages
library(ggplot2)
library(dplyr)
library(lubridate)
library(data.table)
library(tidyr)
library(chron)
# Loading data

Rep.A<-read.csv("C:/Users/dtussey/Desktop/RepA.csv")
Rep.B<-read.csv("C:/Users/dtussey/Desktop/RepB.csv")
Rep.C<-read.csv("C:/Users/dtussey/Desktop/RepC.csv")

All.reps<-rbind(Rep.A,Rep.B,Rep.C)
plot(All.reps$day,All.reps$counts60)

sum.daily<-All.reps[which(All.reps$bins60=="0:00"),]
head(All.reps)
glimpse(All.reps)

ggplot(sum.daily)+aes(x=day,y=counts60, fill=anoxia)+ geom_point()
