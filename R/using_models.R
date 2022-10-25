get_stepwise_model <- function(data_for_step) {
  null <- null_model(data_for_step)
  full <- full_model(data_for_step)
  step <- stepwise_model(data_for_step)
  return(step)
}
