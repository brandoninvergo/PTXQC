% Generated by roxygen2 (4.0.1): do not edit by hand
\name{renameFile}
\alias{renameFile}
\title{Given a vector of (short/long) filenames, translate to the (long/short) version}
\usage{
renameFile(f_names, mapping)
}
\arguments{
  \item{f_names}{Vector of filenames}

  \item{mapping}{A data.frame with from,to columns}
}
\value{
A vector of translated file names as factor (ordered by
mapping!)
}
\description{
Given a vector of (short/long) filenames, translate to the
(long/short) version
}

