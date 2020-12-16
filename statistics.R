# Consider the two data set of two machines producing sample units 
# Machine1:(363,404,518,521,613,587,412,469,468) and that of 
# Machine2:(536,474,556,549,479,422,414,505,505,552). 
# Test whether the difference between the two means is statistically significant 
# using Two sample t-test formula. (Use t-distribution table). 
# confidence level - 0.95

library(visualize)

# null hypothesis -> means are equal
# alternative hypothesis -> means are not equal

machine1 <- c(363,404,518,521,613,587,412,469,468, 496)
machine2 <- c(536,474,556,549,479,422,414,505,505,552)
alpha <- 0.05
machine1_mean <- mean(machine1)
machine1_mean
machine2_mean <- mean(machine2)
machine2_mean
var(machine1)
sd(machine1)
var(machine2)
sd(machine2)
t.test(x = machine1, y = machine2, var.equal = TRUE, conf.level = 1 - alpha)
# p-value = 0.6436 > alpha (=0.05) hence, reject null hypothesis and accept alternative hypothesis
# degrees of freedom = df = n1 + n2 - 2 = 10 + 10 - 2 = 18
visualize.t(stat=c(-0.47061, 0.47061), df=18, section="tails")


#In a health survey of school children, the mean of haemoglobin level of 55 boys is 11g per 100ml 
#with a standard deviation of 2.1. Can we consider this group as taken from a population 
#with a mean of 10.2g per 100ml.


# Given
# mean of sample, xmean = 11.0g / 100ml
# std deviation of sample, sigma = 2.1g / 100 ml
# mean of population = 10.2g / 100ml
# H0 mean = 150
# Ha Mean <> 150

library(visualize)
zvalue = (11 - 10.2) / (2.1 / sqrt(55))
zvalue
pnorm(zvalue)
dnorm(zvalue)
pnorm(2.825218) - pnorm(-2.825218)
qnorm(0.05) # z value at 95% CI
# qnorm(0.01)
visualize.norm(stat = zvalue, mu =  0, sd = 1, section = "upper")
visualize.norm(stat = c(2.825218, -2.815218), mu = 0, sd = 1, section = "tails")


#Bottles are produced with mean of 150cc and standard deviation of 2cc. 
#Samples of 100 bottles show mean as 152cc. 
#Has the mean value changed? Check with 95% confidence interval.
library(visualize)
zvalue = (152 - 150) / (2 / sqrt(100))
zvalue
qnorm(0.95) # critical value at 95% at upper tail
qnorm(0.05) # critical value at 5% at lower tail
visualize.norm(stat = zvalue, mu = 0, sd = 1, section = "upper")
# visualize.norm(stat = c(10, -10), mu = 0, sd = 1, section = "tails")

# install.packages("BSDA")
library(BSDA)
z.test(x = D$Machine.1, alternative = "greater", sigma.x = 2, mu = 150)



# ONE SAMPLE T TEST
library(BSDA)
library(visualize)
data1=c(54.2,50.4,44.2,49.7,55.4,57.0,58.2,56.6,61.9,57.5,53.4)
mean(data1)
t.test(data1,mu=50,conf.level = 0.95)
qt(p=0.05/2,df=10,lower.tail=FALSE)  #Correct one sample  two tailed test
visualize.t(stat=c(-3.097,3.097),df=10,section="tails") #visualization on two sides
visualize.t(stat=3.097,df=10,section="upper")           #visualization on upper sides
visualize.t(stat=-3.097,df=10,section="lower")          #visualization on lower sides           
qt(p=0.05/2,df=10,lower.tail=FALSE)   #Upper Tail Test
qt(p=0.05/2,df=10,lower.tail=TRUE)  #Lower Tail Test


