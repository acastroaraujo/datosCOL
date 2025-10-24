

#' Get Dataset
#'
#' Look for a dataset here:
#'
#' https://www.datos.gov.co/browse?sortBy=most_accessed&pageSize=50&category=Justicia+y+Derecho&provenance=official
#'
#' @param id a string
#' @param query (optional) an SoQL query ("Socrata Query Language")
#'
#' @returns a dataset
#'
#' @examples
#'\dontrun{
#' divipola <- get_dataset("gdxc-w37w")
#'
#' d <- get_dataset(
#'   id = "g3ma-7zce",
#'   query = "SELECT * WHERE anio = '2024'"
#' )
#'
#'}
#'
#' @export
get_dataset <- function(id, query = "SELECT *") {
  stopifnot(is.character(id) & length(id) == 1)
  stopifnot(is.character(query) & length(query) == 1)

  app_token <- Sys.getenv("DATOS_ABIERTOS_COL")

  req <- httr2::request("https://www.datos.gov.co/api/v3") |>
    httr2::req_url_path_append(glue::glue("views/{id}/query.json")) |>
    httr2::req_headers(
      "X-App-Token" = app_token,
      Accept = "application/json"
    ) |>
    httr2::req_url_query(query = query) |>
    httr2::req_retry(max_tries = 5)

  resp <- httr2::req_perform(req, verbosity = 1)
  stopifnot(httr2::resp_status(resp) == 200)

  out <- httr2::resp_body_json(resp, simplifyVector = TRUE)
  ok <- !grepl(pattern = "^:", colnames(out))
  return(out[ok])
}




