library(readxl)
Windsor <- read_excel("Desktop/University_of_Leeds/R/Windsor 2700TH flow and stage data 2013-14.xlsx", 
                      sheet = "Sheet2") # Importing data set

DW=Windsor$Day # Setting data names
FlW=Windsor$Flow
StW=Windsor$Stage

minDW=1 # Setting min and max for Day data
maxDW=39
minFlW=30 # Setting min and max for Flow data
maxFlW=360
minStW=min(StW) # Setting min and max for Stage data
maxStW=max(StW)

DW_sc=(DW-minDW)/(maxDW-minDW) # Scaling the data sets
FlW_sc=(FlW-minFlW)/(maxFlW-minFlW)
StW_sc=(StW-minStW)/(maxStW-minStW)

plot(0, 0, xlim=cbind(-1,1), ylim=cbind(-1,1), xlab="", ylab="", axes=FALSE, type="l", main="Quadrant plot for the Windsor 2014 flood")
lines(x=DW_sc, y=FlW_sc, type="l", lty=1, lwd=1)
lines(x=-StW_sc, y=FlW_sc, type="l", lty=1, lwd=1)
lines(x=-StW_sc, y=-DW_sc, type="l", lty=1, lwd=1)

axis(1, at=NULL, labels = FALSE, tick = TRUE, pos = 0,0, lwd.ticks=0, lwd=2)
axis(2, at=NULL, labels = FALSE, tick = TRUE, pos = 0,0, lwd.ticks=0, lwd=2)