null_model <- function(data_for_null) {
  return("null-model")
}

full_model <- function(data_for_full) {
  return("full-model")
}

stepwise_model <- function(null, full) {
  return("stepwise-model")
}