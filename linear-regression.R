count <- c(9,25,15,2,14,25,24,47)
speed <- c(2,3,5,9,14,24,29,34)
fw <- data.frame(count,speed)
cor(count, speed)
names <- c("a", "s", "d", "q", "w", "e", "r", "t")
rownames(fw) = names
fw

fw.lm <- lm(count ~ speed, data = fw)
fw.lm
names(fw.lm)

pred <- fitted(fw.lm)
pred

# confidence intervals
confint(fw.lm, param = c('(Intercept)', 'speec'), level=0.9)

residuals(fw,lm)

#plotting the x , y values 
plot(fw$speed,fw$count,col="red")
coef(fw.lm)
#plotting the fitted line 
abline(fw.lm,col="blue")
#plotting residuals
plot(fw.lm,which=1)  



number <- c(1:15)
temperature <- c(50,53,54,55,56,59,62,65,67,71,72,74,75,76,79)
yield <- c(122,118,128,121,125,136,144,142,149,161,167,168,162,171,175)
df<-data.frame(temperature, yield)
rownames(df) <- number
df
lr <- lm(yield ~ temperature, data=df)
print(summary(lr))
names(lr)
lr$coefficients
pred <- fitted(lr)
pred
plot(df$temperature, df$yield, col="red")
abline(lr, col="blue")

# residuals
residuals(lr)
plot(lr, which=1)

