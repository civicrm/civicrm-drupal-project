#!/bin/bash

## Callback used by bin/mk-drupal-site demo

pushd "${WEB_ROOT}/sites/${SITE_DIR}" >> /dev/null
  $DRUSHCLI -y updatedb
  $DRUSHCLI -y dis overlay shortcut color
  $DRUSHCLI -y en civicrm toolbar civicrmtheme
  $DRUSHCLI -y vset theme_default seven
  $DRUSHCLI -y vset civicrmtheme_theme_admin seven

  $DRUSHCLI -y en civicrm_webtest
  $DRUSHCLI -y user-create --password="$DEMO_PASS" --mail="$DEMO_EMAIL" "$DEMO_USER"
  $DRUSHCLI -y user-add-role civicrm_webtest_user "$DEMO_USER"
popd >> /dev/null
