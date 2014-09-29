### R code from vignette source 'election.Rnw'

###################################################
### code chunk number 1: election.Rnw:14-15
###################################################
options(width=80)


###################################################
### code chunk number 2: election.Rnw:18-20
###################################################
library(EffectStars)
data(election)


###################################################
### code chunk number 3: election.Rnw:25-28
###################################################
star.nominal(Partychoice ~ Age + Religion + Democracy + Pol.Interest + 
Unemployment + Highschool + Union + West + Gender, election, cex.cat = 1,
cex.labels = 1.2, lwd.circle = 1.5, dist.cov = 0.8)


###################################################
### code chunk number 4: election.Rnw:33-36
###################################################
star.nominal(Partychoice ~ Age + Religion + Democracy + Pol.Interest +
Unemployment + Highschool + Union + West + Gender, election, cex.cat = 1,
cex.labels = 1.2, lwd.circle = 1.5, dist.cov = 0.8, pred.coding = "effect")


###################################################
### code chunk number 5: election.Rnw:41-45
###################################################
star.nominal(Partychoice ~ Age + Religion + Democracy + Pol.Interest + 
Unemployment + Highschool + Union + West + Gender, election, cex.cat = 1,
cex.labels = 1.2, conf.int = TRUE, dist.cov = 0.7, lwd.circle = 0.01, 
lty.circle = "solid", col.circle = "gray90")


###################################################
### code chunk number 6: election.Rnw:50-54
###################################################
star.nominal(Partychoice ~ Age + Religion + Democracy + Pol.Interest + 
Unemployment + Highschool + Union + West + Gender, election, cex.cat = 1,
cex.labels = 1.2, lwd.circle = 1.5, refLevel = 3, symmetric = FALSE, 
dist.cov = 0.8, printpvalues = FALSE)


###################################################
### code chunk number 7: election.Rnw:61-79
###################################################
election[,13:16] <- election[,13:16] - election[,12]
election[,18:21] <- election[,18:21] - election[,17]
election[,23:26] <- election[,23:26] - election[,22]
election[,28:31] <- election[,28:31] - election[,27]

election$Social <- election$Social_SPD
election$Immigration <- election$Immigration_SPD
election$Nuclear <- election$Nuclear_SPD
election$Left_Right <- election$Left_Right_SPD

star.nominal(Partychoice ~ Social + Immigration + Nuclear + Left_Right + Age + 
Religion + Democracy + Pol.Interest + Unemployment + Highschool + Union + West + 
Gender, data = election, 
xij = list(Social ~ Social_SPD + Social_FDP + Social_Greens + Social_Left,
Immigration ~ Immigration_SPD + Immigration_FDP + Immigration_Greens + Immigration_Left,
Nuclear ~ Nuclear_SPD + Nuclear_FDP + Nuclear_Greens + Nuclear_Left,
Left_Right ~ Left_Right_SPD + Left_Right_FDP + Left_Right_Greens + Left_Right_Left),
cex.cat = 1, cex.labels = 1.4, lwd.circle = 1.5, dist.cov = 0.8)


