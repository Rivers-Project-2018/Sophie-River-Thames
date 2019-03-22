plot(0, 0, type="l", xlim=cbind(0.035, 0.965), ylim=cbind(0.035, 0.965), xlab="% of FEV mitigated", ylab="", main=expression("Flood-excess lake: FEV" %~~%  "28.00 Mm" ^ "3"), axes=FALSE) 
# creating an empty plot by choice
# introduced to by [7, pp.104-105] [10].

segments(0.008214286, 0, 0.01178571, 1, lty=1) # for 0.28 mitigation - Datchet Channel; 5% error added. 0.008214286 = 0.23/28; 0.01178571 = 0.33/28
# Notified of segments function by fellow project member [11]. 
# Looked at RStudio help section for structure.
segments(0.01642857, 0, 0.02, 1, lty=1) # for 0.51 mitigation - 3 Channels; 5% error added. 0.01642857 = 0.46/28; 0.02 = 0.56/28

x=0:1
y=(280.0004*x)-2.300003

polygon(cbind(0, x, 0), cbind(0, y, 1), col="blue")
# Notified by [12, pp.50-58]
polygon(cbind(0.01642857, x, 0.02), cbind(0, y, 1), col="purple")

segments(0, 0, 0, 1, lty=1)
segments(1, 0, 1, 1, lty=1)
segments(0, 1, 1, 1, lty=1)
segments(0, 0, 1, 0, lty=1)

# help with setting up legend:[26]
legend(0.51,0.9,cbind("0.28 mitigation, +/- 5% error", "0.51 mitigation, +/- 5% error"), col=cbind("blue","purple"), lty=cbind(1,1), lwd=cbind(2,2), bty="o")

# Notified of text function by [7, p.105]. 
# Looked at RStudio help section
text(0.51, 0.5,labels=" DATCHET CHANNEL
  Mean FEV:1%
     Cost:£239.1M
     Value:£239.1M/1%", cex=1, col="blue")
text(0.51, 0.25,labels="TOTAL
  Mean FEV:1.82%
     Cost:£588M
     Value:£[322.6,323.5]M/1%", cex=1, col="purple")

# Notified of mtext function by [7, p.105]. 
# Looked at RStudio help section
mtext("0", 1, at=0, cex=0.625)
mtext("0.8", 1, at=0.008214286, cex=0.5, las=2)
mtext("1.6", 1, at=0.02142857, cex=0.5, las=2)
mtext("100", 1, at=1, cex=0.625)

mtext("0",3, at=0, cex=0.625)
mtext("1.2", 3, at=0.01178571, cex=0.5, las=2)
mtext("2.0", 3, at=0.025, cex=0.5, las=2)
mtext("100", 3, at=1, cex=0.625)