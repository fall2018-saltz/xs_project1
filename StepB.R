
#1)Create a color coded map, based on the area of the state 
mergedDF2 <- mergedDF2
head(mergedDF2)
library(ggplot2)
library(ggmap)
library(maps)


us=map_data("state")

map.simple <- ggplot(data= mergedDF2)

map.simple <- map.simple + geom_map(map = us, fill = "light bule", color = "black")
map.simple
