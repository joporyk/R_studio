
tab = read.table('C:\\Users\\jodio\\OneDrive\\Рабочий стол\\R data\\dataset_11508_12 (2).txt', sep = "")
lm = lm(tab[,1]~tab[,2], tab)
f = c(lm$coefficients[[1]], lm$coefficients[[2]])
print(f)