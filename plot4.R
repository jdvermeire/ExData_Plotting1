source("readData.R")
hpc <- readData()
png(filename = "plot3.png",
    width = 480,
    height = 480)
par(mfcol = c(2, 2))

## upper left
plot(x = hpc$datetime,
     y = hpc$Global_active_power,
     type = "l",
     ylab = "Global Active Power (kilowatts)",
     xlab = NA)

## lower left
plot(x = hpc$datetime,
     y = hpc$Sub_metering_1,
     type = "l",
     ylab = "Energy sub metering",
     xlab = NA,
     col = "black")
lines(x = hpc$datetime,
      y = hpc$Sub_metering_2,
      col = "red")
lines(x = hpc$datetime,
      y = hpc$Sub_metering_3,
      col = "blue")
legend(x = "topright",
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col = c("black", "red", "blue"),
       lty = 1)

## upper right
plot(x = hpc$datetime,
     y = hpc$Voltage,
     type = "l",
     ylab = "Voltage",
     xlab = "datetime")

## lower right
plot(x = hpc$datetime,
     y = hpc$Global_reactive_power,
     type = "l",
     ylab = "Global Reactive Power",
     xlab = "datetime")

dev.off()