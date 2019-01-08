FROM rocker/binder:3.5.1

## Copies your repo files into the Docker Container
USER root
COPY . ${HOME}
RUN chown -R ${NB_USER} ${HOME}

## Become normal user again
USER ${NB_USER}

## Run an install.R script
RUN R --quiet -e "source('install.R')";
