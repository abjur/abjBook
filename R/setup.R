#' Setup ABJ book
#'
#' Creates ABJ book file structure. It will contain all the files that you need
#' to compile your new book. You should start by running \code{Ctrl+Shift+B}
#' (build) on index.Rmd using RStudio. If it runs successfully, your output will
#' be in the _book folder
#'
#' @param name Name of the book. You may create a folder with this name before
#'   running this function.
#' @param path Path to the book folder. Your book files will be inside
#'   \code{/path/folder/name}.
#'
#' @export
#'
#' @examples
#' \dontrun{
#' dir.create("exampleBook")
#' abjBook::setup_abj_book("myNewBook", path = "exampleBook")
#' }
setup_abj_book <- function(name, path = '.') {
  dir.create(path, recursive = TRUE, showWarnings = FALSE)

  main_folder <- find_folder(template = 'abjBook', folder = '')

  folders <- main_folder %>%
    list.files(full.names = TRUE, pattern = '[^(skeleton|travis)]')

  copy2root <- main_folder %>%
    list.files(full.names = TRUE, recursive = TRUE) %>%
    stringr::str_subset(pattern = "skeleton|travis") %>%
    c(folders)

  file.remove(list.files(path, pattern = "\\.Rproj$"))
  invisible(file.copy(copy2root, to = path, recursive = TRUE))

}
