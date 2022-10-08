library(tidyverse)

mydat <- read_csv2("Vorlesung 1/Fahrradpreise/fahrrad_preise.csv")

mydat %>%
  count(gaenge)

mydat %>%
  count(farbe)

ggplot(data = mydat) +
  geom_histogram(
    mapping = aes(x = preis, y = ..density..),
    binwidth = 15,
  ) +
  geom_density(
    mapping = aes(x = preis, y = ..density..))

