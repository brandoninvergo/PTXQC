% Generated by roxygen2 (4.0.1): do not edit by hand
\name{simplifyNames}
\alias{simplifyNames}
\title{Removes common substrings in a set of strings.}
\usage{
simplifyNames(strings, infix_iterations = 2, min_LCS_length = 7)
}
\arguments{
  \item{strings}{A vector of strings which are to be
  shortened}

  \item{infix_iterations}{Number of successive rounds of
  substring removal}

  \item{min_LCS_length}{Minimum length of the longest
  common substring (default:7, minimum: 6)}
}
\value{
A list of shortened strings, with the same length as the
input
}
\description{
Usually handy for plots, where condition names should be as
concise as possible. E.g. you do not want names like
'TK20130501_H2M1_010_IMU008_CISPLA_E3_R1.raw' and
'TK20130501_H2M1_026_IMU008_CISPLA_E7_R2.raw' but rather
'TK.._010_I.._E3_R1.raw' and 'TK.._026_I.._E7_R2.raw'
}
\details{
If multiple such substrings exist, the algorithm will
remove the longest first and iterate a number of times (two
by default) to find the second/third etc longest common
substring. Each substring must fulfill a minimum length
requirement - if its shorter, its not considered worth
removing and the iteration is aborted.
}
\examples{
require(PTXQC)
simplifyNames(c('TK20130501_H2M1_010_IMU008_CISPLA_E3_R1.raw', 'TK20130501_H2M1_026_IMU008_CISPLA_E7_R2.raw'), infix_iterations = 2)
# --> "TK.._010_I.._E3_R1.raw","TK.._026_I.._E7_R2.raw"

try(simplifyNames(c("bla", "foo"), min_LCS_length=5))
# --> error, since min_LCS_length must be >=6
}

