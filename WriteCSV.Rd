library("datasets")

AR <- austres
head(AR)
class(AR)

getwd()

setwd("/Users/nmolivo/Google Drive/Time Series Regression Analysis/01 Time Series Data")

write.csv(AR, file ="AusRes.csv")

list.files(getwd())