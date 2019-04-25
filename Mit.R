# Notified of cbind function by [1, pp.50-54].
sev=cbind(0.43, 0.51, 0.60)
nin=cbind(0.23, 0.28, 0.33)
wid=cbind(0, 1/2, 1)

plot(0, 0, axes=F, xlim=cbind(-0.1,1.1), ylim=cbind(-0.1,1.2), type="l", xlab="", ylab="", main="FEV mitigation: consideration of mulitple widths") 
# creating an empty graph [2, p.104-5][3]

lines(x=wid, y=sev, type="b", lty=1, lwd=1, col="blue") # [2, p.104-5]
lines(x=wid, y=nin, type="b", lty=1, lwd=1, col="purple")

segments(0, 0, 0, 1, lty=1)
# Notified of segments function by fellow project member [4]. 
# Looked at RStudio help section for structure.
segments(0, 0, 1, 0, lty=1)
segments(1, 0, 1, 1, lty=1)
segments(1, 1, 0, 1, lty=1)

# help with setting up legend:[5]
# http://www.sthda.com/english/wiki/add-legends-to-plots-in-r-software-the-easiest-way
legend(0.25 , 0.95, cbind("The Datchet Channel", "Total"), col=cbind("purple","blue"), lty=cbind(1,1), lwd=cbind(1,1))

# Adding axis labels; notified of text function by [2, p.105]. 
# Looked at RStudio help section
text(cbind(0,1/2,1), 
     cbind(-0.05,-0.05,-0.05), 
     cbind(50, 60, 70))

text(cbind(-0.05,-0.05,-0.05,-0.05,-0.05),
     cbind(0,0.23,0.28,0.43,1), 
     cbind(0,0.23,0.28,0.43,1))

text(cbind(1.05,1.05,1.05,1.05,1.05),
     cbind(0,0.33,0.51,0.60,1), 
     cbind(0,0.33,0.51,0.60,1))

mtext("Width of the channels [m]", 1)
# Notified of mtext function by [2, p.105].
mtext(expression("FEV mitigated [Mm"^"3"~"/s]"), 2)
# Found expression function via [6]
# expression used for subscript, superscript, and etc; 
# how to correctly insert non-ASCII characters given by: [7].