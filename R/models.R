null_model <- function(data_for_null) {
  null_regression <- glm(
    formula = Survived ~ 1,
    data = data_for_null,
    family = "binomial"
  )
  return(null_regression)
}

full_model <- function(data_for_full) {
  all_regression <- glm(
    formula = Survived ~ Pclass + SibSp + Parch,
    data = data_for_full,
    family = "binomial"
  )
  return(all_regression)
}

stepwise_model <- function(null, full) {
  step_regression <- stats::step(null,
    scope = list(
      lower = null,
      upper = full
    ),
    direction = "both",
    trace = 0
  )
  return(step_regression)
}
