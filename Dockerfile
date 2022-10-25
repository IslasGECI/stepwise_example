FROM islasgeci/base:latest
COPY . /workdir
RUN Rscript -e "install.packages(c('rjson'), repos='http://cran.rstudio.com')"