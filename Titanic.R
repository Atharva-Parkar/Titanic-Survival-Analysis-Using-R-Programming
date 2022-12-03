library(data.table)
library(ggplot2)

setDT(titanic)
str(titanic)
titanic[,Survived:=factor(Survived)]
titanic[,Pclass:=factor(Pclass,ordered=T)]
titanic[,Sex:=factor(Sex)]

ggplot(titanic, aes(x=Sex, fill=Survived)) + geom_bar() +
  theme_bw() + labs(y='Passenger Count', title='Titanic Survival Rate')

ggplot(titanic, aes(x=Pclass, fill=Survived)) + geom_bar() +
  theme_bw() + labs(y='Passenger Count', title='Titanic Survival Rate')

ggplot(titanic, aes(x=Sex, fill=Survived)) + geom_bar() +
  theme_bw() + facet_wrap(~Pclass) + labs(y='Passenger Count', title='Titanic Survival Rate')

ggplot(titanic, aes(x=Age, fill=Survived)) + geom_histogram(binwidth = 5, color = 'black') +
  theme_bw() + labs(y='Passenger Count', title='Titanic Survival Rate')

ggplot(titanic, aes(x=Survived, y=Age)) + geom_boxplot() + facet_wrap(Sex~Pclass) +
  theme_bw() + labs(y='Age', title='Titanic Survival Rate')

ggplot(titanic, aes(x=Age, fill=Survived)) + geom_density(alpha=0.5) + facet_wrap(Sex~Pclass) +
  theme_bw() + labs(y='Age', title='Titanic Survival Rate')

ggplot(titanic, aes(x=Age, fill=Survived)) + geom_histogram(binwidth = 5) + facet_wrap(Sex~Pclass) +
  theme_bw() + labs(y='Age', title='Titanic Survival Rate')
