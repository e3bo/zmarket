#' Calculate the index of a variable
#'
#' @param grouping_variable A discrete grouping variable
#' @param index_variable A discrete variable for which to calculate index
#' @return A table of index values which are equal to 100 times the frequency of a level of \code{index_variable} within levels of \code{grouping_variable} relative to the aggregate of all its levels.
#' @export
#' @examples
#' with(experiment_data, index(duration, social_proof))
#' with(survey_data, index(s_gender, s_age))
index <- function(grouping_variable, index_variable) {
  table(index_variable, grouping_variable) /
    as.numeric(table(index_variable)) * 100
}
