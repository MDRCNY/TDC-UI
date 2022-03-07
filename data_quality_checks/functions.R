### METAFILE -------------------------------------------------------------------------------------------------
#' Meta data generating function
#' 
#' This function takes in a variable returns the following:
#' - Type of the variable
#' - Number of non-unique NA values
#' - Up to 1st to 5th unique values
#' - Percentage of NA values
#' - Min
#' - Max
#' - Mean
#' - Median
#' 
#' Recommended Use: The function should be used with a lapply or map function where a data set will be applied
#' and the function will be used on each of the column variable of the data set.
#' 
#' @param var variable of interest for us
#' @param missVals if we have named NA as sth else such as "missing" specify here
#'
#' @return
#' @export
#'
#' @examples
var.describe<-function(var,missVals) {
  
  # setting values that correspond to missing to NA
  varCodeNA <- var
  varCodeNA[varCodeNA %in% missVals] <- NA
  
  # number of unique values
  ul <- length(unique(varCodeNA))
  
  # varClass is whether numeric or character
  varClass <- class(var)
  
  # proportion NA
  isNA <- is.na(varCodeNA)
  prNA <- mean(isNA) * 100
  
  # other descriptors
  varMinNoMiss <- varMaxNoMiss <- varMeanNoMiss <- varMedianNoMiss <- NA
  if (varClass %in% c("numeric","integer")) {
    varMinNoMiss <- min(varCodeNA,na.rm=TRUE) # estimating min
    varMaxNoMiss <- max(varCodeNA,na.rm=TRUE) # estimating max
    varMeanNoMiss <- round(mean(varCodeNA,na.rm=TRUE),1) # estimating mean
    varMedianNoMiss <- round(median(varCodeNA,na.rm=TRUE),1) # estimating median
  }
  
  # Picking the first 2 unique categories for each variable/column
  first2 <- NA
  if (ul==1) first2 <- paste(unique(varCodeNA,na.rm=TRUE)[1:1],collapse="; ")
  if (ul>=2) first2 <- paste(unique(varCodeNA,na.rm=TRUE)[1:2],collapse="; ")
  
  # Put all values in a vector
  out <- c(ul,first2,prNA,varMinNoMiss,varMaxNoMiss,varMeanNoMiss,varMedianNoMiss)
  # label the vector
  names(out) <- c("NumUnique","Examples","PctNA","Min","Max","Mean","Median")
  
  # return as a data frame
  return(as.data.frame(t(out)))
}