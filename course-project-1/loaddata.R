powre.data <- read.table("household_power_consumption.txt",header=TRUE,sep=";",colClasses=c("character","character","character","character","character","character","character","character","character"))

powre.data <- cbind(powre.data,as.Date(powre.data$Date,format="%d/%m/%Y"))
powre.data.cols <- colnames(powre.data)
powre.data.cols[10] <- 'Formatted_Date'
colnames(powre.data) <- powre.data.cols
twoday.data <- powre.data[powre.data$Formatted_Date %in% as.Date(c('2007-02-01','2007-02-02')),]
remove(powre.data)
