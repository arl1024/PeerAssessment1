setwd("C:/CURSOS/COURSERA/Reproducible Research/PROYECTO")
# CREA UN NUEVO PROYECTO
# library('ProjectTemplate')
# create.project('PeerAssessment1')
setwd("C:/CURSOS/COURSERA/Reproducible Research/PROYECTO/PeerAssessment1")
library('ProjectTemplate')
library('graphics')
library('ggplot2')
load.project()

setwd("C:/CURSOS/COURSERA/Reproducible Research/PROYECTO/PeerAssessment1")
activity<-read.csv("./data/activity.csv")
names(activity)
# Calculate the total number of steps taken per day
a<-tapply(activity$steps,activity$date,sum,na.rm=FALSE)
nom<-names(a)
summary(activity)

b<-table(nom,a)
plot(a)
barplot(a)
hist(a)
plot(activity$date,a,xlim=c(names(a)[1],names(a)[length(a)]))#####################################
plot(a, col = "red", lwd = 10)
lines(a)
hist(a, col="lightgrey", main="Histogram of steps", xlab="Number of steps", ylab="Number of days")

a<-tapply(activity$steps,activity$date,median,na.rm=FALSE)
plot(a)
b<-subset(activity,steps>0)
a<-tapply(b$steps,b$date,median,na.rm=FALSE)
plot(a)

d<-table(activity$days,activity$steps)
d
