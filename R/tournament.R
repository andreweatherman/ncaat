#' @title NCAA Tournament Results
#'
#' @description Results and metadata for every NCAA Tournament game in the expansion era (1985-present)
#'
#'
#' @format A data frame with 4708 rows and 16 variables:
#' \describe{
#'   \item{game_id}{A unique game id sorted by date}
#'   \item{year}{Tournament year}
#'   \item{date}{Game date in date format}
#'   \item{region}{Tournament region of game}
#'   \item{round}{Round of the tournament.
#'   Note: 'Opening Round' is the 16-16 game when the field
#'   expanded to 65 teams from 2001-2010}
#'   \item{seed}{Seed of team}
#'   \item{team}{Team}
#'   \item{pts}{Points scored by team}
#'   \item{opp_seed}{Seed of opponent}
#'   \item{opp}{Opponent}
#'   \item{opp_pts}{Points scored by opponent}
#'   \item{ot}{Overtime periods, if any}
#'   \item{diff}{Score differential in terms of \code{team}}
#'   \item{game_loc}{Location of game}
#'   \item{team_town}{City and state for \code{team}}
#'   \item{opp_town}{City and state for \code{opp}}
#'   ...
#' }
#' @source \url{https://www.sports-reference.com/cbb/play-index/tourney.cgi}
"tournament"
