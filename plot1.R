#READ THE DATA FILE AND CREATE A DATA FRAME FROM IT
	
	Plot_1 <- read.table("C:/Users/srira/OneDrive/Documents/UCI dataset/household_power_consumption.txt", sep = ";", dec = ".", stringsAsFactors = FALSE, header = TRUE)

#CONVERSION OF CHARACTER STRINGS TO DATE CLASS	

	Plot_1$Date <- as.Date(Plot_1$Date, format = "%d/%m/%Y")

#SUBSETTING THE VALUES BETWEEN 2007-02-01 AND 2007-02-02	
	
	library(dplyr)
	Plot_1 <- filter(Plot_1, Date >= "2007-02-01" & Date <= "2007-02-02")

#PLOTTING FUNCTION
	
	hist(as.numeric(Plot_1$Global_active_power), col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
	
	## DEFAULT SIZE (WIDTH - 480 PIXELS & HEIGHT - 480 PIXELS)
		dev.copy(png, file = "plot1.png")
		dev.off()