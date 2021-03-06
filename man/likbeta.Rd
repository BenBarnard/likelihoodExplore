% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Beta.R
\name{likbeta}
\alias{likbeta}
\title{Beta Log Likelihood Function}
\usage{
likbeta(shape1, shape2, ncp = 0, x, log = FALSE)
}
\arguments{
\item{shape1}{non-negative parameters of the Beta distribution.}

\item{shape2}{non-negative parameters of the Beta distribution.}

\item{ncp}{non-centrality parameter.}

\item{x}{vector of quantiles.}

\item{log}{logical; if TRUE, probabilities p are given as log(p).}
}
\value{
A numeric scalar for the log likelihood of the beta density given the
data where shape1, shape2, and ncp can be held constant or if vector were given
vector will be returned.
}
\description{
The log likelihood of a beta density with data, x, shape1, shape2
and ncp parameters.
}
\details{
The log likelihood is the log of a function of parameters given the data.
}
\examples{
likbeta(x = rbeta(n = 2, shape1 = 3, shape2 = 4),
        shape1 = 3, shape2 = 4)
}
