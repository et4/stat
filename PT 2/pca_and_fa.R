x <- read.csv(file = "D:/F0UR/Projects/Statistic/stat/PT 2/normalized_school_data.csv", head = TRUE, sep = ',')

#round(cor(x), 2)

#plot(x)

#stick.fa6 = factanal(x, factors=6, method = "mls", scores = "regression")

fit <- princomp(x, cor=TRUE)
summary(fit) # print variance accounted for 
loadings(fit) # pc loadings 
plot(fit,type="lines") # scree plot 
fit$scores # the principal components
biplot(fit)

library(psych)
fit <- principal(x, nfactors=6, rotate="varimax")
fit # print results

fit <- factanal(x, 6, rotation="varimax")
print(fit, digits=2, cutoff=.3, sort=TRUE)
# plot factor 1 by factor 2 
load <- fit$loadings[,1:2] 
plot(load,type="n") # set up plot 
text(load,labels=names(mydata),cex=.7) # add variable names