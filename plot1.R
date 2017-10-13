source("load_data.R")} ## Loading dataset
hist(datas$Global_active_power, col = "red",main = "Global Active Power",xlab = "Global Active Power (killowatts)")

##Copying to png file
dev.copy(png,"plot1.png",width = 480, height = 480)   
dev.off()

