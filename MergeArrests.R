
#3) Create a merged dataframe -- with the attributes from both dataframes
popState <- popState
arrests <- arrests
row.names(popState) <- popState$stateNames
mergedDF <- merge(popState, arrests, by=0, all=TRUE)
head(mergedDF)
# Drop the Row.names column
mergedDF2 <- mergedDF[ -c(1) ]
head(mergedDF2)

mergedDF2

