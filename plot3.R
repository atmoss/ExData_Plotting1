#plot 3

mydata <- read.table("household_power_consumption.txt", sep = ";", na.strings = "?", header = TRUE, col.names = c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
mydata_s <- subset(mydata, as.Date(Date, "%d/%m/%Y") == '2007-02-01' | as.Date(Date, "%d/%m/%Y") == '2007-02-02')
xxx <- paste(mydata_f$Date, mydata_f$Time, sep = " ")
yyy <- strptime(xxx, "%Y-%m-%d %H:%M:%S")
plot(yyy, mydata_f$Sub_metering_1, type = "l", ylim=c(0, 40), axes = F, xlab = "", ylab = "")
par(new=T)
plot(yyy, mydata_f$Sub_metering_2, type = "l", ylim=c(0, 40), col = "red", xlab = "", ylab = "", axes = F)
par(new=T)
plot(yyy, mydata_f$Sub_metering_3, type = "l", ylim=c(0, 40), col = "blue", xlab = "", ylab = "Energy sub metering")
legend( x="topright", legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
        col=c("black","red","blue"), lwd=2, lty=c(1,1,1), pch=c(NA,NA,NA))

dev.copy(png, file = "plot3.png")
dev.off()
