#!/usr/bin/env bash
#
# We don't want to run drush commands if drupal isn't installed.
# Similarly, we don't want to attempt to run config-import if there aren't any config files to import
# @todo expand further to pass --uri for all sites, with an eye towards multisite
#


if [ -n "$(drush status bootstrap)" ]; then
  drush -y cache-rebuild
  drush -y updatedb
  if [ -n "$(ls $(drush php:eval "echo realpath(Drupal\Core\Site\Settings::get('config_sync_directory'));")/*.yml 2>/dev/null)" ]; then
    drush -y config-import
  else
    echo "No config to import. Skipping."
  fi
else
  echo "Drupal not installed. Skipping standard Drupal deploy steps"

  # Install farmOS if variables are provided.
  INSTALL=$(echo $PLATFORM_VARIABLES | base64 --decode | jq -r '.farm_site_info.install // "false"')
  if [ $INSTALL = true ]; then
	  echo "Installing farmOS."
	  SITE_NAME=$(echo $PLATFORM_VARIABLES | base64 --decode | jq -r '.farm_site_info.site_name // "farmOS"')
	  SITE_MAIL=$(echo $PLATFORM_VARIABLES | base64 --decode | jq -r '.farm_site_info.site_mail // "admin@example.com"')
	  ACCOUNT_MAIL=$(echo $PLATFORM_VARIABLES | base64 --decode | jq -r '.farm_site_info.account_mail // "admin@example.com"')
	  drush site:install --yes --site-name="$SITE_NAME" --site-mail="$SITE_MAIL" --account-mail="$ACCOUNT_MAIL" farm farm.modules=default
  fi
fi
