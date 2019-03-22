# The following is based on the Aire graph presented on [18, p.9].
library(readr)
RiverDon <- read_csv("Desktop/University_of_Leeds/Project/River_Don_25JunTo29Jun.csv")
# edited [19][20]
tDon=RiverDon$Time 
QDon=RiverDon$Flow
hDon=RiverDon$Height

library(readxl)
Rating_Curves <- read_excel("Desktop/University_of_Leeds/Project/Rating Curves.xlsx", 
                            sheet = "Sheet2", col_types = c("skip", 
                                                            "skip", "skip", "skip", "skip", 
                                                            "skip", "skip", "skip", "skip", 
                                                            "skip", "skip", "skip", "numeric", 
                                                            "numeric", "numeric"))

# [4]
Don_C=Rating_Curves$Don_C
Don_a=Rating_Curves$Don_a
Don_b=Rating_Curves$Don_b

hd=seq(from=0, to=6, by=0.01)
# Suggested by Supervisor [5]
# Found in RStudio help section.

Qd=matrix(nrow=601,ncol=1)
# [5][6]

for(i in 1:601) {
  if(hd[i]<0.52) Qd[i,1]=Don_C[1]*(hd[i]-Don_a[1])^Don_b[1]
  if(0.52<=hd[i] & hd[i]<0.931) Qd[i,1]=Don_C[2]*(hd[i]-Don_a[2])^Don_b[2]
  if(0.931<=hd[i] & hd[i]<1.436)
    Qd[i,1]=Don_C[3]*(hd[i]-Don_a[3])^Don_b[3]
  if(1.436<=hd[i])
    Qd[i,1]=Don_C[4]*(hd[i]-Don_a[4])^Don_b[4]
  # Notified of for loop by [7, p.470].
}

tDon_min=25 # Setting the min and max points for tDon, hDon, QDon
tDon_max=29
QDon_min=0
QDon_max=300
hDon_min=0
hDon_max=5

hDt=2.90
QDt=Don_C[4]*(hDt-Don_a[4])^Don_b[4]
hDm=4.06
QDm=Don_C[4]*(hDm-Don_a[4])^Don_b[4]

tDon_sc=(tDon-tDon_min)/(tDon_max-tDon_min) # Creating the scaled vectors of tDon, hDon, QDon; [9].
QDon_sc=(QDon-QDon_min)/(QDon_max-QDon_min)
Qd_sc=(Qd-QDon_min)/(QDon_max-QDon_min)
hDon_sc=(hDon-hDon_min)/(hDon_max-hDon_min)
hd_sc=(hd-hDon_min)/(hDon_max-hDon_min)

hDt_sc=(hDt-hDon_min)/(hDon_max-hDon_min)
QDt_sc=(QDt-QDon_min)/(QDon_max-QDon_min)
hDm_sc=(hDm-hDon_min)/(hDon_max-hDon_min)
QDm_sc=(QDm-QDon_min)/(QDon_max-QDon_min)

lD=length(which(QDon>QDt))
# Stating scaled vectors needed for polygon
# Notified of which function by supervisor [8].
# Looked at RStudio help section for structure
SCvectD=tDon_sc[which(QDon>QDt)]
SCvecQD=QDon_sc[which(QDon>QDt)]

# FEV Calculation
deltk=900 # 15 minutes in seconds [8].
QDk=QDon[which(QDon>QDt)]
FEVD=sum(QDk-QDt)*deltk

plot(0,0, axes=FALSE, xlim=cbind(-1,1), ylim=cbind(-1,1), type="l", xlab="", ylab="")
# creating an empty plot [7, pp.104-105] [10].

lines(x=tDon_sc, y=QDon_sc, type="l") # Notified of lines by [7, pp.104-105]
lines(x=-hd_sc, y=Qd_sc, type="l") 
lines(x=-hDon_sc, y=-tDon_sc, type="l") 

segments(-hDm_sc, QDm_sc, 1, QDm_sc, lty=2)
# Notified of segments function by fellow project member [11]. 
# Looked at RStudio help section for structure.
text(1, 17/20, expression("Q"[m]))
segments(-hDt_sc, QDt_sc, 1, QDt_sc, lty=2) 
text(1, 77/120, expression("Q"[t]))

