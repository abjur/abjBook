
[![Travis-CI Build Status](https://travis-ci.org/abjur/abjBook.svg?branch=master)](https://travis-ci.org/abjur/abjBook)

<!-- README.md is generated from README.Rmd. Please edit that file -->
abjBook
=======

The goal of abjBook is to build ABJ books fast.

Installation
------------

You can install abjBook from github with:

``` r
# install.packages("devtools")
devtools::install_github("abjur/abjBook")
```

Example
-------

This is a basic example which shows you how to create a new book:

``` r
abjBook::setup_abj_book("myNewBook", path = "./exampleBook")
```

If you are using GitHub, We recommend that you i) create a repository, ii) clone it to the desired folder, say `/path/to/folder/myBook` and iii) run `abjBook::setup_abj_book("myBook", "/path/to/folder/")`.

Now your directory will look like this:

    #> - 01-introducao.Rmd
    #> - 02-metodologia.Rmd
    #> - 03-resultados.Rmd
    #> - 08-referencias.Rmd
    #> - abj_book.Rproj
    #> - bibliography
    #> - _bookdown.yml
    #> - imgs
    #> - index.Rmd
    #> - latex
    #> - _output.yml

-   `index.Rmd` file has some nice tips on how to print images and render tables using this template.
    -   If you type `Ctrl+Shift+K` (knit button) on `index.Rmd`, hopefully it will render the book inside `_book` folder.
    -   A `_bookdown_files` folder is also generated, but don't bother.
    -   If you open the `index.html` file inside the `_book` folder in the browser, you'll see the compiled book.
-   `xx-yyyy.Rmd` files will have the contents of your book. May the tidyverse be with you.
-   `abj_book.Rproj` is the R project file. You should rename it to the name of your github repo.
-   `bibliography` folder has the `.bib` files. We recommend you to change the `book.bib` file inside it.
-   `_output.yml` is used to configure outputs. If you are using more than one output, you should compile `index.Rmd` with `Ctrl+Shift+B` (build button) instead of knit.
-   `_bookdown.yml` configures chapters naming scheme and other bookdown options. Don't change the defaults unless you really need to do that.
-   `imgs` folder is used to store all your images in `png`, `jpg` or even `pdf`.
-   `latex` folder has some additional configuration files to use ABJ pdf template. Don't change it.

This template is the basis of all ABJ technical reports and should be used in all our projects.
