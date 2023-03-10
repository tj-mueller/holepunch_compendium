#' Recode system time variable
#'
#' Recode system time variable in dataframe containing data from file
#' `gillespie.csv`
#' @param data dataframe containing data from file
#' `gillespie.csv`
#'
#' @return `data` with variable `system_size` recoded for
#' plotting
#' @export
recode_system_size <- function(data){
    dplyr::mutate(data,
           system_size = dplyr::recode(system_size,
                                large = "A. 1000 total sites",
                                small= "B. 100 total sites"))
}
