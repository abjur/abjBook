#' Setup ABJ book
#'
#' Setupar ABJ book
#'
#' @param name nome do livro.
#' @param path pasta onde os arquivos serao copiados.
#'
#' @export
setup_abj_book <- function(name, path = '.') {

  main_folder <- find_folder(template = 'abjBook', folder = '')

  folders <- main_folder %>%
    list.files(full.names = TRUE, pattern = '[^(skeleton|travis)]')

  copy2root <- main_folder %>%
    list.files(full.names = TRUE, recursive = TRUE) %>%
    stringr::str_subset(pattern = "skeleton|travis") %>%
    c(folders)

  file.remove(list.files(pattern = "\\.Rproj$"))
  invisible(file.copy(copy2root, to = path, recursive = T))

}
