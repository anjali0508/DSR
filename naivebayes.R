library(e1071)
getwd()
list.files()
df = read.csv("bayes.csv", stringsAsFactors = T)
typeof(df)
str(df)
class(df)
df
train = as.data.frame(df[1:14,])
train
testset = data.frame(Age=c("31 to 40"),Income=c("High"),JobSatisfaction=c("Yes"),Desire=c("Excellent"))
testset
Bm = naiveBayes(Enrolls ~ Age+Income+JobSatisfaction+Desire,train)
Bm
res = predict(Bm,testset)
res

