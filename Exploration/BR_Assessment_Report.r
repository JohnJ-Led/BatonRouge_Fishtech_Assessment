
BRTI = read.csv(file='brti_excel.csv', header=TRUE, sep=",")

print("VARIABLES")
#head(BRTI, 6)
sapply(BRTI, class)

BRTI <- within(BRTI, {
    HIT_AND_RUN <- factor(HIT_AND_RUN)
    TRAIN <- factor(TRAIN)
    FATALITY  <- factor(FATALITY)
    INJURY <- factor(INJURY)
    PEDESTRIAN <- factor(PEDESTRIAN)
    INTERSECTION <- factor(INTERSECTION)
})

brti2021 <-BRTI[BRTI$YEAR == 2021,]

hist(brti2021$MONTH,
main="Incident Counts",
xlab="Month",
border="blue", 
     col="green",
     xlim=c(0,12),
     las=1,
     breaks = 0:12)

     