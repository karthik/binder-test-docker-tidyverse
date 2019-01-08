FROM rocker/binder:3.5.1
LABEL maintainer="karthik"
RUN ["install2.r", "assertthat", "backports", "callr", "cli", "crayon", "curl", "desc", "devtools", "digest", "formatR", "fs", "futile.logger", "futile.options", "lambda.r", "magrittr", "memoise", "pkgbuild", "pkgload", "prettyunits", "processx", "ps", "R6", "Rcpp", "remotes", "rlang", "rprojroot", "rstudioapi", "semver", "sessioninfo", "stevedore", "stringi", "stringr", "testthat", "usethis", "withr"]
WORKDIR /payload/
CMD ["R"]
