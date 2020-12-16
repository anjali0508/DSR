library(gcookbook)
library(ggplot2)
library(MASS)
(cabbage_exp)
ggplot(cabbage_exp, aes(x=Date, y=Weight, fill=Cultivar)) +geom_bar(stat="identity", position="dodge") +geom_text(aes(label=Weight), vjust=1.5, colour="white",
                                                                                                                  position=position_dodge(.9), size=3)
summary(birthwt)
birthwt$ht
boxplot(age~ht, birthwt)

library("gcookbook")
str(heightweight)
boxplot(heightIn~ageYear,data = heightweight, main = "boxplot")
