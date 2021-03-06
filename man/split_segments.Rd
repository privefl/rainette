% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/split_segments.R
\name{split_segments}
\alias{split_segments}
\alias{split_segments.character}
\alias{split_segments.Corpus}
\alias{split_segments.corpus}
\title{Split a character string or corpus into segments}
\usage{
split_segments(obj, segment_size = 40, segment_size_window = NULL)

\method{split_segments}{character}(obj, segment_size = 40, segment_size_window = NULL)

\method{split_segments}{Corpus}(obj, segment_size = 40, segment_size_window = NULL)

\method{split_segments}{corpus}(obj, segment_size = 40, segment_size_window = NULL)
}
\arguments{
\item{obj}{character string, quanteda or tm corpus object}

\item{segment_size}{segment size (in words)}

\item{segment_size_window}{window around segment size to look for best splitting point}
}
\value{
If obj is a tm or quanteda corpus object, the result is a quanteda corpus.
If obj is a character string, the result is a tibble.
}
\description{
Split a character string or corpus into segments, taking into account punctuation where possible
}
\examples{
\dontrun{
require(quanteda)
split_segments(data_corpus_inaugural)
}
}
