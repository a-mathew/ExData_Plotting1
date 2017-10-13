if(!exists("datas"))
{ source("load_data.R")} ## Loading dataset only if it is not preexisting in the global environment

plot(datas$Time_Data,datas$Global_active_power,type ="l",xlab = "",ylab="Global Active Power (killowatts)")

dev.copy(png,"plot2.png",width = 480, height = 480)     ##Copying to png file
dev.off()