segments(0, 3.928196e-05, -1.2, 1.107700e+00, lty=2)

segments(SCvectD[1], -1/4, SCvectD[1], 1, lty=2)
segments(SCvectD[lD], -1/4, SCvectD[lD], 1, lty=2)

text(cbind(0,0.25,0.5,0.75,1),cbind(-0.1,-0.1,-0.1,-0.1,-0.1), labels=cbind(25,26,27,28,29)) #adding in axis points by text function
text(cbind(-0.1,-0.1,-0.1,-0.1,-0.1,-0.1),cbind(1/6,1/3,0.5,2/3,5/6,1), labels=cbind(50,100,150,200,250,300))

polygon(cbind(SCvectD[1],SCvectD,SCvectD[lD]), cbind(QDt_sc,SCvecQD,QDt_sc), border=NULL, col="grey") 
# Use of specific coordinates suggested by fellow group member [11]. 
# [12, pp.50-58].

segments(SCvectD[1], QDm_sc, SCvectD[lD], QDm_sc, lty=1, lwd=2)
segments(SCvectD[1], QDt_sc, SCvectD[lD], QDt_sc, lty=1, lwd=2)
segments(SCvectD[lD], QDm_sc, SCvectD[lD], QDt_sc, lty=1, lwd=2)
segments(SCvectD[1], QDm_sc, SCvectD[1], QDt_sc, lty=1, lwd=2)

segments(-hDm_sc, -1,-hDm_sc, QDm_sc, lty=2)
text(-69/80, -1, expression("h"[m]))
segments(-hDt_sc, -1,-hDt_sc, QDt_sc, lty=2)
text(-5/8, -1, expression("h"[t]))

axis(1, at=NULL, labels=FALSE, tick=TRUE, pos=0,0, lwd.ticks=0)
# Adding axis. Found function via RStudio help section
# Adding axis labels. Notified of mtext function by [7, p.105]. 
# Looked at RStudio help section
mtext("Day", 1) # Adding axis labels
mtext(expression("Discharge [m"^"3"~"/s]"), 3)

# Notified of text function by [7, p.105]. 
# Looked at RStudio help section
# The following is as stated on Onno & Tom's poster [1].
text(cbind(-0.1,-0.1,-0.1,-0.1), cbind(-0.25,-0.5,-0.75,-1), labels=cbind(26,27,28,29)) #adding in axis points by text function
text(cbind(-1/5,-2/5,-3/5,-4/5,-1), cbind(-0.1,-0.1,-0.1,-0.1,-0.1), labels=cbind(1,2,3,4,5))

axis(2, at=NULL, labels=FALSE, tick=TRUE, pos=0,0, lwd.ticks=0)

arrows(SCvectD[1], -1/4, SCvectD[lD], -1/4, length=0.1) 
# Adding the double-ended arrow [13, p.79]
arrows(SCvectD[lD], -1/4, SCvectD[1], -1/4, length=0.1)

mtext("Height [m]", 2, las=1) # Adding axis labels
mtext("Day", 4, las=1)
midpointD=(SCvectD[1]+SCvectD[lD])/2
text(midpointD, -3.5/10, expression("T"[f]))
text(0.5, -0.45, expression("FEV" %~~%  "3.00 Mm" ^ "3"),cex=0.75)
text(0.375, -0.55, expression("T"[f]), cex=0.75) 
text(0.54, -0.55, labels = "= 13.50 hrs", cex=0.75) 
text(0.375, -0.65, expression("Q"[t]), cex=0.75)
text(0.54, -0.65, expression("= 164.1 m" ^ "3"~"/s"), cex=0.75) 
text(0.37, -0.75, expression("Q"[m]), cex=0.75)
text(0.54, -0.75, expression("= 225.9 m" ^ "3"~"/s"), cex=0.75) 
text(0.4, -0.85, expression("h"[t]), cex=0.75) 
text(0.54, -0.85, labels = "= 2.90 m", cex=0.75)  
text(0.4, -0.95, expression("h"[m]), cex=0.75) 
text(0.54, -0.95, labels = "= 4.06 m", cex=0.75)  


title(main="River Don Data")
# Notified of title function by [7, p.105].