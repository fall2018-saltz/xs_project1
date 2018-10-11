
#Step A: Load and Merge datasets
#1)	Read in the census dataset (using the function created in HW 3)
popState <- raw_data
my_func <- function(popState)
{
    popState <- popState[-c(1,53),-c(1,2,3,4)]
    colnames(popState) <- c("stateNames","population","popOver18","percentOver18")
    return(popState)
}
popState <- my_func(popState)
head(popState)
#2)	Copy the USArrests dataset into a local variable (similar to HW 2)
arrests <- USArrests
head(arrests)

popState
arrests

