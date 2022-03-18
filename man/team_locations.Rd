\name{team_locations}
\alias{team_locations}
\docType{data}
\title{
School locations of every NCAA participant (1985-present)
}
\description{
Shapefile of city and state + coordinates of every competing school
}
\usage{data("team_locations")}
\format{
  A data frame with 260 observations on the following 3 variables.
  \describe{
    \item{\code{team_town}}{City and state of 'team'}
    \item{\code{opp_town}}{City and state of 'opp'}
    \item{\code{geometry}}{a sfc_POINT}
  }
}
\details{
Can use 'team_town' and/or 'opp_town' to merge data with 'tournament'
}
\source{
Coordinates pulled using Google Maps API with {ggmaps}
}
