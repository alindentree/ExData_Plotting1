par("mar" = c(5.1, 5.1, 4.1, 2.1))
par("mfrow" = c(1,1))
data <- read.csv("data.txt", header=TRUE, sep=";")
data$DateTime <- strptime(paste(data$Date, data$Time, sep  = " "), "%d/%m/%Y %H:%M:%S")
plot(data$DateTime, data$Global_active_power, type="l", xlab = "", ylab="Global Active Power (kilowatts)")
dev.copy(png, file = "plot2.png") 
dev.off()