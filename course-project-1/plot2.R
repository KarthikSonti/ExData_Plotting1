source("loaddata.R") # reads the data from the consumption file
plot(as.POSIXct(paste(as.Date(twoday.data$Formatted_Date),twoday.data$Time)),twoday.data$Global_active_power,xlab="",type="l",ylab="Global Active Power (kilowatts)")
dev.copy(png,file="Plot2.png")
dev.off()