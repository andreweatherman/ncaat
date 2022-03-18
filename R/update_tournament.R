update_tournament <- function(min_date, max_date){ tryCatch(expr = {
  offset <- seq(0, 500, 100)
  update_df <- purrr::map_dfr(offset, .f= function(offset) {url <- paste0('https://www.sports-reference.com/cbb/play-index/tourney.cgi?request=1&match=single&year_min=1985&year_max=&round=&region=&location=&school_id=&conf_id=&opp_id=&opp_conf=&seed=&seed_cmp=eq&opp_seed=&opp_seed_cmp=eq&game_result=&pts_diff=&pts_diff_cmp=eq&order_by=date_game&order_by_single=date_game&order_by_combined=g&order_by_asc=&offset=',offset)
                                         page <- rvest::read_html(url)
                                         update_df <- as.data.frame(page %>% rvest::html_nodes('#stats') %>% rvest::html_table())
                                         update_df <- update_df %>%
                                           dplyr::filter(School != 'School') %>%
                                           dplyr::rename('pts'=7,
                                                  'opp_pts'=9,
                                                  'game_loc'=12) %>%
                                           janitor::clean_names() %>%
                                           dplyr::mutate(team = gsub("[[:digit:]]", "", school),
                                                         opp = gsub("[[:digit:]]", "", opponent),
                                                         ot=gsub("[[:alpha:]]", "", ot),
                                                         diff=gsub("[[:punct:]]", "",diff),
                                                         date=lubridate::mdy(date),
                                                         across(c(2, 7, 9:11), as.numeric)) %>%
                                           dplyr::mutate(diff=pts-opp_pts) %>%
                                           tidyr::separate(school, into=c('seed',NA), sep="\\D", convert=TRUE) %>%
                                           tidyr::separate(opponent, into=c('opp_seed',NA), sep="\\D", convert=TRUE) %>%
                                           dplyr::relocate(team, .after=seed) %>%
                                           dplyr::relocate(opp, .after=opp_seed) %>%
                                           subset(select=-c(1))
                                         return(update_df)})
  update_df <- update_df %>% dplyr::filter(dplyr::between(date, as.Date(min_date), as.Date(max_date)))
  update_df <- dplyr::left_join(update_df, (utils::read.csv(curl::curl('https://raw.githubusercontent.com/andreweatherman/ncaat/main/school_town.csv')) %>% dplyr::select(team, team_town)), by='team')
  update_df <- dplyr::left_join(update_df, (utils::read.csv(curl::curl('https://raw.githubusercontent.com/andreweatherman/ncaat/main/school_town.csv')) %>% dplyr::select(opp, opp_town)), by='opp')
  tournament <- rbind(update_df, (tournament %>% select(-c(1)))) %>% dplyr::distinct() %>% dplyr::arrange(desc(date)) %>% dplyr::mutate(game_id=dplyr::row_number(), game_id=rev(game_id), .before=year) },
  warning = function(w) {})
  return(tournament) }
