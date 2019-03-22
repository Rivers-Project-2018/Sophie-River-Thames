# The following is based on the Calder graph presented on [1].
library(readr)
River_Calder_Data <- read_csv("Desktop/University_of_Leeds/Project/River_Calder_Flow&StageData_25DecTo29Dec.csv", 
                              col_types = cols(Flow = col_double(), 
                                               Height = col_double(), Time = col_double()))

# edited [16] [17]
tC=River_Calder_Data$Time 
QC=River_Calder_Data$Flow
hC=River_Calder_Data$Height

library(readxl)
Rating_Curves <- read_excel("Desktop/University_of_Leeds/Project/Rating Curves.xlsx", 
                            sheet = "Sheet2", col_types = c("skip", 
                                                            "skip", "skip", "skip", "skip", 
                                                            "skip", "skip", "numeric", "numeric", 
                                                            "numeric", "skip", "skip", "skip", 
                                                            "skip", "skip"))
# [4]
Calder_C=Rating_Curves$Calder_C # simplifying Rating Curve data names
Calder_a=Rating_Curves$Calder_a
Calder_b=Rating_Curves$Calder_b

hc=seq(from=0.35, to=6, by=0.01)
# Suggested by Supervisor [5]
# Found in RStudio help section.

QCald=matrix(nrow=566, ncol=1) 
# [5][6]

for(i in 1:566){
  if(hc[i]<2.107) 
    QCald[i,1]=Calder_C[1]*(hc[i]-Calder_a[1])^Calder_b[1]
  if(2.107<=hc[i] & hc[i]<3.088)
    QCald[i,1]=Calder_C[2]*(hc[i]-Calder_a[2])^Calder_b[2]
  if(3.088<=hc[i])
    QCald[i,1]=Calder_C[3]*(hc[i]-Calder_a[3])^Calder_b[3]
  # Notified of for loop by [7, p.470].
}

tC_min=25 # Setting the min and max points for tC, hC, QC
tC_max=29
QC_min=0
QC_max=250
hC_min=0
hC_max=6

tC_sc=(tC-tC_min)/(tC_max-tC_min) # Creating the scaled vectors of tC, hC, QC; [9].
QC_sc=(QC-QC_min)/(QC_max-QC_min)
QCald_sc=(QCald-QC_min)/(QC_max-QC_min)
hC_sc=(hC-hC_min)/(hC_max-hC_min)
hc_sc=(hc-hC_min)/(hC_max-hC_min)

htC=4.5
QtC=Calder_C[3]*(htC-Calder_a[3])^Calder_b[3]
hmC=5.25
QmC=Calder_C[3]*(hmC-Calder_a[3])^Calder_b[3]

htC_sc=(htC-hC_min)/(hC_max-hC_min) # Creating the scaled vectors of ht, Qt, hm, and Qm
QtC_sc=(QtC-QC_min)/(QC_max-QC_min)
hmC_sc=(hmC-hC_min)/(hC_max-hC_min)
QmC_sc=(QmC-QC_min)/(QC_max-QC_min)

# Stating scaled vectors needed for polygon
# Notified of which function by supervisor [8].
# Looked at RStudio help section for structure
ScVectC=tC_sc[which(QC>QtC)]
ScVecQC=QC_sc[which(QC>QtC)]
lSVtC=length(ScVectC)

# FEV Calculation
deltk=900 # 15 minutes in seconds [8].
QCk=QC[which(QC>QtC)]
FEVC=sum(QCk-QtC)*deltk

plot(0,0, xlim=c(-1,1), ylim=c(-1,1), type="l", axes=FALSE, xlab="", ylab="") 
# creating an empty plot [7, pp.104-105] [10].

lines(x=tC_sc, y=QC_sc, type="l") 
# Notified of lines function by [7, p.105]. 
#Looked at RStudio help section
lines(x=-hc_sc, y=QCald_sc, type="l")
lines(x=-hC_sc, y=-tC_sc, type="l") 

polygon(cbind(ScVectC[1], ScVectC, ScVectC[lSVtC]), cbind(QtC_sc, ScVecQC, QtC_sc), col="grey") 
# ScVectC and ScVecQC describes the coordinates of the x, y vectors used to create the shading
# Use of specific coordinates suggested by fellow group member [11].
# [12, pp.50-58].

