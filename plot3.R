#READ THE DATA FILE AND CREATE A DATA FRAME FROM IT
	
	Plot_3 <- read.table("C:/Users/srira/OneDrive/Documents/UCI dataset/household_power_consumption.txt", sep = ";", dec = ".", stringsAsFactors = FALSE, header = TRUE)

#CONVERSION OF CHARACTER STRINGS TO DATE CLASS	

	Plot_3$Date <- as.Date(Plot_3$Date, format = "%d/%m/%Y")

#SUBSETTING THE VALUES BETWEEN 2007-02-01 AND 2007-02-02	
	
	library(dplyr)
	Plot_3 <- filter(Plot_3, Date >= "2007-02-01" & Date <= "2007-02-02")

#DATETIME CONVERSION
	
	DateTime <- paste(Plot_3$Date, Plot_3$Time)
	DateTime <- strptime(DateTime, format = "%Y-%m-%d %H:%M:%S")
	
	Plot_3 <- select(Plot_3, Global_active_power:Sub_metering_3)
	Plot_3 <- cbind(DateTime, Plot_3)

#PLOTTING FUNCTION

	with(Plot_3, {
				plot(DateTime, Sub_metering_1, type = "l", col = "black", xlab = "DateTime", ylab = "Energy sub metering")
				lines(DateTime, Sub_metering_2, col = "red")
				lines(DateTime, Sub_metering_3, col = "blue")
			}
		)
	legend("top", lty = c(1, 1, 1), lwd = c(2, 2, 2), col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

	## DEFAULT SIZE (WIDTH - 480 PIXELS & HEIGHT - 480 PIXELS)
		dev.copy(png, file = "plot3.png")
		dev.off()