\name{update_player}
\alias{update_player}
\title{
Update player box data
}
\description{
Update loaded player data frame by date range. Function might take several minutes to run.
}
\usage{
update_player(min_date, max_date)
}
\arguments{
  \item{min_date}{Tail of date range in year/month/date format (e.g. '2022-03-16')}
  \item{max_date}{Head of date range in year/month/date format (e.g. '2022-03-18')}
}
}
\value{
See \code{\link{player_box}} for expanded variables list
}
\examples{
To update player frame with games from March 16th to March 18th:
\code{update_player('2022-03-16', '2022-03-18')}
