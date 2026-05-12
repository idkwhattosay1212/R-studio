library(dplyr)
library(ggplot2)

dim(diamonds) #how many rows and columns
str(diamonds) #summary

#mean and sd of price
mean(diamonds$price)
sd(diamonds$price)

#max by carat
max(diamonds$carat)

#average price by cut quality
diamonds %>% group_by(cut) %>% summarise(mean_price=mean(price))

#filter by price above 10000 and ideal only
filter(diamonds, price>10000)
filter(diamonds, cut=='Ideal')

#create a new column for price per carat as price/carat
mutate(diamonds, price_per_carat=price/carat)

#create a scatterplot for carat vs price
ggplot(diamonds, aes(x=carat, y=price, color=cut)) + geom_point()
