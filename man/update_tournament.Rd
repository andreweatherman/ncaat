\name{update_tournament}
\alias{update_tournament}
\title{
Update tournament data
}
\description{
Update loaded tournament data frame by date range
}
\usage{
update_tournament(x)
}
\arguments{
  \item{min_date}{Tail of date range in year/month/date format (e.g. '2022-03-16')}
  \item{max_date}{Head of date range in year/month/date format (e.g. '2022-03-18')}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
See \code{\link{tournament}} for expanded variables list
}
\examples{
To update tournament frame with games from March 16th to March 18th:
\code{update_tournament('2022-03-16', '2022-03-18')}
