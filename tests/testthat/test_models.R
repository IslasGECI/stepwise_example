describe("Get name models", {
  titanic <- read.csv("../data/titanic_data.csv")
  it("Right name: null-model", {
    titanic_null <- null_model(titanic)
    obtained <- titanic_null$coefficients
    names(obtained) <- c()
    expected <- -0.5596
    expect_equal(obtained, expected, tolerance = 1e-3)
  })
  it("Right name: full-model", {
    titanic_full <- full_model(titanic)
    expected <- c(-0.1230, -0.2785, 0.1238, 0.3184)
    obtained <- titanic_full$coefficients
    names(obtained) <- c()
    expect_equal(obtained, expected, tolerance = 1e-3)
  })
  it("Right name: stepwise-model", {
    titanic_step <- stepwise_model(titanic)
    expected <- c(-0.0857, 0.3617, -0.2767)
    obtained <- titanic_step$coefficients
    names(obtained) <- c()
    expect_equal(obtained, expected, tolerance = 1e-3)
  })
})
