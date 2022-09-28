#Задача создать переменную good_months и сохранить в нее число пассажиров только в тех месяцах,
#в которых это число больше, чем показатель в предыдущем месяце.  
vector1 = as.vector(AirPassengers)
vector2 <- c(vector1[length(vector1)],vector1[-length(vector1)])
diffs <- vector1-vector2
output = vector1[diffs>0]
good_months <- output
good_months
