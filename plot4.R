plot4 <- function(){
        par(mfrow = c(2, 2))
        
        ## First plot
        plot(df$timestamp, df$Global_active_power, type = "l", xlab = "",
             ylab = "Global Active Power")
        
        ## Second plot
        plot(df$timestamp, df$Voltage, type = "l", xlab = "datetime",
             ylab = "Voltage")
        
        ## Third plot
        plot(df$timestamp, df$Sub_metering_1, type = "l", xlab = "",
             ylab = "Energy sub metering")
        lines(df$timestamp, df$Sub_metering_2, col = "red")
        lines(df$timestamp, df$Sub_metering_3, col = "blue")
        legend("topright", col = c("black", "red", "blue"),
               c("sub_metering_1", "sub_metering_2", "sub_metering_3"),
               lty = c(1, 1), bty = c(1, 1))
        
        ## Fourth plot
        plot(df$timestamp, df$Global_reactive_power, type = "l",
             xlab = "datetime", ylab = "Global_reactive_power")
        
        ## Output of png
        dev.copy(png, file = "plot4.png", width = 480, height = 480)
        dev.off()
      }
