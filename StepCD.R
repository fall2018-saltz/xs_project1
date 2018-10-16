
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

#2) Show the population as a circle per state (the larger the population, 
# the larger the circle), using the location defined by the center of each state
map.simple2 <- map.simple + geom_point(data=mergedDF2,aes(x=mergedDF2$x,y=mergedDF2$y,size=mergedDF2$population))
map.simple2

#3) Repeat step C, but only show the states in the north east
require('RDSTK')
ny <- street2coordinates("New York+New York+United+States")

ny
ne=map_data("state", xlim=c(ny$lon-10,ny$lon+10), ylim=c(ny$lat-10,ny$lat+10))
map.simple3 <- ggplot(mergedDF2, aes(map_id = stateNames))
map.simple3 <- map.simple3 + geom_map(map = ne, aes(fill=mergedDF2$Murder))
map.simple3 <- map.simple3 + expand_limits(x=us$long,y=us$lat) + coord_map()
map.simple3 

map.simple4 <- map.simple3 + geom_point(data=mergedDF2,aes(x=mergedDF2$x,y=mergedDF2$y,size=mergedDF2$population))
map.simple4

