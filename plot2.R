f<-read.csv("household_power_consumption.txt",sep=";")
s<-f[(as.Date(f$Date,"%d/%m/%Y")>="2007-02-01" & as.Date(f$Date,"%d/%m/%Y")<="2007-02-02"),]
plot(strptime(paste(s$Date,s$Time),"%d/%m/%Y %H:%M:%S"),as.numeric(s$Global_active_power)/500, ylab="Global Active Power (kilowatts)",xlab="",type="l")
dev.copy(png,file="plot2.png",height = 480, width = 480)
dev.off()

