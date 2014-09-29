### R code from vignette source 'womenlabour.Rnw'

###################################################
### code chunk number 1: womenlabour.Rnw:14-15
###################################################
options(width=80)


###################################################
### code chunk number 2: womenlabour.Rnw:18-21
###################################################
library(EffectStars)
data(womenlabour)
womenlabour$IncomeHusband<-scale(womenlabour$IncomeHusband)


###################################################
### code chunk number 3: womenlabour.Rnw:26-28
###################################################
star.nominal(Participation ~ IncomeHusband + Children + Region, womenlabour,
cex.cat = 1, cex.labels = 1.2, lwd.circle = 1.5)


