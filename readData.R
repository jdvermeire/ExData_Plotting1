## reads data from household_power_consumption.txt
## shortcut function to make it easier for other scripts
readData <- function () {
  filename <- "household_power_consumption.txt"
  header <- TRUE
  sep <- ";"
  colClasses <- c("character", "character", rep("numeric", 7))
  col.names <- c("Date", "Time", "Global_active_power", "Global_reactive_power",
                 "Voltage", "Global_intensity", "Sub_metering_1",
                 "Sub_metering_2", "Sub_metering_3")
  na.strings = "?"
  hpc <- read.table(file = filename, 
                    header = header, 
                    sep = sep, 
                    colClasses = colClasses,
                    col.names = col.names,
                    na.strings = na.strings,
                    skip = 66636, # skip rows up to 2007-02-01
                    nrows = 2880)
  hpc$datetime <- strptime(paste(hpc$Date, hpc$Time), "%d/%m/%Y %H:%M:%S")
  hpc$Date <- as.Date(hpc$Date, "%d/%m/%Y")
  hpc$Time <- strptime(hpc$Time, "%H:%M:%S")
  return (hpc)
}