f<-read.csv("household_power_consumption.txt",sep=";")
s<-f[(as.Date(f$Date,"%d/%m/%Y")>="2007-02-01" & as.Date(f$Date,"%d/%m/%Y")<="2007-02-02"),]
png("plot3.png",width=480,height=480)
plot(strptime(paste(s$Date,s$Time),"%d/%m/%Y %H:%M:%S"),as.integer(s$Sub_metering_1), ylab="Enerny sub metering",xlab="",type="l")
legend("topright",c("sub_metering_1","sub_metering_2","sub_metering_3"),xjust=0,lty=c(1,1),lwd=c(2.5,2.5),col=c("black","blue","red"))
par(new = TRUE)
plot(strptime(paste(s$Date,s$Time),"%d/%m/%Y %H:%M:%S"),as.numeric(s$Sub_metering_2)/10,ylim=range(c(0,30)), axes=FALSE, xlab = "", ylab = "",type="l",col="red")
par(new = TRUE)
plot(strptime(paste(s$Date,s$Time),"%d/%m/%Y %H:%M:%S"),as.numeric(s$Sub_metering_3),ylim=range(c(0,30)), axes=FALSE, xlab = "", ylab = "",type="l",col="blue")
#dev.copy(png,file="plot3.png",height = 480, width = 480)
dev.off()

