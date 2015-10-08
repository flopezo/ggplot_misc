library(ggplot2)

#install.packages("alr3")
library(alr3)

#load Pearson-Lee data: collection of data, heights in inches of mothers 
#and their daughters, on over 1100 families in England in the period 1893
#to 1898
ht <- heights
head(ht)

#adding fitted regression model lines
#base plot
sp <- ggplot(ht, aes(x=Mheight, y=Dheight))
sp + geom_point() + stat_smooth(method=lm, level=0.95)

library(MASS) # for data
b <- biopsy
b

b$classn[b$class=="benign"] <- 0
b$classn[b$class=="malignant"] <- 1
b

#fit logistic regression line
#use smoothing method glm with binomial formula
ggplot(b, aes(x=V1, y=classn)) + 
  geom_point(position=position_jitter(width=0.3, height=0.06), alpha=0.4,
             shape=21, size=1.5) + 
  stat_smooth(method=glm, family=binomial)