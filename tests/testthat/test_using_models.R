describe("Get name models", {
  it("Right name: stepwise-model", {
    expected <- "stepwise-model"
    obtained <- get_stepwise_model(0)
    expect_equal(obtained, expected)
  })
})