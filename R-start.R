

library(tidyr)
library(tidyverse)
library(scales)
library(here)
library(rsample)
d2 <-read.csv("PCATest1.csv")

newlogit <-glm(result ~kills + deaths + assists + PCA15 + PCAShare + PCApm,  data = d2, family = "binomial")
summary(newlogit)


prediction <- predict(newlogit, type = "response")
prediction

newmodel <- d2 %>% mutate(prediction)
write.csv(newmodel, 'updated.csv')
