source("readData.R")
hpc <- readData()
png(filename = "plot2.png",
    width = 480,
    height = 480)
plot(x = hpc$datetime,
     y = hpc$Global_active_power,
     type = "l",
     ylab = "Global Active Power (kilowatts)",
     xlab = NA)
dev.off()