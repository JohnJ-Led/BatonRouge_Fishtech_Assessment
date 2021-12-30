#
#Example - https://stats.oarc.ucla.edu/r/dae/multinomial-logistic-regression/
#Possibly multinomial-logistic-regression for the risk score model.
#
#Need to try this through juypter as it could have better formatting for all the columns than CLI
#
#Knowledge Review - with(), by(), melt()


require(foreign)
require(nnet)
require(ggplot2)
require(reshape2)

Incident = read.csv(file='IandF.csv', header=TRUE, sep=",")

print("Variables And Types")
sapply(Incident, class)
#head(Incident, 6)
#unique(Incident$WEATHER)


with(Incident, table(HUMAN_CONDITION, LIGHTING))#, INTERSECTION))#,ROAD_CLASS ,ROADWAY_SURFACE, ROADWAY_DESIGN, WEATHER, LOCATION_TYPE, LIGHTING))

summary(Incident)

Incident$HUMAN_CONDITION2 <- relevel(Incident$HUMAN_CONDITION, ref = "NONE")
test <- multinom(HUMAN_CONDITION2 ~ LIGHTING + LOCATION_TYPE , data = Incident) #+ WEATHER 

print("Summary of Multinomial")
print("---------------------------------------------------")
summary(test)

print("Calculate p-value")
print("---------------------------------------------------")
print("Z-value")

z <- summary(test)$coefficients/summary(test)$standard.errors
z
print("P-value")
print("---------------------------------------------------")
p <- (1- pnorm(abs(z), 0, 1)) * 2
p

# Extract the coefficients from the model and exponentiate
exp(coef(test))

head(pp <- fitted(test))

#Random Data Frame as Test Data. 
dwrite <- data.frame(LIGHTING = rep(c("DARK - CONTINUOUS STREET LIGHT","DARK - NO STREET LIGHTS", "DARK - STREET LIGHT AT INTERSECTION ONLY", "DAWN", "DAYLIGHT", "DUSK", "OTHER", "UNKNOWN"), each = 45), LOCATION_TYPE = rep(c("BUSINESS CONTINUOUS", "BUSINESS, MIXED RESIDENTIAL", "MANUFACTURING OR INDUSTRIAL", "OPEN COUNTRY","OTHER","RESIDENTIAL DISTRICT","RESIDENTIAL SCATTERED","SCHOOL OR PLAYGROUND")))
    #, WEATHER = rep(c("CLEAR","CLOUDY","FOG / SMOKE","RAIN","SEVERE CROSSWIND","SLEET / HAIL","SNOW","UNKNOWN"))

#probability of human_condition based of test df
pp.write <- cbind(dwrite, predict(test, newdata = dwrite, type = "probs", se = TRUE))
head(pp.write)

print("---------------------------------------------------")
#pp.write[1:5,]
by(pp.write[,3:6], pp.write$LIGHTING, colMeans)

lpp <- melt(pp.write, id.vars = c("LIGHTING", "LOCATION_TYPE"), value.name = "probability")
head(lpp)

pt <- ggplot(lpp, aes(x = LIGHTING, y = probability, colour = LOCATION_TYPE)) + geom_line() + facet_grid(variable ~ ., scales = "free")

pt <- pt + theme(axis.text.x = element_text(angle = 90))
