describe("Get name null-model", {
  it("Right name", {
    expected <- "null-model"
    obtained <- null_model(0)
    expect_equal(obtained, expected)
  })
})