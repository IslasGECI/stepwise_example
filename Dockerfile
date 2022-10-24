FROM islasgeci/base:latest
COPY . /workdir
RUN Rscript -e "install.packages(c('covr','DT', 'rjson', 'styler'), repos='http://cran.rstudio.com')"