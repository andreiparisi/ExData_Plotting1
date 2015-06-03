library(lubridate)
df <- read.csv("household_power_consumption.txt", sep=";")
df[,1] <- as.Date(strptime(with(df, df[ , "Date"]), "%d/%m/%Y"))
df <- df[df$Date >= as.Date("2007-02-01") & df$Date <= as.Date("2007-02-02"), ]
df[ , 3] <- as.numeric(as.character(df$Global_active_power))
png("plot1.png",width=480,height=480,units="px")
hist(df$Global_active_power, col = "red", main ="Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()