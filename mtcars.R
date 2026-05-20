#t-test
t.test(mpg ~ am, data = mtcars)
#two-tailed test
t.test(mpg~am, data=mtcars, alternative='less')
#variance test
var.test(mpg~am, data=mtcars)
#effect size
library(effsize)
cohen.d(mpg~am, data=mtcars)
#linear model
model <- lm(mpg~hp, data=mtcars)
summary(model)
#another
model_2 <- lm(mpg~hp + wt + cyl, data=mtcars)
summary(model_2)
#anova
model_anova <- aov(mpg~factor(cyl), data=mtcars)
summary(model_anova)
TukeyHSD(model_anova)
#correlation matrix
library(corrplot)
cor(mtcars)
corrplot(cor(mtcars), method = "color", type = "upper", 
         addCoef.col = "black", number.cex = 0.7)
library(corrplot)
corrplot(cor(mtcars), method = "color", type = "upper", 
         addCoef.col = "black", number.cex = 0.7)
