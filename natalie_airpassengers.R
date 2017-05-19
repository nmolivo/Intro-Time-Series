data <- read.csv("~/Desktop/AirPassengers.csv")
head(data)

data$year <- as.integer(substring(data$time, 1, 4))
data$m.int <- round(((data$time-data$year)*12)+1, 0)
data$month <- month.abb[data$m.int]

library(reshape)
data.melt <- melt(data[,c("year", "month", "AirPassengers")], id.vars=c("year", "month"))
data.melt$month <- factor(data.melt$month, levels=unique(data$month))
data.cast <- cast(data.melt, year ~ month)

head(data.cast)
write.csv(data.cast, "~/Desktop/AirPassengers_new.csv", row.names=FALSE)