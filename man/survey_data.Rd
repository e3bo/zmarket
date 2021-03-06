% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\name{survey_data}
\alias{survey_data}
\title{Responses to survey questions related to sleep and socio-demographic behavior}
\format{
A data frame with 892 rows and 100 variables:
}
\source{
\url{https://docs.google.com/document/d/1NpkDqtKKxesKislnQuTwsdixwpic-REHmByeAeRFjhs/edit}
}
\usage{
survey_data
}
\description{
A dataset from a Gradient Metrics survey designed to identify a group of individuals likely to download an app designed to improve sleep.
}
\details{
Most variables have label attributes describing the question from which they originate.
}
\examples{
lapply(survey_data, attr, "label")
}
\keyword{datasets}
