library(DataComputing)
advertising = read.csv("../data/Advertising.csv")


sink("../data/eda-output.txt")
paste("summary statistics for sales")
summary(advertising$Sales)
paste("standard deviation of sales")
sd(advertising$Sales)
paste("summary statistics for tv")
summary(advertising$TV)
paste("standard deviation of tv")
sd(advertising$TV)
sink()


png("../images/histogram-sales.png")
hist(advertising$Sales, main="Sales Histogram", xlab="Sales")
dev.off()

pdf("../images/histogram-sales.pdf")
hist(advertising$Sales, main="Sales Histogram", xlab="Sales")
dev.off()

png("../images/histogram-tv.png")
hist(advertising$TV, main="TV Histogram", xlab="TV")
dev.off()

pdf("../images/histogram-tv.pdf")
hist(advertising$TV, main="TV Histogram", xlab="TV")
dev.off()