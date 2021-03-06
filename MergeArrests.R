
#3) Create a merged dataframe -- with the attributes from both dataframes
popState <- popState
arrests <- arrests
row.names(popState) <- popState$stateNames
mergedDF <- merge(popState, arrests, by=0, all=TRUE)
head(mergedDF)
# Drop the Row.names column
mergedDF<- mergedDF[ -c(1) ]
head(mergedDF)

#4) Add the area of each state, and the center of each state, 
#to the merged dataframe, using the ‘state.area’, ‘state.center’ and ‘state.name’ vectors
library(ggmap)
library(ggplot2)
stateDF <- data.frame(state.name,state.area,state.center,stringsAsFactors=FALSE)
head(stateDF)
mergedDF2 <- merge(mergedDF, stateDF, by=0, all=TRUE)
head(mergedDF2)
# Drop the Row.names column
mergedDF2<- mergedDF2[ -c(1) ]
head(mergedDF2)
