# Source of CSV files: https://sites.google.com/site/chiharahesterberg/
library(dplyr)
library(stringr)


# Alelager ----------------------------------------------------------------
Alelager <- read.csv(file="data-raw/Alelager.csv", header=TRUE)
devtools::use_data(Alelager, overwrite = TRUE)


# Bangladesh ----------------------------------------------------------------
Bangladesh <- read.csv(file="data-raw/Bangladesh.csv", header=TRUE)
devtools::use_data(Bangladesh, overwrite = TRUE)


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


# ChiMarathonMen ----------------------------------------------------------
ChiMarathonMen <- read.csv(file="data-raw/ChiMarathonMen.csv", header=TRUE) %>% 
  # Fix "Castro Sebasti\xe1n": https://twitter.com/sebasrunning
  mutate(
    name = as.character(name),
    name = ifelse(name == "Castro Sebasti\xe1n", "Castro Sebastian", name)
    )
devtools::use_data(ChiMarathonMen, overwrite = TRUE)


# corrExerciseA -----------------------------------------------------------
corrExerciseA <- read.csv(file="data-raw/corrExerciseA.csv", header=TRUE)
devtools::use_data(corrExerciseA, overwrite = TRUE)


# corrExerciseB -----------------------------------------------------------
corrExerciseB <- read.csv(file="data-raw/corrExerciseB.csv", header=TRUE)
devtools::use_data(corrExerciseB, overwrite = TRUE)


# Cuckoos -----------------------------------------------------------------
Cuckoos <- read.csv(file="data-raw/Cuckoos.csv", header=TRUE)
devtools::use_data(Cuckoos, overwrite = TRUE)


# Diving2017 --------------------------------------------------------------
Diving2017 <- read.csv(file="data-raw/Diving2017.csv", header=TRUE)
devtools::use_data(Diving2017, overwrite = TRUE)


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


# Groceries ---------------------------------------------------------------
Groceries <- read.csv(file="data-raw/Groceries.csv", header=TRUE) %>% 
  mutate(
    Units = str_extract(Size, "[0-9]+"),
    UnitType = str_extract(Size, "[aA-zZ]+")
    ) %>% 
  # Fix typo
  mutate(
    Size = trimws(as.character(Size)),
    Size = ifelse(Size == "11.50z", "11.50oz", Size),
    UnitType = ifelse(UnitType == "z", "oz", UnitType)
    )
devtools::use_data(Groceries, overwrite = TRUE)


# GSS2002 ---------------------------------------------------------------
GSS2002 <- read.csv(file="data-raw/GSS2002.csv", header=TRUE)

# Specify levels of select categorical variables
Education_levels <- c("Left HS", "HS", "Jr Col", "Bachelors", "Graduate")
Income_levels <- c("under 1000", "1000-2999", "3000-3999", "4000-4999",
                   "5000-5999", "6000-6999", "7000-7999", "8000-9999",
                   "10000-124999", "12500-14999", "15000-17499", "17500-19999",
                   "20000-22499", "22500-24999", "25000-29999", "30000-34999",
                   "35000-39999", "40000-49999", "50000-59999", "60000-74999",
                   "75000-89999",  "90000-109999", "110000-129999",
                   "130000-149999"
                   )

# Reorder ordinal categorical variables
GSS2002 <- GSS2002 %>%
  mutate(
    Education = factor(Education, levels = Education_levels),
    Income = factor(Income, levels = Income_levels)
  )

devtools::use_data(GSS2002, overwrite = TRUE)



# GSS2006 ---------------------------------------------------------------
GSS2006 <- read.csv(file="data-raw/GSS2006.csv", header=TRUE)

# Specify levels of select categorical variables
Degree_levels <- c("Left HS", "HS", "Jr Col", "Bachelors", "Graduate")

# Reorder ordinal categorical variables
GSS2006 <- GSS2006 %>%
  mutate(
    Degree = factor(Degree, levels = Degree_levels)
    )

devtools::use_data(GSS2006, overwrite = TRUE)


# IceCream ----------------------------------------------------------------
IceCream <- read.csv(file="data-raw/IceCream.csv", header=TRUE)
devtools::use_data(IceCream, overwrite = TRUE)


# ILBoys ----------------------------------------------------------------
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


# MathAnxiety ----------------------------------------------------------------
MathAnxiety <- read.csv(file="data-raw/MathAnxiety.csv", header=TRUE)
devtools::use_data(MathAnxiety, overwrite = TRUE)


# Maunaloa ----------------------------------------------------------------
Maunaloa <- read.csv(file="data-raw/Maunaloa.csv", header=TRUE)
devtools::use_data(Maunaloa, overwrite = TRUE)


