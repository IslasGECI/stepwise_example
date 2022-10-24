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
    expected <- "full-model"
    obtained <- full_model(0)
    expect_equal(obtained, expected)
  })
  it("Right name: stepwise-model", {
    expected <- "stepwise-model"
    obtained <- stepwise_model(0, 1)
    expect_equal(obtained, expected)
  })
})
