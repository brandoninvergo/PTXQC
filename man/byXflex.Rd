% Generated by roxygen2 (4.0.1): do not edit by hand
\name{byXflex}
\alias{byXflex}
\title{Same as 'byX', but with more flexible group size, to avoid that the last group has only a few entries (<50\% of desired size).}
\usage{
byXflex(data, indices, subset_size = 5, FUN, sort_indices = TRUE, ...)
}
\arguments{
  \item{data}{Data.frame whose subset to use on FUN}

  \item{indices}{Vector of group assignments, same length
  as nrow(data)}

  \item{subset_size}{Ideal number of groups to use in one
  subset -- this can be changed internally, from
  75\%-150\%}

  \item{FUN}{function Applied to subsets of data}

  \item{sort_indices}{Groups are formed by their sorted
  character(!) names}

  \item{...}{More arguments to FUN}
}
\value{
list of function result (one entry for each subset)
}
\description{
The 'subset_size' param is internally optimized using
\code{\link{correctSetSize}} and then \code{\link{byX}} is
called.
}
\examples{
stopifnot(
   byXflex(data.frame(d=1:10), 1:10, 2, sum, sort_indices = FALSE) ==
   c(3, 7, 11, 15, 19)
 )
}

