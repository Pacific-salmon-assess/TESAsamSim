% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/exampleData_plottingDF.R
\docType{data}
\name{cuPlottingDF2}
\alias{cuPlottingDF2}
\title{Example CU-specific plotting data}
\format{
A dataframe with 11 columns.
\describe{
  \item{ppnMixed}{an example of a \code{keyVariable} (see \code{buidDataCU}
  help doc for details) referring to MPs that differ in how much TAC they
  allocate to mixed vs. single stock fisheries}
  \item{mp}{management procedure (TAM refers to pseudo-total allowable
  mortality rule)}
  \item{om}{operating model (technically this is inaccurate for this
  particular example, the different OM levels actually represent alternative
  secondary MPs)}
  \item{hcr}{harvest control rule (typically fixed exploitation rate vs.
  TAM)}
  \item{plotOrder}{numeric representing the order in which different key
  variable factors should be plotted}
  \item{cuName}{CU name}=
  \item{muName}{MU name}
  \item{var}{variable representing different performance metric outputs}
  \item{avg}{the median value for a given variable among trials}
  \item{lowQ}{the lower percentile value for a given variable among trials
  (defaults to 10th)}
  \item{highQ}{the upper percentile value for a given variable among trials
  (defaults to 90th)}
}
}
\source{
generated using \code{recoverySimulator.R}
}
\usage{
cuPlottingDF2
}
\description{
One of two example dataframes generated by \code{buildDataCU} or
\code{buildDataAg}.
}
\keyword{datasets}
