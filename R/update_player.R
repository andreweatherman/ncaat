update_player <- function(min_date, max_date){
  suppressWarnings({
    offset <- seq(0, 1500, 100)
    update_df <- purrr::map_dfr(offset, .f=function(offset) {url <- paste0('https://www.sports-reference.com/cbb/play-index/tourney_pgl_finder.cgi?request=1&match=game&year_min=1985&year_max=2022&round=&school_id=&opp_id=&person_id=&game_month=&game_result=&is_starter=&pos_is_g=Y&pos_is_f=Y&pos_is_c=Y&c1stat=&c1comp=gt&c1val=&c2stat=&c2comp=gt&c2val=&c3stat=&c3comp=gt&c3val=&c4stat=&c4comp=gt&c4val=&is_dbl_dbl=&is_trp_dbl=&order_by=date_game&order_by_asc=&offset=', offset)
    page <- rvest::read_html(url)
    update_df <- as.data.frame(page %>%
                              rvest::html_nodes('#stats') %>%
                              rvest::html_table()) %>%
      janitor::clean_names() %>%
      dplyr::filter(player != 'Player') %>%
      dplyr::select(-c(1)) %>%
      dplyr::rename('team'=4,
             'result'=6,
             'fg_pct'=11,
             'two_fg_pct'=14,
             'three_fg_pct'=17,
             'ft_pct'=20) %>%
      dplyr::mutate(date=as.Date(date),
             dplyr::across(c(8:30), as.numeric),
             gs=case_when(gs=='1'~'start',
                          TRUE~'bench'))
    return(update_df)})
    update_df <- update_df %>% dplyr::filter(dplyr::between(date, as.Date(min_date), as.Date(max_date)))
    update_df <- dplyr::left_join(update_df, utils::read.csv(curl::curl('https://raw.githubusercontent.com/andreweatherman/ncaat/main/merge_data/merge_player_team.csv')), by='team')
    update_df <- dplyr::left_join(update_df, utils::read.csv(curl::curl('https://raw.githubusercontent.com/andreweatherman/ncaat/main/merge_data/merge_player_opp.csv')), by='opp')
    update_df <- update_df %>% dplyr::select(-c(4:5)) %>% dplyr::rename('team'=29, 'opp'=30) %>% dplyr::relocate(team, .after=date) %>% relocate(opp, .after=team)
    player_box <- dplyr::left_join((update_df %>% dplyr::mutate(team=stringr::str_trim(team), opp=stringr::str_trim(opp))), (tournament %>% dplyr::select(date, team, opp, game_id, region, round, seed, opp_seed, game_loc)), by=c('date', 'team', 'opp'))
    return(player_box)})}
