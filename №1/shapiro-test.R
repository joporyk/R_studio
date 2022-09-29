#для 2 кол-ых переменный
corr.calc <- function(x){
x1 <- shapiro.test(x[[1]])$p.value
x2 <- shapiro.test(x[[2]])$p.value
  ifelse(x1<0.05 | x2 <0.05, cor.test(x[[1]], x[[2]], method = 'spearman')$estimate,
       cor.test(x[[1]], x[[2]], method = 'pearson')$estimate)
}
