source("loaddata.R") # reads the data from the consumption file
par(mar=c(2,4,2,2))
par(mfrow=c(2,2))
plot(as.POSIXct(paste(as.Date(twoday.data$Formatted_Date),twoday.data$Time)),twoday.data$Global_active_power,xlab="",type="l",ylab="Global Active Power (kilowatts)")
plot(as.POSIXct(paste(as.Date(twoday.data$Formatted_Date),twoday.data$Time)),twoday.data$Voltage,xlab="datetime",type="l",ylab="Voltage")
plot(as.POSIXct(paste(as.Date(twoday.data$Formatted_Date),twoday.data$Time)),twoday.data$Sub_metering_1,type="n",xlab="",ylab="Energy sub meetering")
points(as.POSIXct(paste(as.Date(twoday.data$Formatted_Date),twoday.data$Time)),twoday.data$Sub_metering_1,col="black",type="l")
points(as.POSIXct(paste(as.Date(twoday.data$Formatted_Date),twoday.data$Time)),twoday.data$Sub_metering_2,col="red",type="l")
points(as.POSIXct(paste(as.Date(twoday.data$Formatted_Date),twoday.data$Time)),twoday.data$Sub_metering_3,col="blue",type="l")
legend("topright", col=c("black", "red", "blue"), lty=1,cex=0.5,bty="n",
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
plot(as.POSIXct(paste(as.Date(twoday.data$Formatted_Date),twoday.data$Time)),twoday.data$Global_reactive_power,xlab="datetime",type="l",ylab="Global_reactive_power")
dev.copy(png, file="plot4.png", width=700)
dev.off()
