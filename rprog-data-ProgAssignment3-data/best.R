best <- function(state, outcome)
{
  ## Read outcome data
  file_name <- "outcome-of-care-measures.csv"
  care_meas <- read.csv(file_name, colClasses = "character")
  # care_meas <- read.csv(file_name)
  
  ## Check that state and outcome are valid
  #outcome[["Sta", exact = FALSE]]
  
  # states_list <- unique(care_meas$State)
#   if(sum(!(state == states_list))){
#     stop(paste("Erro in best(", state, ", ", outcome, ") : invalid state"
#   }
  
#   if(sum(!(outcome == states_list))){
    # stop(paste("Erro in best(", state, ", ", outcome, ") : invalid state"
  # }
  
  
  if(sum(outcome == c("heart attack", "heart failure", "pneumonia"))){
    # x <- c("heart attack", "heart failure", "pneumonia")
    outcome_index <- c(13, 19, 25)
    names(outcome_index) <- c("heart attack", "heart failure", "pneumonia")
    index <- outcome_index[outcome]
    #z <- rbind(x, y)
    
  }
  else{
    stop(paste("Erro in best(", state, ", ", outcome, ") : invalid state"))
  }
    
    
    # c("heart attack", "heart failure", "pneumonia")
  # state_hospital[,index] <- as.numeric(state_hospital[,index])
  ## Return hospital name in that state with lowest 30-day death
  state_hospital <- split(care_meas, care_meas$State)[[state]]
  state_hospital[,index] <- as.numeric(state_hospital[,index])
  # state_hospital[state_hospital[,index] == min(state_hospital[complete.cases(state_hospital[,index]),index]), 2]
  # state_hospital[state_hospital[,index] == min(state_hospital[,index], na.rm = T), 2]
  state_hospital[which(state_hospital[,index] == min(state_hospital[,index], na.rm = T)), 2]
  ## rate
  }
# 13,19,25
  
