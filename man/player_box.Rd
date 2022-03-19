\name{player_box}
\alias{player_box}
\docType{data}
\title{
NCAA Tournament box score data (1985-present)
}
\description{
NCAA Tournament game box score data for all players in the expansion era
}
\usage{data("player_box")}
\format{
  A data frame with 46560 observations on the following 36 variables.
  \describe{
    \item{\code{player}}{Player name}
    \item{\code{pos}}{Position (one of 'G' (guard), 'F' (forward), or 'C' (center))}
    \item{\code{date}}{Date of game}
    \item{\code{team}}{Player's team}
    \item{\code{opp}}{Opponent}
    \item{\code{result}}{Game result (W/L)}
    \item{\code{gs}}{Whether the player started the game or not ('start' vs. 'bench')}
    \item{\code{mp}}{Minutes played}
    \item{\code{fg}}{Field goals made}
    \item{\code{fga}}{Field goals attempted}
    \item{\code{fg_pct}}{Field goal percentage}
    \item{\code{x2p}}{2PTs made}
    \item{\code{x2pa}}{2PTs attempted}
    \item{\code{two_fg_pct}}{2PT field goal percentage}
    \item{\code{x3p}}{3PTs made}
    \item{\code{x3pa}}{3PTs attempted}
    \item{\code{three_fg_pct}}{3PT field goal percentage}
    \item{\code{ft}}{Free throws made}
    \item{\code{fta}}{Free throws attempted}
    \item{\code{ft_pct}}{Free throw percentage}
    \item{\code{orb}}{Offensive rebounds}
    \item{\code{drb}}{Defensive rebounds}
    \item{\code{trb}}{Total rebounds}
    \item{\code{ast}}{Assists}
    \item{\code{stl}}{Steals}
    \item{\code{blk}}{Blocks}
    \item{\code{tov}}{Turnovers}
    \item{\code{pf}}{Personal fouls}
    \item{\code{pts}}{Points scored}
    \item{\code{gm_sc}}{Game score, where applicable (formula below)}
    \item{\code{game_id}}{Game ID coorelated with \code{tournament}}
    \item{\code{region}}{Game region}
    \item{\code{round}}{Game round}
    \item{\code{seed}}{Team seed}
    \item{\code{opp_seed}}{Opponent seed}
    \item{\code{game_loc}}{Game location}
  }
}
\details{
Game score formula is: PTS + 0.4 * FG - 0.7 * FGA - 0.4*(FTA - FT) + 0.7 * ORB + 0.3 * DRB + STL + 0.7 * AST + 0.7 * BLK - 0.4 * PF - TOV. Game Score was created by John Hollinger to give a rough measure of a player's productivity for a single game. The scale is similar to that of points scored. 40 is an outstanding performance, 10 is an average performance, etc. Explanation from Sports Reference.
}
\source{
\url{https://www.sports-reference.com/cbb/play-index/tourney_pgl_finder.cgi}
}
