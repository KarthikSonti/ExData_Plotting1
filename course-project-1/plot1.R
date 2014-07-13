source("loaddata.R") # reads the data from the consumption file
hist(as.numeric(twoday.data$Global_active_power),col="red",xlab="Global Active Power (kilowatts)",main="Global Active Power")
dev.copy(png,file="Plot1.png")
dev.off()

