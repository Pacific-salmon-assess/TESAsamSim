% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/wtdCV.R
\name{wtdCV}
\alias{wtdCV}
\title{Calculate weighted component CV}
\usage{
wtdCV(datMat, weight = TRUE)
}
\arguments{
\item{datMat}{A numeric matrix, generally representing a time series of
component specific abundances.}

\item{weight}{A logical argument that specifies whether CV should be
weighted or not.}
}
\value{
Returns a numeric representing mean CV.
}
\description{
This function calculates an estimate of the mean coefficient of variation
among an aggregate's components. The estimate is weighted by each components
mean abundance. Based on equation 4 in Thibaut and Connolly 2013.
}
\examples{
r <- recMatrix[1:10, ]
wtdCV(r, weight = TRUE)

}
