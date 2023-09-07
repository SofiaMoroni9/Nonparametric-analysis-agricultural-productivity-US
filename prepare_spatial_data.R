library(readxl)
library(tidyr)
library(dplyr)
rm(list=ls())

population_county <- read.table("data/co-est2007-alldata.csv", 
                              sep =",", header = T)
population_county <- population_county[c(5,6,17)]
population_county$STNAME <- tolower(population_county$STNAME)
names(population_county) <- c("County.ANSI", "State", "Population")


producer_county <- read.table("data/number_of_producer_by_county.csv", 
                                sep =",", header = T)
producer_county <- producer_county[c(6,11,20)]
producer_county$County.ANSI = as.numeric(producer_county$County.ANSI)
producer_county$County = tolower(producer_county$County)
producer_county$State = tolower(producer_county$State)
producer_county = producer_county %>% rename(n.producers = Value)


county_coord <- read_excel("data/us-county-boundaries.xlsx")
county_coord$COUNTYFP_NOZERO <- as.numeric(county_coord$COUNTYFP_NOZERO)
county_coord <- county_coord[c(1,3,6,9,10)]
names(county_coord)[2] <- "fips"
names(county_coord)[5] <- "County.ANSI"
names(county_coord)[3] <- "County"
names(county_coord)[4] <- "State"
county_coord$County = tolower(county_coord$County)
county_coord$State = tolower(county_coord$State)


commodities <- read.table("data/total_commodities_by_county.csv", 
                                sep =",", header = T)
commodities[which(commodities$Value == " (D)"), ]$Value = NA
commodities$Value = as.numeric(gsub(",", "", commodities$Value))
commodities = commodities[which(commodities$Domain == 'TOTAL'),]
commodities <- commodities[-c(1,3,4,5,7,8,9,12,13,14,15,16,17,18,19,21)]
commodities$County.ANSI = as.numeric(commodities$County.ANSI)
commodities$County = tolower(commodities$County)
commodities$State = tolower(commodities$State)
commodities = commodities %>% rename(commodities = Value)


temp <- merge(commodities,county_coord, by=c("State","County", "County.ANSI"), all.x=TRUE, all.y=FALSE)
temp2 <- merge(temp,population_county, by=c("State","County.ANSI"), all.x=TRUE, all.y = FALSE)


loc <- strsplit(as.character(temp2$Geo_Point),",", fixed=TRUE)
loc <- do.call(rbind.data.frame, loc)
names(loc) <- c("x","y")

loc$x <- as.double(loc$x)
loc$y <- as.double(loc$y)

temp2 <- cbind(temp2,loc)

temp2 = temp2[-c(4,6)]

index = which(temp2$y < -140)
temp2 =temp2[-index,]

temp2 = drop_na(temp2)

write.csv(temp2,'data/commodities_county_df.csv')
