describe("Get name models", {
  it("Right name: null-model", {
    expected <- "null-model"
    obtained <- null_model(0)
    expect_equal(obtained, expected)
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