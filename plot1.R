library(dslabs)
library(dplyr)
library(readr)
HPC <- read.table("exdata_data_household_power_consumption/household_power_consumption.txt", header = TRUE, 
                  sep = ";", stringsAsFactors = FALSE, dec = ".")
subSetData <- HPC[HPC$Date %in% c("1/2/2007","2/2/2007") ,]


globalActivePower <- as.numeric(subSetData$Global_active_power)
png("Plot1.png", width = 480, height = 480)
hist(globalActivePower, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()
