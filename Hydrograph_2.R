library(readxl)
WindsorRoyalGardensDaily <- read_excel("Desktop/University_of_Leeds/Project/Windsor Royal Gardens Daily 1_1_2014-28_2_2014.xlsx", 
                                       sheet = "Sheet1")
# edited [25]
library(readxl)
Windsor_2700TH_flow_and_stage_data <- read_excel("Desktop/University_of_Leeds/Project/Windsor 2700TH flow and stage data 2013-14.xlsx", 
                                                 sheet = "Sheet4")
# edited [21]
D=WindsorRoyalGardensDaily$Day
R=WindsorRoyalGardensDaily$Rainfall

Fl=Windsor_2700TH_flow_and_stage_data$Flow

D_sc=D/max(D) # Scaling by choice; introduced to by [9].
R_sc=(R-min(R))/(max(R)-min(R))

Fl_sc=(Fl-minFlW)/(maxFlW-minFlW)

plot(0,0, type="l", axes=F, xlim=cbind(-0.1,1.1), ylim=cbind(-0.1,1.2), xlab="", ylab="", bty="o", main="Hydrograph for Datchet/Windsor") # John Verzani (p.104-5)
# creating an empty plot by choice
# introduced to by [7, pp.104-105] [10].

segments(0, 0, 0, 1, lty=1) # creating axes of the correct length
# Notified of segments function by fellow project member [11]. 
# Looked at RStudio help section for structure.
segments(0, 0, 1, 0, lty=1)
segments(1, 0, 1, 1, lty=1)

lines(x=D_sc, y=R_sc, type="l", lty=1, lwd=1, col="black")
# Notified of lines function by [7, p.105]. 
#Looked at RStudio help section
lines(x=D_sc, y=Fl_sc, type="l", lty=3, lwd=2, col="black")

# help with setting up legend:[26]
# http://www.sthda.com/english/wiki/add-legends-to-plots-in-r-software-the-easiest-way
legend(11.5/17,1.05,cbind("Rainfall", "Discharge"), col=cbind("black","black"), lty=cbind(1,3), lwd=cbind(1,2), bty="n")

# Notified of text function by [7, p.105]. 
# Looked at RStudio help section
text(cbind(0,2/17,4/17,6/17,8/17,10/17,12/17,14/17,16/17,1), 
     cbind(-0.05,-0.05,-0.05,-0.05,-0.05,-0.05,-0.05,-0.05,-0.05), 
     cbind(1,3,5,7,9,11,13,15,17,18))

text(cbind(-0.05,-0.05,-0.05,-0.05,-0.05,-0.05,-0.05,-0.05,-0.05),
     cbind(0,0.1136364,0.2272727,0.3409091,0.4545455,0.5681818,0.6818182,0.7954545,0.9090909,1), 
     cbind(0,2,4,6,8,10,12,14,16,17.6))

text(cbind(1.05,1.05,1.05,1.05,1.05,1.05,1.05,1.05),
     cbind(0,0.06060606,0.2121212,0.3636364,0.5151515,0.6666667,0.8181818,1), 
     cbind(0,50,100,150,200,250,300,360))

# Notified of mtext function by [7, p.105]. 
# Looked at RStudio help section
mtext("Date in January 2014", 1)
mtext("Rainfall [mm]", 2)
mtext(expression("Discharge [m"^"3"~"/s]"), 4)