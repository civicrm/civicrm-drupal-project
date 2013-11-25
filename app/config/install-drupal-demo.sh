#!/bin/bash

## Setup a CiviCRM-Drupal demo site. (For use with "civi-install")
##
## usage: civi-install drupal-demo <url> <db-name>
## usage: civi-install drupal-demo http://localhost:8181 cividrupal

## Drop/create MySQL DB & user
mysql_dropcreate

## (Re)Create WP config files, tables, and data dirs
drupal_install

## (Re)create CiviCRM config files, tables, and data dirs
civicrm_install

pushd "${WEB_ROOT}/sites/${SITE_DIR}" >> /dev/null
  drush -y updatedb
  drush -y dis overlay shortcut color
  drush -y en civicrm toolbar civicrmtheme
  drush -y vset theme_default seven
  drush -y vset civicrmtheme_theme_admin seven

  drush -y en civicrm_webtest
  drush -y user-create --password="$DEMO_PASS" --mail="$DEMO_EMAIL" "$DEMO_USER"
  drush -y user-add-role civicrm_webtest_user "$DEMO_USER"
popd >> /dev/null
