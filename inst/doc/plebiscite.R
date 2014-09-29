### R code from vignette source 'plebiscite.Rnw'

###################################################
### code chunk number 1: plebiscite.Rnw:14-15
###################################################
options(width=80)


###################################################
### code chunk number 2: plebiscite.Rnw:18-23
###################################################
library(EffectStars)
data(plebiscite)
plebiscite$Population<-scale(plebiscite$Population)
plebiscite$Age<-scale(plebiscite$Age)
plebiscite$Income<-scale(plebiscite$Income)


###################################################
### code chunk number 3: plebiscite.Rnw:28-30
###################################################
star.nominal(Vote ~ SantiagoCity + Population + Gender + Age + Education + 
Income, data = plebiscite, cex.cat = 1, cex.labels = 1.2, lwd.circle = 1.5)


