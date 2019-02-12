FROM rocker/verse

RUN apt-get update -qq && apt-get -y --no-install-recommends install \
  libxml2-dev \
  libcairo2-dev \
  libsqlite-dev \
  libmariadbd-dev \
  libmariadb-client-lgpl-dev \
  libpq-dev \
  libssh2-1-dev \
  libudunits2-dev \
  gdal-bin \
  proj-bin \
  libgdal-dev \
  libproj-dev \
  libcairo2-dev \
  && install2.r --error \
    --deps TRUE \
	jetpack

COPY user-settings /home/rstudio/.rstudio/monitored/user-settings/user-settings
COPY jetpack_init.sh /home/rstudio/jetpack_init.sh

RUN chmod +x /home/rstudio/jetpack_init.sh && \
	R -e "jetpack::cli()" && \
	/home/rstudio/jetpack_init.sh

