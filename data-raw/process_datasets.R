# Source of CSV files: https://sites.google.com/site/chiharahesterberg/
# Bangladesh, GSS2002, Volleyball2009 are excluded.
# Most of the work in this file is releveling ordinal categorial variables.

library(dplyr)


# Alelager ----------------------------------------------------------------
Alelager <- read.csv(file="data-raw/Alelager.csv", header=TRUE)
devtools::use_data(Alelager, overwrite = TRUE)


# Basketball09 ------------------------------------------------------------
Basketball09 <- read.csv(file="data-raw/Basketball09.csv", header=TRUE)
devtools::use_data(Basketball09, overwrite = TRUE)


# Batters2005 -------------------------------------------------------------
Batters2005 <- read.csv(file="data-raw/Batters2005.csv", header=TRUE)

# Fix Raul Ibanez and Jorge Cantu's non-ASCII characters
Batters2005 <- Batters2005 %>%
  mutate(
    First = ifelse(First == "Ra\xfal", "Raul", First),
    Last = ifelse(Last == "Cant\xfa", "Cantu", Last)
    )
devtools::use_data(Batters2005, overwrite = TRUE)


# Beerwings ---------------------------------------------------------------
Beerwings <- read.csv(file="data-raw/Beerwings.csv", header=TRUE)
devtools::use_data(Beerwings, overwrite = TRUE)


# BookPrices --------------------------------------------------------------
BookPrices <- read.csv(file="data-raw/BookPrices.csv", header=TRUE)
devtools::use_data(BookPrices, overwrite = TRUE)


# Bushmeat ----------------------------------------------------------------
Bushmeat <- read.csv(file="data-raw/Bushmeat.csv", header=TRUE)
devtools::use_data(Bushmeat, overwrite = TRUE)


# Bushmeat2 ---------------------------------------------------------------
Bushmeat2 <- read.csv(file="data-raw/Bushmeat2.csv", header=TRUE)
devtools::use_data(Bushmeat2, overwrite = TRUE)


# Cameras -----------------------------------------------------------------
Cameras <- read.csv(file="data-raw/Cameras.csv", header=TRUE)
devtools::use_data(Cameras, overwrite = TRUE)


# Cereals -----------------------------------------------------------------
Cereals <- read.csv(file="data-raw/Cereals.csv", header=TRUE)
devtools::use_data(Cereals, overwrite = TRUE)


# Challenger --------------------------------------------------------------
Challenger <- read.csv(file="data-raw/Challenger.csv", header=TRUE)
devtools::use_data(Challenger, overwrite = TRUE)


# corrExerciseA -----------------------------------------------------------
corrExerciseA <- read.csv(file="data-raw/corrExerciseA.csv", header=TRUE)
devtools::use_data(corrExerciseA, overwrite = TRUE)


# corrExerciseB -----------------------------------------------------------
corrExerciseB <- read.csv(file="data-raw/corrExerciseB.csv", header=TRUE)
devtools::use_data(corrExerciseB, overwrite = TRUE)


# Cuckoos -----------------------------------------------------------------
Cuckoos <- read.csv(file="data-raw/Cuckoos.csv", header=TRUE)
devtools::use_data(Cuckoos, overwrite = TRUE)


# Fatalities --------------------------------------------------------------
Fatalities <- read.csv(file="data-raw/Fatalities.csv", header=TRUE)
devtools::use_data(Fatalities, overwrite = TRUE)


# FishMercury -------------------------------------------------------------
FishMercury <- read.csv(file="data-raw/FishMercury.csv", header=TRUE)
devtools::use_data(FishMercury, overwrite = TRUE)


# FlightData --------------------------------------------------------------
FlightDelays <- read.csv(file="data-raw/FlightDelays.csv", header=TRUE)

# Specify levels of select categorical variables
DepartTime_levels <- c("4-8am", "8-Noon",  "Noon-4pm", "4-8pm", "8-Mid")
Destination_levels <- FlightDelays$Destination %>% levels() %>% sort()

# Reorder ordinal categorical variables
FlightDelays <- FlightDelays %>%
  mutate(
    DepartTime = factor(DepartTime, levels = DepartTime_levels),
    Day = factor(Day, levels = c("Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat")),
    Destination = factor(Destination, levels = Destination_levels),
    Month = factor(Month, levels = c("May", "June"))
  )

devtools::use_data(FlightDelays, overwrite = TRUE)


# Girls2004 ---------------------------------------------------------------
Girls2004 <- read.csv(file="data-raw/Girls2004.csv", header=TRUE)
devtools::use_data(Girls2004, overwrite = TRUE)


# GSS2006 -----------------------------------------------------------------
GSS2006 <- read.csv(file="data-raw/GSS2006.csv", header=TRUE)
devtools::use_data(GSS2006, overwrite = TRUE)


