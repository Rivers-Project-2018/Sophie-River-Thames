library(readxl)
Windsor <- read_excel("Desktop/University_of_Leeds/R/Windsor 2700TH flow and stage data 2013-14.xlsx", 
                      sheet = "Sheet3") # Importing data set

DW=Windsor$Day # Setting data names
FlW=Windsor$Flow
StW=Windsor$Stage

minDW=1 # Setting min and max for Day data
maxDW=33
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

segments(-0.4788645, 0.6787879, 1, 0.6787879, lty=3) # (254-minFlW)/(maxFlW-minFlW)
abline(a=0.9757576, b=0, v=0 , h=0.9757576, lty=3) # (352-minFlW)/(maxFlW-minFlW)
segments(-0.4788645, -1, -0.4788645, 0.6787879, lty=3) # (4.38729-minStW)/(maxStW-minStW); 4.38729 = sum(StW)/3074
abline(a=0, b=0, v=0.340909, h=0, lty=3)
abline(a=0, b=0, v=0.4318182, h=0, lty=3)
abline(a=0, b=0, v=0.5909091, h=0, lty=3)

axis(1, at=NULL, labels = FALSE, tick = TRUE, pos = 0,0, lwd.ticks=0, lwd=2)
axis(2, at=NULL, labels = FALSE, tick = TRUE, pos = 0,0, lwd.ticks=0, lwd=2)