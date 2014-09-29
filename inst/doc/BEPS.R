### R code from vignette source 'BEPS.Rnw'

###################################################
### code chunk number 1: BEPS.Rnw:14-15
###################################################
options(width=80)


###################################################
### code chunk number 2: BEPS.Rnw:18-22
###################################################
library(EffectStars)
data(BEPS)
BEPS$Europe<-scale(BEPS$Europe)
BEPS$Age<-scale(BEPS$Age)


###################################################
### code chunk number 3: BEPS.Rnw:27-30
###################################################
BEPS$Leader_Labour<-BEPS$Leader_Labour-BEPS$Leader_Cons
BEPS$Leader<-BEPS$Leader_Labour
BEPS$Leader_Liberals<-BEPS$Leader_Liberals-BEPS$Leader_Cons


###################################################
### code chunk number 4: BEPS.Rnw:33-37
###################################################
star.nominal(Vote ~ Age + Household + National_Economy + Household + Leader + 
Europe + Political_Knowledge + Gender, data = BEPS, 
xij = list(Leader~Leader_Labour+Leader_Liberals), catstar = F
, cex.cat = 1, cex.labels = 1.2, lwd.circle = 1.5, col.circle = "blue")


