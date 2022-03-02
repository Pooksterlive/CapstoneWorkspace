

library(tidyr)
library(tidyverse)
library(scales)
library(here)
library(rsample)
d <- read.csv("allyearsnonulls.csv")


logit <- glm(result ~ kills + deaths + assists + doublekills + triplekills + quadrakills + pentakills
             + firstbloodkill + firstbloodassist + firstbloodvictim + dpm + wpm +goldspent + total.cs + minionkills + monsterkills
             + goldat15 + xpat15 + csat15 + golddiffat15 + xpdiffat15 +
               csdiffat15 + killsat15 + deathsat15 + assistsat15, data = d, family = "binomial")
summary(logit)


newlogit <-glm(result ~ kills + deaths + assists + doublekills + firstbloodvictim + dpm + wpm +goldspent + total.cs + minionkills + goldat15 + xpat15 + golddiffat15 +
                 csdiffat15 + killsat15 + deathsat15 + assistsat15, data = d, family = "binomial")
summary(newlogit)