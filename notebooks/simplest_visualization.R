df <- data.frame(name =  c("Bayes", "KNN"), 
                 precision_1 = c(0.65, 0.99), 
                 recall_1 = c(0.64, 0.82))
library(ggplot2)
ggplot(df, aes(df$precision_1, df$recall_1)) + geom_point()
