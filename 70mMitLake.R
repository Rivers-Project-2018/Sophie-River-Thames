plot(0, 0, type="l", xlim=cbind(0.035, 0.965), ylim=cbind(0.035, 0.965), xlab="% of FEV mitigated", ylab="", main=expression("Flood-excess lake: FEV" %~~%  "28.00 Mm" ^ "3"), axes=FALSE) 
# creating an empty plot by choice
# introduced to by [2, pp.104-105] [3].

segments(0.009642857, 0, 0.01357143, 1, lty=1) 
# for 0.33 mitigation - Datchet Channel; 5% error added. 0.009642857 = 0.27/28; 0.01357143 = 0.38/28
# Notified of segments function by fellow project member [4]. 
# Looked at RStudio help section for structure.
segments(0.01964286, 0, 0.02321429, 1, lty=1) 
# for 0.51 mitigation - 3 Channels; 5% error added. 0.01964286 = 0.55/28; 0.02321429 = 0.65/28

x=0:1
y=(254.5454*x)-2.454545

polygon(cbind(0, x, 0), cbind(0, y, 1), col="blue")
# Notified by [1, pp.50-58]
polygon(cbind(0.01964286, x, 0.02321429), cbind(0, y, 1), col="purple")

segments(0, 0, 0, 1, lty=1)
segments(1, 0, 1, 1, lty=1)
segments(0, 1, 1, 1, lty=1)
segments(0, 0, 1, 0, lty=1)

# help with setting up legend:[5]
legend(0.51,0.9,cbind("0.33 mitigation, +/- 5% error", "0.6 mitigation, +/- 5% error"), col=cbind("blue","purple"), lty=cbind(1,1), lwd=cbind(2,2), bty="o")

# Notified of text function by [2, p.105]. 
# Looked at RStudio help section
text(0.51, 0.5,labels=" DATCHET CHANNEL
     Mean FEV:1.18%
     Cost:£239.1M
     Value:£[200,205]M/1%", cex=1, col="blue")
text(0.51, 0.25,labels="TOTAL
     Mean FEV:2.14%
     Cost:£588M
     Value:£[272,277]M/1%", cex=1, col="purple")

# Notified of mtext function by [2, p.105]. 
# Looked at RStudio help section
mtext("0", 1, at=0, cex=0.625)
mtext("0.9", 1, at=0.008214286, cex=0.5, las=2)
mtext("1.4", 1, at=0.02142857, cex=0.5, las=2)
mtext("100", 1, at=1, cex=0.625)

mtext("0",3, at=0, cex=0.625)
mtext("1.9", 3, at=0.01178571, cex=0.5, las=2)
mtext("2.3", 3, at=0.025, cex=0.5, las=2)
mtext("100", 3, at=1, cex=0.625)