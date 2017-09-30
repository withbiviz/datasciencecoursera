f<-read.csv("household_power_consumption.txt",sep=";")
s<-f[(as.Date(f$Date,"%d/%m/%Y")>="2007-02-01" & as.Date(f$Date,"%d/%m/%Y")<="2007-02-02"),]
par(mfrow=c(2,2))
plot(strptime(paste(s$Date,s$Time),"%d/%m/%Y %H:%M:%S"),as.numeric(s$Global_active_power)/500, ylab="Global Active Power (kilowatts)",xlab="",type="l")
plot(strptime(paste(s$Date,s$Time),"%d/%m/%Y %H:%M:%S"),as.numeric(s$Voltage), ylab="Voltage",xlab="datetime",type="l")
plot(strptime(paste(s$Date,s$Time),"%d/%m/%Y %H:%M:%S"),as.integer(s$Sub_metering_1), ylab="Enerny sub metering",xlab="",type="l")
legend("topright",c("sub_metering_1","sub_metering_2","sub_metering_3"),bty="n",xjust=0,lty=c(1,1),lwd=c(2.5,2.5),col=c("black","blue","red"))
par(new = TRUE)
plot(strptime(paste(s$Date,s$Time),"%d/%m/%Y %H:%M:%S"),as.numeric(s$Sub_metering_2)/10,ylim=range(c(0,30)), axes=FALSE, xlab = "", ylab = "",type="l",col="red")
par(new = TRUE)
plot(strptime(paste(s$Date,s$Time),"%d/%m/%Y %H:%M:%S"),as.numeric(s$Sub_metering_3),ylim=range(c(0,30)), axes=FALSE, xlab = "", ylab = "",type="l",col="blue")
plot(strptime(paste(s$Date,s$Time),"%d/%m/%Y %H:%M:%S"),as.numeric(s$Global_reactive_power), ylab="Global_reactive_power",xlab="datetime",type="l")
dev.copy(png,file="plot4.png",height = 480, width = 480)
dev.off()


