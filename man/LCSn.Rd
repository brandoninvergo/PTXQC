% Generated by roxygen2 (4.0.1): do not edit by hand
\name{LCSn}
\alias{LCSn}
\title{Find longest common substring from 'n' strings.}
\usage{
LCSn(strings, min_LCS_length = 7)
}
\arguments{
  \item{strings}{A vector of strings in which to search for
  LCS}

  \item{min_LCS_length}{Minimum length expected. Search is
  aborted if result is shorter}
}
\value{
longest common substring (or "" if shorter than
\code{min_LCS_length})
}
\description{
Warning: heuristic! This is not guaranteed to find the best
solution, since its done pairwise with the shortest input
string as reference.
}
\examples{
LCSn(c("1_abcde...", "2_abcd...", "x_abc..."))  ## result: "_abc"
}

