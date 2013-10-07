; A drush makefile for CiviCRM.
; Call using:
; drush make --working-copy civicrm.make

; drush make API version
api = 2

; Drupal core
core = 7.x

; ****************************************
; Drupal core
; ****************************************

projects[] = drupal

; ****************************************
; CiviCRM core
; ****************************************

; IMPORTANT: replace "github.com/civicrm" by your own fork of CiviCRM.
; This will make it easier to submit pull-requests for patches.
; see: http://wiki.civicrm.org/confluence/display/CRMDOC/Github+for+CiviCRM

libraries[civicrmdrupal][destination] = modules
libraries[civicrmdrupal][directory_name] = civicrm/drupal
libraries[civicrmdrupal][download][type] = git
libraries[civicrmdrupal][download][url] = git://github.com/civicrm/civicrm-drupal.git
libraries[civicrmdrupal][download][branch] = 7.x-master
libraries[civicrmdrupal][overwrite] = TRUE

libraries[civicrmpackages][destination] = modules
libraries[civicrmpackages][directory_name] = civicrm/packages
libraries[civicrmpackages][download][type] = git
libraries[civicrmpackages][download][url] = git://github.com/civicrm/civicrm-packages.git
libraries[civicrmpackages][download][branch] = master
libraries[civicrmpackages][overwrite] = TRUE

; Download available l10n releases (may be outdated)
; libraries[civicrm_l10n][destination] = modules
; libraries[civicrm_l10n][directory_name] = civicrm/l10n/fr_CA/LC_MESSAGES/
; libraries[civicrm_l10n][download][type] = get
; libraries[civicrm_l10n][download][url] = "https://raw.github.com/civicrm/l10n/master/po/fr_CA/civicrm.mo"
; libraries[civicrm_l10n][overwrite] = TRUE

; Overwrite .mo files with latest version from SVN
; libraries[civicrm_l10n_latest][destination] = modules
; libraries[civicrm_l10n_latest][directory_name] = civicrm/l10n
; libraries[civicrm_l10n_latest][download][type] = svn
; libraries[civicrm_l10n_latest][download][url] = http://svn.civicrm.org/l10n/trunk/
; libraries[civicrm_l10n_latest][overwrite] = TRUE

libraries[civicrm][destination] = modules
libraries[civicrm][directory_name] = civicrm
libraries[civicrm][download][type] = git
libraries[civicrm][download][url] = git://github.com/civicrm/civicrm-core.git
libraries[civicrm][download][branch] = master
libraries[civicrm][overwrite] = TRUE

; ****************************************
; Runtime Modules
; ****************************************

projects[civicrm_error][subdir] = contrib
projects[civicrm_error][version] = 2.0-rc3

projects[webform][subdir] = contrib
projects[webform][version] = 3.19

projects[webform_civicrm][subdir] = contrib
projects[webform_civicrm][version] = 3.6

projects[views][subdir] = contrib
projects[views][version] = 3.7

; ****************************************
; Developer modules
; ****************************************

projects[devel][subdir] = contrib
projects[devel][version] = 1.3

libraries[civicrmdeveloper][destination] = modules
libraries[civicrmdeveloper][directory_name] = contrib/civicrm_developer
libraries[civicrmdeveloper][download][type] = git
libraries[civicrmdeveloper][download][url] = git://github.com/eileenmcnaughton/civicrm_developer.git
libraries[civicrmdeveloper][download][branch] = master
libraries[civicrmdeveloper][overwrite] = TRUE
