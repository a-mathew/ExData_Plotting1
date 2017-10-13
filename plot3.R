source("load_data.R") ## Loading dataset 

plot(datas$Time_Data, datas$Sub_metering_1,col="black",type ="l",xlab="",ylab="")
par(new=T)
plot(datas$Time_Data, datas$Sub_metering_2,col = "red",axes = F,type ="l",ylab="",xlab="",ylim = c(0,max(datas$Sub_metering_1)))
par(new=T)
plot(datas$Time_Data, datas$Sub_metering_3,col = "blue",axes = F,type ="l",ylab="",xlab="",ylim = c(0,max(datas$Sub_metering_1)))
title(ylab = "Energy Sub metering")
leg.txt <- c("Sub_Metering_1","Sub_Metering_2","Sub_Metering_3")
legend("topright", legend = leg.txt, col = c("black","red","blue"),cex = 0.6,lty = 1,xjust= 1)

dev.copy(png,"plot3.png",width = 480, height = 480)     ##Copying to png file
dev.off()
