## ----setup, include=FALSE-----------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  fig.width = 7, fig.height = 4,
  dpi = 96
)

## -----------------------------------------------------------------------------
utils::data("wq_demo", package = "tikatuwq")
head(wq_demo)

## -----------------------------------------------------------------------------
library(tikatuwq)

df <- wq_demo |>
  validate_wq() |>
  iqa(na_rm = TRUE)

conf <- conama_check(df, classe = "2")
head(conf)

## -----------------------------------------------------------------------------
plot_iqa(df)

## -----------------------------------------------------------------------------
conf_long <- conama_summary(df, classe = "2")
head(conf_long)

## ----eval=FALSE---------------------------------------------------------------
# # Avoid running nested rendering during vignette build on CRAN
# out_file <- render_report(df)
# out_file

