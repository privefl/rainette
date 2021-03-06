% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cutree.R
\name{cutree_rainette2}
\alias{cutree_rainette2}
\title{Cut a rainette2 result object into groups of documents}
\usage{
cutree_rainette2(res, k, criterion = c("chi2", "n"), ...)
}
\arguments{
\item{res}{the \code{rainette2} result object to be cut}

\item{k}{the desired number of groups}

\item{criterion}{criterion to use to choose the best partition. \code{chi2} means
the partition with the maximum sum of chi2, \code{n} the partition with the
maximum size.}

\item{...}{arguments passed to other methods}
}
\description{
Cut a rainette2 result object into groups of documents
}
\seealso{
\code{\link[=rainette2_complete_groups]{rainette2_complete_groups()}}
}
