FROM mavelli/rocker-bayesian
## FROM merliseclyde/jags
MAINTAINER "Merlise Clyde" clyde@duke.edu

RUN apt-get update && . /etc/environment \
  && install2.r --repos 'https://cran.rstudio.com' BAS ISLR arm  bestglm GGally caret stargazer vcd BayesTree BART monomvn gbm randomForest smoothmest plotrix  lars lasso2 glmnet \
## && installGithub.r \
##    merliseclyde/BAS \
  && rm -rf /tmp/downloaded_packages/ /tmp/*.rds
## Httr authentication uses this port
EXPOSE 1410
ENV HTTR_LOCALHOST 0.0.0.0



