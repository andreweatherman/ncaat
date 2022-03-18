\name{tournament}
\alias{tournament}
\docType{data}
\title{
NCAA Tournament Results (1985-present)
}
\description{
Results and metadata for every NCAA Tournament game in the expansion era (1985-present)
}
\usage{data("tournament")}
\format{
  A data frame with 4708 observations on the following 16 variables.
  \describe{
    \item{\code{game_id}}{A unique game identifier}
    \item{\code{year}}{The year of the tournament}
    \item{\code{date}}{The date of the game}
    \item{\code{region}}{The region of the game}
    \item{\code{round}}{The round of the game}
    \item{\code{seed}}{The seed of \code{team}}
    \item{\code{team}}{Team}
    \item{\code{pts}}{Points scored by \code{team}}
    \item{\code{opp_seed}}{The seed of \code{opp}}
    \item{\code{opp}}{Opponent}
    \item{\code{opp_pts}}{Points scored by \code{opp}}
    \item{\code{ot}}{Number of overtime periods, if any}
    \item{\code{diff}}{Score differential in terms of \code{team}}
    \item{\code{game_loc}}{The location of the game}
    \item{\code{team_town}}{City and state of \code{team}}
    \item{\code{opp_town}}{City and state of \code{opp}}
  }
}
\details{
The ‘First Four’ games from the 2022 tournament are included but no others. The 2001 tournament featured an opening round 16-seed matchup after the field expanded to 65 teams. This ran through the 2010 tournament. These games are coded as ‘Opening Round.’ They were later replaced by the First Four starting in 2011. The NCAA, for whatever reason, officially referred to the ‘First Four’ as the ‘First Round’ games from their inception in 2011 through the 2015 tournament. For consistent formatting, round names reflect current terminology.
}
\source{
\url{https://www.sports-reference.com/cbb/play-index/tourney.cgi}
