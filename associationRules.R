#groceries - association rules 

library(arules)

data(Groceries)

fit <- apriori(Groceries, parameter = list(confidence = 0.5, support = 0.01))
fit <- sort(fit, by = "lift")
inspect(fit)

fit2 <- apriori(Groceries, parameter = list(confidence = 0.2, support = 0.01))
fit2 <- sort(fit2, by = "lift")
inspect(fit2)


#  lhs                                      rhs                support    confidence lift    
#[1]  {citrus fruit,root vegetables}        => {other vegetables} 0.01037112 0.5862069  3.029608
#[2]  {tropical fruit,root vegetables}      => {other vegetables} 0.01230300 0.5845411  3.020999

#count - num of times the transactions have occured. 
