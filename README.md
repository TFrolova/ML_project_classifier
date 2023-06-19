# Сравнение алгоритмов классификации на материале разметки лексикофункциональными сочетаниями корпуса СинТагРус

Синтаксически размеченный корпус СинТагРус помимо других типов разметки имеет разметку лексикофункциональную. Это значит, что в корпусе отмечаются лексиокфункциональные (далее ЛФ) словосочестания.

Лексические функции это такие смыслы, которые регулярно выражаются нестандартно. Таков, например смысл 'высокая степень' часто выражется по-разному при разных словах-аргументах: ср. ЛФ-сочетаения жгучий брюнет, проливной дождь, тяжелая болезнь. В СинТагРусе отмечались подобного рода словосочетаний для нескольких десятков смыслов, обладающим такой идиоматичностью. 

Эта разметка, как и другие типы разметки в СинТагРусе, выполнялась в два этапа: при помощи правил с последующей ручной проверкой квалифицированными лингвистами.

В представляемом проекте поставлена задача проверить, насколько удачно можно выделить предложения, содержащие ЛФ-сочетания среди всех предложений применением методов классического машинного обучения. Сравнивались данные, полученные алгориитами NaiveBayes, KNN, DecisionTrees.

Работа состояла из следующих этапов:

1. Формирование датафрейма из двух столбцов. В первом столбце - текст фразы без знаков препинания, во втором - 
