masterdt<-file("household_power_consumption.txt")
powerdt<-read.table(text=grep("^[1,2]/2/2007",readLines(masterdt),value=TRUE),col.names =c("Date","Time","Global_active_power","Global_reactive_power","Voltage", "Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3"),sep=";",header=TRUE,stringsAsFactors = FALSE)
dateTime<-paste(powerdt$Date,powerdt$Time)
dateTime<-strptime(dateTime,"%d/%m/%Y %H:%M:%S")
powerdt$DateTime<-dateTime
powerdt<-powerdt[,3:10]

                
