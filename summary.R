list.files()
setwd("D:/DSRTest")
bank_data<-read.csv("bank-data.csv")
head(bank_data)
str(bank_data)
summary(bank_data)
age<-bank_data[,"age"]
typeof(age)
income<-bank_data[,"income"]
age
plot(age,income)

bank_delim<-read.delim("bank-data.csv")
bank_delim
colnames(bank_delim)
ncol(bank_delim)
vec<-c(1,2,3,4)
banks<-cbind(bank_delim, vec)
ncol(banks)
colnames(banks)
write.table(banks,"output.csv",sep="\t")
