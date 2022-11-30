ARG BASE_IMAGE
FROM $BASE_IMAGE

# Build and install the GEOS PHP extension.
# See https://git.osgeo.org/gitea/geos/php-geos
RUN apt-get update && apt-get install -y php8.1-dev libgeos-dev \
  && git clone https://git.osgeo.org/gitea/geos/php-geos.git \
  && ( \
    cd php-geos \
    # Checkout latest commit with PHP 8 support.
    && git checkout e77d5a16abbf89a59d947d1fe49381a944762c9d \
    && ./autogen.sh \
    && ./configure \
    && make \
    && make install \
  ) \
  && rm -r php-geos
