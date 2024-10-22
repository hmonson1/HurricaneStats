#Introduction
#Do people judge hurricane risks in the context of gender-based expectations?

#Data Collection and Data Description
data1<-read.csv(file.choose(),header=TRUE)
data1

head(data1, 10)
tail(data1, 10)

attach(data1)
names(data1)

#Visualization of Data
male=subset(Number_of_Deaths, Gender=="Male")
female=subset(Number_of_Deaths, Gender=="Female")
a=list(male, female)
boxplot(a, horizontal=TRUE)

#Numerical Summary Measures
tapply(Number_of_Deaths, Gender=="Male", summary)
tapply(Number_of_Deaths, Gender=="Female", summary)
tapply(Number_of_Deaths, Gender=="Male", var)
tapply(Number_of_Deaths, Gender=="Female", var)

#Outlier Detection
boxplot.stats(male, coef=1.5)
boxplot.stats(male, coef=3)
boxplot.stats(female, coef=1.5)
boxplot.stats(female, coef=3)

#Examining the Effect of outliers in a data set
newrow1=list(Hurricane="Audrey", Year="1957", Gender="Female", Number_of_Deaths=416)
newrow2=list(Hurricane="Katrina", Year="2005", Gender="Female", Number_of_Deaths=1833)
data2=rbind(data1,newrow1,newrow2)

attach(data2)
names(data2)
male=subset(Number_of_Deaths, Gender=="Male")
female=subset(Number_of_Deaths, Gender=="Female")
a=list(male, female)
boxplot(a, horizontal=TRUE)

tapply(Number_of_Deaths, Gender=="Male", summary)
tapply(Number_of_Deaths, Gender=="Female", summary)
tapply(Number_of_Deaths, Gender=="Male", var)
tapply(Number_of_Deaths, Gender=="Female", var)

boxplot.stats(female, coef=1.5)
boxplot.stats(female, coef=3)
