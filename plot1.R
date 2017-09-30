f<-read.csv("household_power_consumption.txt",sep=";")
s<-f[(as.Date(f$Date,"%d/%m/%Y")>="2007-02-01" & as.Date(f$Date,"%d/%m/%Y")<="2007-02-02"),]
hist(as.numeric(s$Global_active_power)/500, main="Global Active Power",col='red',xlab="Global Active Power (kilowatts)")
dev.copy(png,file="plot1.png",height = 480, width = 480)
dev.off()

