# EDA
Peer Review Assignment - 1

## This Repo contains the following

- 4 Different R Scripts 
- 4 Different PNG Files

### Source Dataset

	https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip

### DESCRIPTION OF DATASET VARIABLES

Measurements of electric power consumption in one household with a one-minute sampling rate over a period of almost 4 years. Different electrical quantities and some sub-metering values are available.

The following descriptions of the 9 variables in the dataset are taken from the UCI web site:

1. Date: Date in format dd/mm/yyyy
2. Time: time in format hh:mm:ss
3. Global_active_power: household global minute-averaged active power (in kilowatt)
4. Global_reactive_power: household global minute-averaged reactive power (in kilowatt)
5. Voltage: minute-averaged voltage (in volt)
6. Global_intensity: household global minute-averaged current intensity (in ampere)
7. Sub_metering_1: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered).
8. Sub_metering_2: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light.
9. Sub_metering_3: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.

### ALOGRITHM

1. Read the data file and create a data frame from it.
2. Convert the character strings to Date class.
3. Subset the values between 2007-02-01 and 2007-02-02.
4. COmbine the separate column variable values into single Column to accomplish the DateTime conversion.
5. Plotting Function 
	* plot1.R - construct a histogram.
	* plot2.R - construct the plot for DateTime & Global active power.
	* plot3.R - construct the plot for DateTime & Energy Sub metering.
	* plot4.R - construct 4 different plots in a single frame.
6. Copy the plots to PNG files (Width - 480 pixels & Height - 480 pixels)




Thank You 

Sriram