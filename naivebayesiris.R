data(iris) 
str(iris) 
library(e1071) 
library(caTools)

str(iris)
split <- sample.split(iris, SplitRatio = 0.9) 
split
train <- subset(iris, split == "TRUE") 
train
test <- subset(iris, split == "FALSE") 
test

set.seed(120) # Setting Seed 
bm <- naiveBayes(Species ~ ., data = train) 
bm 

# Predicting on test data' 
pred <- predict(bm, newdata = test) 
pred

# Confusion Matrix 
cm <- table(test_cl$Species, pred) 
cm 