segments(-hmC_sc, QmC_sc, 1,QmC_sc, lty=2) 
# Notified of segments function by fellow project member [11]. 
# Looked at RStudio help section for structure.
segments(-htC_sc, QtC_sc, 1, QtC_sc, lty=2) 
segments(-min(hc_sc), min(QCald_sc), -max(hc_sc), max(QCald_sc), lty=2)

segments(ScVectC[lSVtC], -1/4, ScVectC[lSVtC], 1, lty=2) # for Tf boundaries
segments(ScVectC[1], -1/4,ScVectC[1], 1, lty=2) 

segments(ScVectC[1], QmC_sc, ScVectC[lSVtC], QmC_sc, lty=1, lwd=2) # creating FEV box
segments(ScVectC[1], QtC_sc, ScVectC[lSVtC], QtC_sc, lty=1, lwd=2)
segments(ScVectC[lSVtC], QmC_sc, ScVectC[lSVtC], QtC_sc, lty=1, lwd=2)
segments(ScVectC[1], QmC_sc, ScVectC[1], QtC_sc, lty=1, lwd=2)

segments(-hmC_sc, -1, -hmC_sc, QmC_sc, lty=2)
segments(-htC_sc, -1, -htC_sc, QtC_sc, lty=2)

axis(1, at = NULL, labels = FALSE, tick = TRUE, pos = 0,0, lwd.ticks=0) 
axis(2, at = NULL, labels = FALSE, tick = TRUE, pos = 0,0, lwd.ticks=0) 
# Adding axis. Found function via RStudio help section

mtext("Day", 1) 
# Adding axis labels. Notified of mtext function by [7, p.105]. 
# Looked at RStudio help section
mtext(expression("Discharge [m"^"3"~"/s]"), 3) 
mtext("Height [m]", 2, las=1) 
mtext("Day", 4, las=1) 

text(1, 143/160, expression("Q"[m])) 
# Notified of text function by [7, p.105]. 
# Looked at RStudio help section
# The following is as stated on Onno & Tom's poster [1].
text(1, 0.656875, expression("Q"[t])) 
text(cbind(0,0.25,0.5,0.75,1),cbind(-0.1,-0.1,-0.1,-0.1,-0.1), labels=cbind(25,26,27,28,29)) # Adding in axis points by text function.
text(cbind(-0.1,-0.1,-0.1,-0.1,-0.1),cbind(1/5,2/5,3/5,4/5,1), labels=cbind(50,100,150,200,250)) 
text(6/16, -3.5/10, expression("T"[f])) 
text(-37/40, -1, expression("h"[m]))
text(-4/5, -1, expression("h"[t])) 
text(cbind(-0.1,-0.1,-0.1,-0.1), cbind(-0.25,-0.5,-0.75,-1), labels=cbind(26,27,28,29)) # Adding in axis points by text function.
text(cbind(-1/6,-2/6,-3/6,-4/6,-5/6,-1), cbind(-0.1,-0.1,-0.1,-0.1,-0.1,-0.1), labels=cbind(1,2,3,4,5,6)) 

text(0.5, -0.45, expression("FEV" %~~%  "1.65 Mm" ^ "3"),cex=0.75)
text(0.375, -0.55, expression("T"[f]), cex=0.75) 
text(0.54, -0.55, labels = "= 8.25 hrs", cex=0.75) 
text(0.375, -0.65, expression("Q"[t]), cex=0.75)
text(0.54, -0.65, expression("= 142 m" ^ "3"~"/s"), cex=0.75) 
text(0.37, -0.75, expression("Q"[m]), cex=0.75)
text(0.54, -0.75, expression("= 197.5 m" ^ "3"~"/s"), cex=0.75) 
text(0.4, -0.85, expression("h"[t]), cex=0.75) 
text(0.54, -0.85, labels = "= 4.5 m", cex=0.75)  
text(0.4, -0.95, expression("h"[m]), cex=0.75) 
text(0.54, -0.95, labels = "= 5.25 m", cex=0.75)  

arrows(ScVectC[1], -1/4, ScVectC[lSVtC], -1/4, length=0.05) # Adding the double-ended arrow 
# Notified of arrows function by [13, p. 79].
arrows(ScVectC[lSVtC], -1/4, ScVectC[1], -1/4, length=0.05) 

title(main="River Calder Data") 
# Notified of title function by [7, p.105].