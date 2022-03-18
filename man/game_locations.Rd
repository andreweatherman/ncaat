\name{game_locations}
\alias{game_locations}
\docType{data}
\title{
NCAA Tournament Game Locations (1985-present)
}
\description{
Shapefile of city and state + coordinates of every game site
}
\usage{data("game_locations")}
\format{
  A data frame with 91 observations on the following 2 variables.
  \describe{
    \item{\code{game_loc}}{City and state of game locations}
    \item{\code{geometry}}{a sfc_POINT}
  }
}
\details{
Can use the 'game_loc' variable to merge data in 'tournament'
}
\source{
Coordinates pulled using Google Maps API with {ggmaps}
}
