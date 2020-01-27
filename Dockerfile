FROM cyversevice/rstudio-geospatial:latest
MAINTAINER "Ryan Bartelme rbartelme@email.arizona.edu"
#This image builds off of Rocker geospatial and Tyson Swetnam's VICE configuration
#incorporates rTassel for combining GWAS and geospatial analyses

RUN Rscript -e 'install.packages("rJava", repos="http://rforge.net")'
RUN Rscript -e 'install.packages("rsnps")'
RUN R -e 'devtools::install_bitbucket(repo = "bucklerlab/rtassel", ref = "master", build_vignettes = TRUE)'

java -Xmx12G com.xyz.TheClassName

