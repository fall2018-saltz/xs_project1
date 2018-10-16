
#1)Create a color coded map, based on the area of the state 
mergedDF2 <- mergedDF2
head(mergedDF2)
library(ggplot2)
library(ggmap)
library(maps)

mergedDF2$stateNames <- tolower(mergedDF2$state.name)
us=map_data("state")

map.simple <- ggplot(data= mergedDF2, aes(map_id = stateNames,fill=factor(overall.quantiles)))

map.simple <- map.simple + geom_map(map = us, fill = "light blue", color = "black")
map.simple
