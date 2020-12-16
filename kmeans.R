library(cluster)
library(ggplot2)

iris<-iris[,-5]
iris
df<-data.frame(iris)
matrix<-data.matrix(df)
matrix

#wss=sum of squares of the distances between each data point and centroid
wss<-numeric(6)
nrow(matrix)
for(k in 1:15) wss[k] <- sum(kmeans(matrix,centers=k,nstart=25)$withinss)
wss
plot(1:15,wss,type="b",xlab="Number of clusters", ylab="Within sum of squares")
#We can see WSS is greatly reduced from 1 to 3 so k=3

km = kmeans(matrix,3,nstart=25)
km

#km are equivalent to the WSS results obtained earlier in generating the plo
c(wss[3], sum(km$withinss))

df$cluster = factor(km$cluster)
centers=as.data.frame(km$centers) 
ggplot(data=df,aes(x=Sepal.Width,y=Sepal.Length,color=cluster))+geom_point()+geom_point(data=centers,aes(x=Sepal.Width,y=Sepal.Length,color=as.factor(c(1,2,3))),size=10,alpha=0.3)
