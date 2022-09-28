#Для встроенных в R данных AirPassengers рассчитайте скользящее среднее с интервалом сглаживания равным 10.
#Напечатайте получившийся результат (первым значением в выводе должно быть среднее для элементов 1:10,
#во втором значении - среднее для элементов 2:11 и т.д., в последнем  - среднее для элементов 135 :144)
moving_average <- c()
moving_average[1] = sum(AirPassengers[1:10])/10
moving_average <- append(moving_average,(cumsum(AirPassengers)[11:144] - cumsum(AirPassengers)[1:(144-10)])/10)
moving_average
