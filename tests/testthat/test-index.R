test_that("index function works as expected", {
  sampdata <- data.frame(gender = c(rep("M", 4), rep("F", 6)),
                         age = c(rep("1-23", 2), rep("24-35", 4), rep("35-40", 4)))
  expect_equal(index(sampdata$gender, sampdata$age)["24-35", "M"], 125)
  expect_equal(index(survey_data$s_gender, survey_data$s_age)["31-45", "Male"],
               (122 / 389) / (253 / 892) * 100)
  expect_error(index(survey_data$s_age, experiment_data$price),
               "all arguments must have the same length")
})
