source("load_data.R") ## Loading dataset 

par(mfrow=c(2,2)) ## Setting layout for multiple plots in single figure

plot(datas$Time_Data,datas$Global_active_power,type ="l",xlab = "",ylab="Global Active Power (killowatts)")

plot(datas$Time_Data,datas$Voltage,type ="l",ylab ="Voltage",xlab = "datetime")

plot(datas$Time_Data, datas$Sub_metering_1,col="black",type ="l",xlab="",ylab="")
par(new=T)
plot(datas$Time_Data, datas$Sub_metering_2,col = "red",axes = F,type ="l",ylab="",xlab="",ylim = c(0,max(datas$Sub_metering_1)))
par(new=T)
plot(datas$Time_Data, datas$Sub_metering_3,col = "blue",axes = F,type ="l",ylab="",xlab="",ylim = c(0,max(datas$Sub_metering_1)))
title(ylab = "Energy Sub metering")
leg.txt <- c("Sub_Metering_1","Sub_Metering_2","Sub_Metering_3")
legend("topright", legend = leg.txt, col = c("black","red","blue"),cex = 0.4,lty = 1,y.intersp = 0.5,bty ="n",xjust = 1)

plot(datas$Time_Data,datas$Global_reactive_power,type ="l",ylab ="Global_reactive_power",xlab = "datetime")

dev.copy(png,"plot4.png",width = 480, height = 480)    ##Copying to png file
dev.off()
