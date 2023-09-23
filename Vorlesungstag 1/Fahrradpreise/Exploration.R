#install.packages("tidyverse")

library(tidyverse)
setwd("/Users/meikewocken/Documents/Lehrveranstaltungen/FH Bielefeld - DigEng - Statistik/2023")
mydat <- read_csv2("VL 1/Fahrradpreise/fahrrad_preise.csv")

mydat %>%
  count(gaenge)

mydat %>%
  count(farbe)

ggplot(data = mydat) +
  geom_histogram(
    mapping = aes(x = preis, y = after_stat(density)),
    binwidth = 15,
  ) +
  geom_density(
    mapping = aes(x = preis, y = after_stat(density)))

# Lösung 1: BASE R
mydat.df <- as.data.frame(mydat)
boxplot(mydat.df$preis ~ mydat.df$farbe)

# Lösung 2: tidyverse
ggplot(data = mydat) + 
  geom_boxplot(mapping =aes(x=farbe, y=preis))
