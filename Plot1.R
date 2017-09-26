png(filename = "Plot1.png")
par(mar=c(7,5,2,1))
hist(powerdt$Global_active_power,freq=TRUE,breaks =12,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")
dev.off()