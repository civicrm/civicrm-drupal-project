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

;****************************************
; Modules
;****************************************

projects[] = devel
