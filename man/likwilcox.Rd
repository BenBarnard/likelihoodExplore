% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Wilcox.R
\name{likwilcox}
\alias{likwilcox}
\title{Wilcoxon Rank Sum Log Likelihood Function}
\usage{
likwilcox(m, n, x, log = FALSE)
}
\arguments{
\item{m}{numbers of observations in the first and second sample,
    respectively.  Can be vectors of positive integers.}

\item{n}{numbers of observations in the first and second sample,
    respectively.  Can be vectors of positive integers.}

\item{x}{vector of quantiles.}

\item{log}{logical; if TRUE, probabilities p are given as log(p).}
}
\value{
A numeric scalar for the log likelihood of the Wilcoxon rank sum
density given the data where m and n can be held constant or if vector were
given vector will be returned.
}
\description{
The log likelihood of a Wilcoxon rank sum density with data, x, m and n
parameters.
}
\details{
The log likelihood is the log of a function of parameters given the data.
}
\examples{
likwilcox(x = rwilcox(nn = 2, m = 3, n = 4),
        m = 3, n = 4)
}
