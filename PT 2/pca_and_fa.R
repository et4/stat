x <- read.csv(file = "D:/F0UR/Projects/Statistic/stat/PT 2/normalized_school_data.csv", head = TRUE, sep = ',')

#round(cor(x), 2)

#plot(x)

stick.fa6 = factanal(x, factors=6, method = "mls", scores = "regression")