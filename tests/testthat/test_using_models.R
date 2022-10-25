describe("Get name models", {
  it("Right name: stepwise-model", {
    titanic <- read.csv("../data/titanic_data.csv")
    expected <- stepwise_model(titanic)
    obtained <- get_stepwise_model(titanic)
    expect_equal(obtained, expected)
  })
})
