library(DataComputing)
advertising = read.csv("../data/Advertising.csv")
regression = lm(advertising$Sales~advertising$TV)
regression_summary = summary(regression)

save(regression,regression_summary, file="../data/regression.RData")

png('../images/scatterplot-tv-sales.png')
plot(advertising$TV,advertising$Sales,main="Sales vs. TV",xlab="TV Advertising",ylab="Product Sales")
abline(regression,col="red")
dev.off()

pdf('../images/scatterplot-tv-sales.pdf')
plot(advertising$TV,advertising$Sales,main="Sales vs. TV",xlab="TV Advertising",ylab="Product Sales")
abline(regression,col="red")
dev.off()
