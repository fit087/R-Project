rankhospital <- function(state, outcome, num = "best"){
  ## Read outcome data
  file_name <- "outcome-of-care-measures.csv"
  care_meas <- read.csv(file_name, colClasses = "character")
  
  #outcome_index <- c(13, 19, 25)
  outcome_index <- c(11, 17, 23)
  names(outcome_index) <- c("heart attack", "heart failure", "pneumonia")
  index <- outcome_index[outcome]
  
  ## Check that state and outcome are valid
  
  ## Return hospital name in that state with the given rank
  
  #source('~/R-Project/rprog-data-ProgAssignment3-data/best.R')
  decre <- F
  if(num == "best")     {num <- 1; decre <- F}
  if(num == "worst")    {num <- 1; decre <- T}
  
  ## 30-day death rate
  ## 
  
  # Take the data from the state
  state_hospital <- split(care_meas, care_meas$State)[[state]]
  
  # Become the rate choosed in a numeric value
  state_hospital[,index] <- as.numeric(state_hospital[,index])
  
  #state_hospital[which(state_hospital[,index] == min(state_hospital[,index], na.rm = T)), 2]
  #z1[order(z[,2], decreasing = T),]
  
  #state_hospital <- state_hospital[order(state_hospital[,index], decreasing = decre)[num],2]
  hospital <- state_hospital[order(state_hospital[,index], state_hospital[,2], decreasing = decre)[num],2]
  #print(state_hospital)
  #
  print(hospital)
  #
  #print(paste(state_hospital, ))
  #
  print(state_hospital[order(state_hospital[,index], state_hospital[,2], decreasing = decre)[num],c(2,index)])
}
