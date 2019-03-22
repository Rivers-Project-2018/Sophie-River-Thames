# The following is based on the Calder mitigation graph presented on [1].
x=0:1
y=((500/133)*x)-(267/266)

plot(x, y, type="l", xlim=cbind(0.035, 0.965), ylim=cbind(0.035, 0.965), xlab="% of FEV mitigated", ylab="", axes=FALSE) 
# [7, pp.104-105]
polygon(cbind(0,x,0), cbind(0,y,1), col="purple", border="black") 
# Notified by [12, pp.50-58]
par(new=TRUE)  
# [7, p.232]

a=0:1
b=((1000/309)*a)-1

plot(a,b, type="l", xlim=cbind(0.035, 0.965), ylim=cbind(0.035, 0.965), xlab="% of FEV mitigated", ylab="", axes=FALSE)
# [7, pp.104-105]
polygon(cbind(0.309,x,0.618), cbind(0,y,1), col="pink", border="black") 
par(new=TRUE)  


c=0:1
d=((500/167)*c)-1

plot(c, d, type="l", xlim=cbind(0.035, 0.965), ylim=cbind(0.035, 0.965), xlab="% of FEV mitigated", ylab="", axes=FALSE) 
polygon(cbind(0.334,a,0.668), cbind(0,b,1), col="green", border="black") 
polygon(cbind(1,c,1), cbind(0,d,1), col="white", border="black")
abline(h=0) 
# adding a border/line for y=0,1; border/line for x=0,1 added by polygon function. 
# Notified of abline function by [7, p.105]
abline(h=1) 

# Notified of text function by [7, p.105]
# The following is as stated on Onno & Tom's poster [1].
text(0.20025, 0.75,labels="RESERVOIRS
  Mean FEV:40%
Cost:£30M
  Value:£[0.56,1.13]M/1%", cex=0.75)
text(0.709, 0.45,labels="NFM
  Mean FEV:6.36%
Cost:£5.38M
  Value:£[0.63,1.27]M/1%", cex=0.75, col="pink")

arrows(0.6,0.45, 0.42, 0.48, length=0.1)
# Notified of function by [13, p. 79]

text(0.834, 0.75,labels="TREES
  Mean FEV:3.75%
Cost:£5M
  Value:£[1,2]M/1%", cex=0.75, col="green")
arrows(0.7,0.75, 0.56, 0.78, length=0.1)
text(0.79975, 0.15,labels="TOTAL
  Mean FEV:50.11%
Cost:£40.38M
  Value:£[0.61,1.21]M/1%", cex=0.75)
mtext("0", 1, at=0, cex=0.625)
mtext("26.7", 1, at=0.267, cex=0.625, las=2)
mtext("30.9", 1, at=0.309, cex=0.625, las=2)
mtext("33.4", 1, at=0.334, cex=0.625, las=2)
mtext("100", 1, at=1, cex=0.625)
mtext("0",3, at=0, cex=0.625)
mtext("53.3", 3, at=0.533, cex=0.625, las=2)
mtext("61.8", 3, at=0.618, cex=0.625, las=2)
mtext("66.8", 3, at=0.668, cex=0.625, las=2)
mtext("100", 3, at=1, cex=0.625)

title("Flood-excess lake: FEV ≈ ((908²)x2)m³ ≈ 1.650Mm³", cex.main=0.875)
# Notified of title function by [7, p.105].