# MobileAds ----------------------------------------------------------------
MobileAds <- read.csv(file="data-raw/MobileAds.csv", header=TRUE)
devtools::use_data(MobileAds, overwrite = TRUE)


# MnGroundwater -----------------------------------------------------------
MnGroundwater <- read.csv(file="data-raw/MnGroundwater.csv", header=TRUE)
devtools::use_data(MnGroundwater, overwrite = TRUE)


# Nasdaq ------------------------------------------------------------
Nasdaq <- read.csv(file="data-raw/Nasdaq.csv", header=TRUE)
devtools::use_data(Nasdaq, overwrite = TRUE)


# NBA1617 ------------------------------------------------------------
NBA1617 <- read.csv(file="data-raw/NBA1617.csv", header=TRUE)
devtools::use_data(NBA1617, overwrite = TRUE)


# NCBirths2004 ------------------------------------------------------------
NCBirths2004 <- read.csv(file="data-raw/NCBirths2004.csv", header=TRUE)

# Specify levels of select categorical variables
MothersAge_levels <- c("under 15", "15-19", "20-24", "25-29", "30-34", "35-39",
                       "40-44", "45-49")

# Reorder ordinal categorical variables
NCBirths2004 <- NCBirths2004 %>%
  mutate(MothersAge = factor(MothersAge, levels = MothersAge_levels))
devtools::use_data(NCBirths2004, overwrite = TRUE)


# Olympics2012 ------------------------------------------------------------
Olympics2012 <- read.csv(file="data-raw/Olympics2012.csv", header=TRUE)
devtools::use_data(Olympics2012, overwrite = TRUE)


# Phillies2009 ------------------------------------------------------------
Phillies2009 <- read.csv(file="data-raw/Phillies2009.csv", header=TRUE)
devtools::use_data(Phillies2009, overwrite = TRUE)


# Pitchers2005 ------------------------------------------------------------
Pitchers2005 <- read.csv(file="data-raw/Pitchers2005.csv", header=TRUE)
devtools::use_data(Pitchers2005, overwrite = TRUE)


# Quakes ------------------------------------------------------------------
Quakes <- read.csv(file="data-raw/Quakes.csv", header=TRUE)
devtools::use_data(Quakes, overwrite = TRUE)


# Quetzal ------------------------------------------------------------------
Quetzal <- read.csv(file="data-raw/Quetzal.csv", header=TRUE)
devtools::use_data(Quetzal, overwrite = TRUE)


# RangersTwins2016 -----------------------------------------------------------------
RangersTwins2016 <- read.csv(file="data-raw/RangersTwins2016.csv", header=TRUE)
devtools::use_data(RangersTwins2016, overwrite = TRUE)


# Reading -----------------------------------------------------------------
Reading <- read.csv(file="data-raw/Reading.csv", header=TRUE)
devtools::use_data(Reading, overwrite = TRUE)


# Recidivism -----------------------------------------------------------------
Recidivism <- read.csv(file="data-raw/Recidivism.csv", header=TRUE) %>% 
  mutate(
    Age = factor(Age, levels = c("Under 25", "25-34", "35-44", "45-54", "55 and Older")),
    Age25 = factor(Age25, levels = c("Under 25", "Over 25"))
  )
devtools::use_data(Recidivism, overwrite = TRUE)


# Salaries -----------------------------------------------------------------
Salaries <- read.csv(file="data-raw/Salaries.csv", header=TRUE)
devtools::use_data(Salaries, overwrite = TRUE)


# Sat2008 -----------------------------------------------------------------
Sat2008 <- read.csv(file="data-raw/Sat2008.csv", header=TRUE)
devtools::use_data(Sat2008, overwrite = TRUE)


# Skateboard -----------------------------------------------------------------
Skateboard <- read.csv(file="data-raw/Skateboard.csv", header=TRUE)
devtools::use_data(Skateboard, overwrite = TRUE)


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


# Volleyball -----------------------------------------------------------------
Volleyball2009 <- read.csv(file="data-raw/Volleyball2009.csv", header=TRUE)
devtools::use_data(Volleyball2009, overwrite = TRUE)


# wafers -----------------------------------------------------------------
wafers <- read.csv(file="data-raw/wafers.csv", header=TRUE)
devtools::use_data(wafers, overwrite = TRUE)


# Walleye -----------------------------------------------------------------
Walleye <- read.csv(file="data-raw/Walleye.csv", header=TRUE)
devtools::use_data(Walleye, overwrite = TRUE)


# Watertable --------------------------------------------------------------
Watertable <- read.csv(file="data-raw/Watertable.csv", header=TRUE)
devtools::use_data(Watertable, overwrite = TRUE)