# Example: Bottles are being produced with mean as 150 ltr and the population 
#standard deviation is not known.Sample of 4 bottles show the volume 
#as(151,153,152,152) Has the mean volume changed check with 95% confidence Level
#H0=mean=150cc  Ha =mean <> 150cc or Ha =mean >150cc Ha =mean <150cc
library(visualize)
library(BSDA)
vol=c(151,153,152,152)
mean(vol)
t.test(x=vol,mu=150,conf.level = 0.95)
qt(p=0.05/2,df=3,lower.tail=FALSE) #Correct one sample  two tailed test Upper Tail test
qt(p=0.05/2,df=3,lower.tail=TRUE)  #Lower Tail Test
visualize.t(stat=c(-4.899,4.899),df=3,section="tails")
visualize.t(stat=4.899,df=3,section="upper")           #visualization on upper sides
visualize.t(stat=-4.899,df=3,section="lower")


# The birth weights(kg) of two random sample of infants belonging to rural and urban 
# areas are given below?                                                                                                           10  marks
# Rural: 3.1, 2.9, 2.8, 3.0,  2.7, 3.1, 2.6, 2.8, 2.9 ,3.0
# Urban: 3.5, 3.0, 3.1, 3.2, 2.9, 3.4, 3.0, 3.4, 2.8, 3.4
# Perform two sample t-test to Infer whether the difference between the two means is 
# statistically significant or not at  ??=0.05 (Use t-distribution table) ?
# Develop a suitable  R code to perform t-test  by using the above dataset.

library(visualize)
library(BSDA)
rural<-c(3.1,2.9,2.8,3.0,2.7,3.1,2.6,2.8,2.9,3.0)
urban<-c(3.5,3.0,3.1,3.2,2.9,3.4,3.0,3.4,2.8,3.4)
xrbar=mean(rural)
xurbar=mean(urban)
var(rural)
sd(rural)
var(urban)
sd(urban)
#Obtaining t-calculated value
t.test(x=rural,y=urban,var.equal = TRUE,conf.level = 0.95)  


library(visualize)
#Visualize a Normal Distribution Assuming stddeviation=1 and Mu=0
visualize.norm(-2)
visualize.norm(-3)
visualize.norm(0,section="upper")
visualize.norm(0,section="lower")
visualize.norm(c(3,-3),section="tails")
visualize.norm(stat=c(1.96,-1.96),mu=0,sd=1,section="tails")
visualize.norm(c(2.58,-2.58),mu=0,sd=1,section="tails")
visualize.norm(stat=c(2,-2),mu=0,sd=1,section="tails")
visualize.norm(c(1,-1),section="tails")
visualize.norm(c(900,-900),mu=0,sd=1,section="tails")
visualize.norm(stat=76,mu=75,sd=1,section="upper")
visualize.norm(stat=c(-3,3),0,1,section="tails")
visualize.norm(stat=c(73,78),mu=75,sd=1,section="bounded")
visualize.norm(stat=c(73,78),mu=75,sd=1,section="tails")
visualize.norm(stat=c(-90,90),mu=0,sd=10,section="bounded")
visualize.norm(0)
pnorm(0)
qnorm(0.5)
pnorm(1.96)
qnorm(0.6827)
pnorm(2.58)


#Random Normal Distribution
rnorm(10)
rnorm(10,mean=0,sd=1)
pnorm(0)        #At value z=0
pnorm(1)
pnorm(-1)
1 - pnorm(-1)
pnorm(1) - pnorm(-1)
pnorm(2) - pnorm(-2)
pnorm(3) - pnorm(-3)
pnorm(-1.96)    #At  value z=-1.96 return probability value
pnorm(1.96)     #At  value z=1.96
pnorm(1.96) - pnorm(-1.96)
pnorm(-1.64)
pnorm(1.64)
pnorm(1.64) - pnorm(-1.64)
pnorm(2.58) - pnorm(-2.58)
pnorm(1.644854)
pnorm(1.644854)-pnorm(-1.644854)
pnorm(0.05)      #at z=0.05 o/p of probility value is 0.5199
qnorm(0.05)
qnorm(0.025)    # probabilty value =0.025 z value is -1.9599
qnorm(0.5)      #Inpput is probabilty value o/p is Z value
qnorm(0.5199388) #For probabilty value 0.5199 o/p z value is 0.5
qnorm(0.95)
qnorm(0.99)
dnorm(0)
dnorm(0.6)
