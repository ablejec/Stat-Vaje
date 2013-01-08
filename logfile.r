
oldpart=trelis.par.get()
trellis.par.set(background=list(col="white"))
trellis.par.set(plot.symbol = list(col = "blue")) 

histogram( ~ Visina | Spol, data = podatki,nint=10,
          xlab = "Visina (cm)", type = "density",
          panel = function(x, ...) {
              panel.histogram(x, ...)
              panel.mathdensity(dmath = dnorm, col = "black",
                                args = list(mean=mean(x),sd=sd(x)))
          } )
          
          histogram(~Visina | Spol,nint=10,type = "density",
          panel=function(x,...) {
          panel.histogram(x,...) 
          panel.rug(jitter(x),col="red",lwd=3)
          })
          histogram(~Teza | Spol,nint=10,type = "density",bg=0,col="blue",
          panel=function(x,...) {
          panel.histogram(x,...) 
          panel.rug(jitter(x),col="red",lwd=3)
          })
          
# histogrami z neenakimi razredi
windows(width=12,height=8)
par(mfrow=c(2,2)) 
hist(Teza,col="lightblue",ylim=c(0,25))
rug(jitter(Teza))
hist(Teza, col="lightblue",breaks=sort(c(seq(35,120,15))),ylim=c(0,25))
rug(jitter(Teza))
hist(Teza, col="lightblue",breaks=sort(c(seq(35,120,15),56.5)))
rug(jitter(Teza))
hist(Teza, col="lightblue",breaks=sort(c(seq(35,120,15),56.5,75))) 
rug(jitter(Teza)) 
##
 hist(Teza, col="lightblue",breaks=sort(c(seq(35,120,15))),ylim=c(0,25),xlim=c(30,120),freq=T)
 rug(jitter(Teza))
 hist(Teza, col="lightblue",breaks=sort(c(seq(35,120,15))),xlim=c(30,120),ylim=c(0,0.05),freq=F)
 rug(jitter(Teza))
 hist(Teza, col="lightblue",breaks=sort(c(seq(35,120,15),56.5,75)),ylim=c(0,25),xlim=c(30,120),freq=T) 
## Warning message: the AREAS in the plot are wrong -- rather use freq=FALSE in: 
hist(Teza, col="lightblue",breaks=sort(c(seq(35,120,15),56.5,75)),xlim=c(30,120),ylim=c(0,0.05),freq=F)  
rug(jitter(Teza))
##
cbind(rank(Teza),Teza)
sum(Teza)
mean(Teza)
Teza=sort(Teza)
median(Teza)
plot(Teza,rank(Teza),type="b",pch=16) 
axis(4,at=seq(0,1,.25)*34,label=seq(0,1,.25))