# IceCream ----------------------------------------------------------------
IceCream <- read.csv(file="data-raw/IceCream.csv", header=TRUE)
devtools::use_data(IceCream, overwrite = TRUE)


# ILBoys ------------------------------------------------------------------
ILBoys <- read.csv(file="data-raw/ILBoys.csv", header=TRUE)
devtools::use_data(ILBoys, overwrite = TRUE)


# Illiteracy --------------------------------------------------------------
Illiteracy <- read.csv(file="data-raw/Illiteracy.csv", header=TRUE)
devtools::use_data(Illiteracy, overwrite = TRUE)


# Lottery -----------------------------------------------------------------
Lottery <- read.csv(file="data-raw/Lottery.csv", header=TRUE)
devtools::use_data(Lottery, overwrite = TRUE)


# manatees ----------------------------------------------------------------
manatees <- read.csv(file="data-raw/manatees.csv", header=TRUE)
devtools::use_data(manatees, overwrite = TRUE)


# Maunaloa ----------------------------------------------------------------
Maunaloa <- read.csv(file="data-raw/Maunaloa.csv", header=TRUE)
devtools::use_data(Maunaloa, overwrite = TRUE)


# MnGroundwater -----------------------------------------------------------
MnGroundwater <- read.csv(file="data-raw/MnGroundwater.csv", header=TRUE)
devtools::use_data(MnGroundwater, overwrite = TRUE)


# NCBirths2004 ------------------------------------------------------------
NCBirths2004 <- read.csv(file="data-raw/NCBirths2004.csv", header=TRUE)
devtools::use_data(NCBirths2004, overwrite = TRUE)


# Phillies2009 ------------------------------------------------------------
Phillies2009 <- read.csv(file="data-raw/Phillies2009.csv", header=TRUE)
devtools::use_data(Phillies2009, overwrite = TRUE)


# Pitchers2005 ------------------------------------------------------------
Pitchers2005 <- read.csv(file="data-raw/Pitchers2005.csv", header=TRUE)
devtools::use_data(Pitchers2005, overwrite = TRUE)


# Quakes ------------------------------------------------------------------
Quakes <- read.csv(file="data-raw/Quakes.csv", header=TRUE)
devtools::use_data(Quakes, overwrite = TRUE)


# Reading -----------------------------------------------------------------
Reading <- read.csv(file="data-raw/Reading.csv", header=TRUE)
devtools::use_data(Reading, overwrite = TRUE)


# Sat2008 -----------------------------------------------------------------
Sat2008 <- read.csv(file="data-raw/Sat2008.csv", header=TRUE)
devtools::use_data(Sat2008, overwrite = TRUE)


# Service -----------------------------------------------------------------
Service <- read.csv(file="data-raw/Service.csv", header=TRUE)
devtools::use_data(Service, overwrite = TRUE)


# Skating2010 -------------------------------------------------------------
Skating2010 <- read.csv(file="data-raw/Skating2010.csv", header=TRUE)
devtools::use_data(Skating2010, overwrite = TRUE)


# Spruce ------------------------------------------------------------------
Spruce <- read.csv(file="data-raw/Spruce.csv", header=TRUE)
devtools::use_data(Spruce, overwrite = TRUE)


# Starcraft ---------------------------------------------------------------
Starcraft <- read.csv(file="data-raw/Starcraft.csv", header=TRUE)
devtools::use_data(Starcraft, overwrite = TRUE)


# Titanic -----------------------------------------------------------------
Titanic <- read.csv(file="data-raw/Titanic.csv", header=TRUE)
devtools::use_data(Titanic, overwrite = TRUE)


# Turbine -----------------------------------------------------------------
Turbine <- read.csv(file="data-raw/Turbine.csv", header=TRUE)
devtools::use_data(Turbine, overwrite = TRUE)


# TV ----------------------------------------------------------------------
TV <- read.csv(file="data-raw/TV.csv", header=TRUE)
devtools::use_data(TV, overwrite = TRUE)


# TXBirths2004 ------------------------------------------------------------
TXBirths2004 <- read.csv(file="data-raw/TXBirths2004.csv", header=TRUE)
devtools::use_data(TXBirths2004, overwrite = TRUE)


# Verizon -----------------------------------------------------------------
Verizon <- read.csv(file="data-raw/Verizon.csv", header=TRUE)
devtools::use_data(Verizon, overwrite = TRUE)


# volleyball2005 ----------------------------------------------------------
volleyball2005 <- read.csv(file="data-raw/volleyball2005.csv", header=TRUE)
devtools::use_data(volleyball2005, overwrite = TRUE)


# Walleye -----------------------------------------------------------------
Walleye <- read.csv(file="data-raw/Walleye.csv", header=TRUE)
devtools::use_data(Walleye, overwrite = TRUE)


# Watertable --------------------------------------------------------------
Watertable <- read.csv(file="data-raw/Watertable.csv", header=TRUE)
devtools::use_data(Watertable, overwrite = TRUE)


