##################################
# Assoziationsregeln, Aufg. 8
##################################

# install.packages("arules")
library(arules)

# Vignetten
??arules

#Datensaetze in Paketen
data("Groceries")
?Groceries

# erste Daten
Groceries %>%
  head(n=5) %>%
  inspect

# Plots zur Exploration
?itemFrequencyPlot
itemFrequencyPlot(Groceries, support=0.1)
itemFrequencyPlot(Groceries, topN=20)


# Summary
Groceries %>%
  summary()

# apriori Algorithmus
rules.1 <- Groceries %>%
              apriori(parameter = list(support = 0.009, confidence = 0.25, minlen = 2))

rules.1 %>% 
    head(n=3, by ="lift") %>%
    inspect
