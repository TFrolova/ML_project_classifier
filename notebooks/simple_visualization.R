# простая визуализация результата
df_2 <- data.frame(name =  c("Bayes", "KNN", "DecisionTrees", "Bayes", "KNN", "DecisionTrees", "Bayes", "KNN", "DecisionTrees", "Bayes", "KNN", "DecisionTrees"),
                   size = c("corpus", "corpus", "corpus", "corpus", "corpus", "corpus", "2003", "2003", "2003", "2003", "2003", "2003"),
                   type_of_data = c("wordforms", "wordforms", "wordforms", "lemmas", "lemmas", "lemmas", "wordforms", "wordforms", "wordforms", "lemmas", "lemmas", "lemmas"),           
                   precision_1 = c(0.58, 0.89, 0.64, 0.99, 0.9, 0.94, 0.46, 0.73, 0.54, 0.46, 0.72, 0.5), 
                   recall_1 = c(0.60, 0.15, 0.57, 0.82, 0.85, 0.93, 0.61, 0.04, 0.45, 0.50, 0.06, 0.47))
library(ggplot2)

ggplot(data = df_2) +
  geom_point(mapping = aes(x = recall_1, y = precision_1, color = name, shape = type_of_data, size = size)) +
  labs(color = "Название алгоритма", shape = "Лемматизация", size = 'Размер корпуса') +
  #guides(size=FALSE) +
  xlab('Recall') +
  ylab('Precision') +
  ggtitle('Результаты работы трех алгоритмов', 
          subtitle = 'на лемматизированном и не лемматизированном корпусе') +
  theme( legend.text = element_text(size=12),
         legend.title = element_text(size=14)) +
  theme( plot.title = element_text(size = 20, face = 'bold'),
         plot.subtitle = element_text(size = 14, face = 'italic')) 
