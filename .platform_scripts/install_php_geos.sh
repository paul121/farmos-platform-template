run() {
    # Check if php-geos is cached.
    cache_folder="${PLATFORM_CACHE_DIR}/php-geos"
    if [ ! -f "$cache_folder/modules/geos.so" ];
    then
        install_php_geos
    else
        copy_php_geos_from_cache
    fi
}

install_php_geos() {
  echo "Installing php-geos"

  # Configure environment vars using the path brew installed geos.
  load_brew
  export GEOS_LIBRARY_PATH=$(brew --prefix geos)

  # Add flags so the linker uses this path for libgeos.so
  export LDFLAGS="-L$(brew --prefix geos)/lib -Wl,--rpath -Wl,$(brew --prefix geos)/lib"

  # Get php-geos and build in /app/php-geos
  git clone https://git.osgeo.org/gitea/geos/php-geos.git \
    && ( \
      cd php-geos \
      && git checkout e77d5a16abbf89a59d947d1fe49381a944762c9d \
      && ./autogen.sh \
      && ./configure \
      && make
    )

  copy_php_geos_to_cache
}

copy_php_geos_to_cache() {
    echo "Copy php-geos to cache..."
    cp -Rf $PLATFORM_APP_DIR/php-geos $PLATFORM_CACHE_DIR
}

copy_php_geos_from_cache() {
    echo "Copy php-geos from cache..."
    cp -Rf $PLATFORM_CACHE_DIR/php-geos $PLATFORM_APP_DIR
}

load_brew() {
    eval $(/app/.linuxbrew/bin/brew shellenv)
    brew analytics off
}

run
