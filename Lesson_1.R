print('hello')
a <- 3
b <- 5
str(a)

data <- mtcars
mtcars

plot(1:10)
install.packages("data.table")
library(tidyverse)
library(ggplot2)

ggplot2::ggplot()

?ggplot()


# install.packages("ggplot2")
# load package and data
options(scipen=999)  # turn-off scientific notation like 1e+48
library(ggplot2)
theme_set(theme_bw())  # pre-set the bw theme.
data("midwest", package = "ggplot2")
# midwest <- read.csv("http://goo.gl/G1K41K")  # bkup data source

# Scatterplot
gg <- ggplot(midwest, aes(x=area, y=poptotal)) + 
  geom_point(aes(col=state, size=popdensity)) + 
  geom_smooth(method="loess", se=F) + 
  xlim(c(0, 0.1)) + 
  ylim(c(0, 500000)) + 
  labs(subtitle="Area Vs Population", 
       y="Population", 
       x="Area", 
       title="Scatterplot", 
       caption = "Source: midwest")
plot(gg)

install.packages("wordcloud")
library(wordcloud)

word <- c("dog","cat","penguin","wombat", "horse")

wordcloud(word, seq(1, 1000, len = 68))
wordcloud(word, c(1,2,3,1,1))

getwd()


setwd('/Users/Dani/CEU/R pratice/')

#download with relative path
setwd('/Users/Dani/CEU/R pratice/aranykezdata-master/')
data <- read.csv('data.csv')
data

#download with full path
data <- read.csv('C:/Users/Dani/Downloads/data.csv')
data

# Read from git
data <- read.csv('https://raw.githubusercontent.com/misrori/aranykezdata/master/data.csv')
data
