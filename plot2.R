#plot 2
mydata <- read.table("household_power_consumption.txt", sep = ";", na.strings = "?", header = TRUE, col.names = c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
mydata_s <- subset(mydata, as.Date(Date, "%d/%m/%Y") == '2007-02-01' | as.Date(Date, "%d/%m/%Y") == '2007-02-02')
xxx <- paste(mydata_f$Date, mydata_f$Time, sep = " ")
yyy <- strptime(xxx, "%Y-%m-%d %H:%M:%S")
plot(yyy, mydata_f$Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)", xlab = "")
dev.copy(png, file = "plot2.png")
dev.off()
