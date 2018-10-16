
#1)Create a color coded map, based on the area of the state 
mergedDF2 <- mergedDF2
head(mergedDF2)
library(ggplot2)
library(ggmap)
map.simple <- ggplot(mergedDF2,aes(map_id=state))
map.simple <- map.simple + geom_map(map=us, fill= "state", +color="black")
map.simple
