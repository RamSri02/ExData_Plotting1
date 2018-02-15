#READ THE DATA FILE AND CREATE A DATA FRAME FROM IT
	
	Plot_2 <- read.table("C:/Users/srira/OneDrive/Documents/UCI dataset/household_power_consumption.txt", sep = ";", dec = ".", stringsAsFactors = FALSE, header = TRUE)

#CONVERSION OF CHARACTER STRINGS TO DATE CLASS	

	Plot_2$Date <- as.Date(Plot_2$Date, format = "%d/%m/%Y")

#SUBSETTING THE VALUES BETWEEN 2007-02-01 AND 2007-02-02	
	
	library(dplyr)
	Plot_2 <- filter(Plot_2, Date >= "2007-02-01" & Date <= "2007-02-02")

#DATETIME CONVERSION
	
	DateTime <- paste(Plot_2$Date, Plot_2$Time)
	DateTime <- strptime(DateTime, format = "%Y-%m-%d %H:%M:%S")
	
	Plot_2 <- select(Plot_2, Global_active_power:Sub_metering_3)
	Plot_2 <- cbind(DateTime, Plot_2)

#PLOTTING FUNCTION

	with(Plot_2, plot(DateTime, Global_active_power, type = "l", xlab = "DateTime", ylab = "Global Active Power (kilowatts)"))
	
	## DEFAULT SIZE (WIDTH - 480 PIXELS & HEIGHT - 480 PIXELS)
		dev.copy(png, file = "plot2.png")
		dev.off()
 