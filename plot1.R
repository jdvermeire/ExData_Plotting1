source("readData.R")
hpc <- readData()
png(filename = "plot1.png",
    width = 480,
    height = 480)
hist(hpc$Global_active_power,
     col = "red",
     main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)")
dev.off()