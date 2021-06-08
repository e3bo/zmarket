#' Responses to survey questions related to sleep and socio-demographic behavior
#'
#' A dataset from a Gradient Metrics survey designed to identify a group of individuals likely to download an app designed to improve sleep.
#'
#' Most variables have label attributes describing the question from which they originate.
#'
#' @format A data frame with 892 rows and 100 variables:
#' @source \url{https://docs.google.com/document/d/1NpkDqtKKxesKislnQuTwsdixwpic-REHmByeAeRFjhs/edit}
#' @examples
#' lapply(survey_data, attr, "label")
"survey_data"

#' Responses to survey experiment about messages that affect likelihood of download
#'
#' A dataset from a Gradient Metrics survey experiment designed to determine the effects of attributes of a message on the motivation to download.
#'
#' @format A data frame with 10,704 rows and 9 variables:
#' @source \url{https://www.gradientmetrics.com}
"experiment_data"


#' Takes a data frame containing variables of class \code{haven::labelled} and replaces them with factors
#'
#' @param ldf A data frame which may contained variables of class \code{haven::labelled}
#' @return A data frame in which labeled variables have been replaced with factors
#' @export
#' @examples
#' fp <- system.file("extdata", "survey_data.sav", package = "zmarket")
#' orig <- haven::read_sav(fp)
#' rep <- df_labelled_to_factor(orig)
#' lapply(orig, "class")
#' lapply(rep, "class")
df_labelled_to_factor <- function(ldf){
  lv <- sapply(ldf, haven::is.labelled)
  for (i in seq_along(lv)){
    if(lv[i]){
      ldf[[names(lv)[i]]] <- haven::as_factor(ldf[[names(lv)[i]]])
    }
  }
  ldf
}
