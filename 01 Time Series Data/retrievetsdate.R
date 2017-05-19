library(datasets)
AR <- data.frame(date = time(austres), pop = as.matrix(austres))
AR
getwd()
setwd("Google Drive/Time Series Regression Analysis/01 Time Series Data")
write.csv(AR,"austres.csv",row.names = FALSE)
