ARG BASE_IMAGE
FROM $BASE_IMAGE

# Build and install the GEOS PHP extension.
# See https://git.osgeo.org/gitea/geos/php-geos
RUN apt-get update && apt-get install -y php7.4-dev libgeos-dev \
  && curl -fsSL 'https://git.osgeo.org/gitea/geos/php-geos/archive/1.0.0.tar.gz' -o php-geos.tar.gz \
  && tar -xzf php-geos.tar.gz \
  && rm php-geos.tar.gz \
  && ( \
    cd php-geos \
    && ./autogen.sh \
    && ./configure \
    && make \
    && make install \
  ) \
  && rm -r php-geos
