
mergedDF2<-mergedDF2
head(mergedDF2)
library(ggplot2)
library(ggmap)
library(maps)
#1) Repeat step B, but color code the map based on the murder rate of each state.
mergedDF2$stateNames <- tolower(mergedDF2$state.name)
us=map_data("state")

map.simple <- ggplot(mergedDF2, aes(map_id = stateNames))

map.simple <- map.simple + geom_map(map = us, aes(fill=mergedDF2$Murder))
 
map.simple <- map.simple + expand_limits(x=us$long,y=us$lat) + coord_map()

map.simple
#2) Show the population as a circle per state (the larger the population, the larger the circle), using the location defined by the center of each state


