
#' Summarise installed R packages by library
#'
#'This function counts the number of packages installed
#'in each R library in your current environment.
#'
#' @returns A df with one row per library path, and a column for its package count
#' @export
#'
#' @examples
#' # Get a summary of installed packages by library path
#' lib_summary()
#'
lib_summary <- function() {
  pkgs <- utils::installed.packages()
  pkg_tbl <- table(pkgs[, "LibPath"])
  pkg_df <- as.data.frame(pkg_tbl, stringsAsFactors = FALSE)
  names(pkg_df) <- c("Library:", "n_packages:")
  pkg_df
}


