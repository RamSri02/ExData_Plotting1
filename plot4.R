#READ THE DATA FILE AND CREATE A DATA FRAME FROM IT
	
	Plot_4 <- read.table("C:/Users/srira/OneDrive/Documents/UCI dataset/household_power_consumption.txt", sep = ";", dec = ".", stringsAsFactors = FALSE, header = TRUE)

#CONVERSION OF CHARACTER STRINGS TO DATE CLASS	

	Plot_4$Date <- as.Date(Plot_4$Date, format = "%d/%m/%Y")

#SUBSETTING THE VALUES BETWEEN 2007-02-01 AND 2007-02-02	
	
	library(dplyr)
	Plot_4 <- filter(Plot_4, Date >= "2007-02-01" & Date <= "2007-02-02")

#DATETIME CONVERSION
	
	DateTime <- paste(Plot_4$Date, Plot_4$Time)
	DateTime <- strptime(DateTime, format = "%Y-%m-%d %H:%M:%S")
	
	Plot_4 <- select(Plot_4, Global_active_power:Sub_metering_3)
	Plot_4 <- cbind(DateTime, Plot_4)

#PLOTTING FUNCTION

	par(mfrow = c(2, 2), mar = c(5, 4, 3, 2), oma = c(2, 2, 2, 2))
	
	with(Plot_4, plot(DateTime, Global_active_power, type = "l", xlab = "DateTime", ylab = "Global Active Power (kilowatts)"))
	
	with(Plot_4, plot(DateTime, Voltage, type = "l", xlab = "datetime", ylab = "Voltage"))
	
	with(Plot_4, {
				plot(DateTime, Sub_metering_1, type = "l", col = "black", xlab = "DateTime", ylab = "Energy sub metering")
				lines(DateTime, Sub_metering_2, col = "red")
				lines(DateTime, Sub_metering_3, col = "blue")
			}
		)
	legend("top", bty = "n", lty = c(1, 1, 1), lwd = c(1, 1, 1), col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), cex = 0.92)
	
	with(Plot_4, plot(DateTime, Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global Reactive Power (kilowatts)"))
	
	dev.copy(png, file = "plot4.png", width = 480, height = 480)
	dev.off()
