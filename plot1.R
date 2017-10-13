if(!exists("datas"))
  { source("load_data.R")} ## Loading dataset only if it is not preexisting in the global environment

hist(datas$Global_active_power, col = "red",main = "Global Active Power",xlab = "Global Active Power (killowatts)")

##Copying to png file
dev.copy(png,"plot1.png",width = 480, height = 480)   
dev.off()

