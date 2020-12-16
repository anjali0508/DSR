buff<-c(10,1,37,5,12)
garden<-c(8,3,9,6,4)
red<-c(1,8,9,12,4)
carder<-c(8,27,6,32,23)
honey<-c(12,13,16,9,10)
df<-data.frame(buff,garden,red,carder,honey)
df
rownames(df)<-list("A","B","C","D","E")
df
rownames(df)

matrix<-data.matrix(df)
li<-list("A","B","C","D","E")
new<-cbind(matrix,li)
new

integers=c(10,20,30)
strings=c("abc","def","xyz")
real_numbers=c(-23.55,14.2,77.0)
list1=list(integers,strings,real_numbers)               
list1
names(list1)=c("Integers","Strings","Real numbers")
list1
list1$Integers
