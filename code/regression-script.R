library(DataComputing)
advertising = read.csv("~/stat159-fall2016-hw02/data/Advertising.csv")
regression = lm(advertising$Sales~advertising$TV)
regression_summary = summary(regression)

save(regression,regression_summary, file="regression.RData")

png('scatterplot-tv-sales.png')
plot(advertising$TV,advertising$Sales,main="Sales vs. TV",xlab="TV Advertising",ylab="Product Sales")
abline(regression,col="red")
dev.off()

pdf('scatterplot-tv-sales.pdf')
plot(advertising$TV,advertising$Sales,main="Sales vs. TV",xlab="TV Advertising",ylab="Product Sales")
abline(regression,col="red")
dev.off()
