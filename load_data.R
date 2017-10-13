# Programming Assignment Course Project 1 - Explanoratory Data Analysis

##Dataset Given :  Measurements of electric power consumption in one household with a one-minute sampling rate over a period of almost 4 years. 
##              :  household_power_consumption.zip
if(!file.exists("household_power_consumption.zip")){
  file_URL <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
  download.file(file_URL,destfile="household_power_consumption.zip",method="auto")
}
###Unzipping file to the directory
unzip("household_power_consumption.zip")
###Loading required packages
library(reshape)
library(lubridate)
library(stringr)

startr <- grep("^1/2/2007",readLines("household_power_consumption.txt"))
endr <- grep("^2/2/2007", readLines("household_power_consumption.txt"))
                  
datas <- read.table("household_power_consumption.txt",skip = startr[1],nrows= endr[length(endr)] - startr[1],sep = ";")
colnames(datas) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
datas$Date <- dmy(datas$Date)
datas$Time <- hms(datas$Time)
datas$Time_Data <- ymd_hms(datas$Date+datas$Time)

