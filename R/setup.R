#' Setup ABJ book
#'
#' Setupar ABJ book
#'
#' @param name nome do livro.
#' @param path pasta onde os arquivos serao copiados.
#'
#' @export
setup_abj_book <- function(name, path = './') {
  arqs <- dir(system.file('bookdown-demo', package = 'abjBook'),
              all.files = TRUE, full.names = TRUE)
  file.copy(arqs, path)
  rstudio <- system.file('bookdown-demo.Rproj', package = 'abjBook')
  file.copy(rstudio, sprintf('%s/%s.Rproj', path, name))
  readme <- sprintf('%s/README.md', path)
  r <- stringr::str_replace_all(readr::read_file(readme), '<nome>', name)
  cat(r, file = readme)
  book_name <- sprintf('%s/_bookdown.yml', path)
  r <- stringr::str_replace_all(readr::read_file(book_name), '<nome>', name)
  cat(r, file = book_name)
  invisible(TRUE)
}
