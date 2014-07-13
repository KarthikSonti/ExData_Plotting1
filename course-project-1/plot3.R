source("loaddata.R") # reads the data from the consumption file
plot(as.POSIXct(paste(as.Date(twoday.data$Formatted_Date),twoday.data$Time)),twoday.data$Sub_metering_1,type="n",xlab="",ylab="Energy sub meetering")
points(as.POSIXct(paste(as.Date(twoday.data$Formatted_Date),twoday.data$Time)),twoday.data$Sub_metering_1,col="black",type="l")
points(as.POSIXct(paste(as.Date(twoday.data$Formatted_Date),twoday.data$Time)),twoday.data$Sub_metering_2,col="red",type="l")
points(as.POSIXct(paste(as.Date(twoday.data$Formatted_Date),twoday.data$Time)),twoday.data$Sub_metering_3,col="blue",type="l")
legend("topright", col=c("black", "red", "blue"), lty=1,cex=0.6,
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.copy(png, file="plot3.png", width=720)
dev.off()