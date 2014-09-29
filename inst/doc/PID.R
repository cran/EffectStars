### R code from vignette source 'PID.Rnw'

###################################################
### code chunk number 1: PID.Rnw:14-15
###################################################
options(width=80)


###################################################
### code chunk number 2: PID.Rnw:18-24
###################################################
library(EffectStars)
data(PID)
PID$TVnews<-scale(PID$TVnews)
PID$Income<-scale(PID$Income)
PID$Age<-scale(PID$Age)
PID$Population<-scale(PID$Population)


###################################################
### code chunk number 3: PID.Rnw:29-31
###################################################
star.nominal(PID ~ TVnews + Income + Population + Age + Education, data = PID,
cex.cat = 1, cex.labels = 1.2, lwd.circle = 1.5)


