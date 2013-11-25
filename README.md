# civicrm-drupal-project

This project is a template which you can use to prepare a useful CiviCRM
development environment.

## Installation

```bash
git clone https://github.com/civicrm/civicrm-drupal-project.git -b 7.x-master
cd civicrm-drupal-project/bin/
./civi-download
./civi-install drupal-demo http://localhost civid7
```

At this point, it is a good idea to add the "bin" directory to your path, e.g.

```bash
export PATH=/path/to/civicrm-drupal-project/bin:$PATH
```

(Note: Adjust as needed for your filesystem.) To automatically set this up
again each time you login, add the statement to ~/.bashrc or ~/.profile .

## Forking

If you plan to do development with CiviCRM and Drupal 7.x, then you should
register for an account on github.com and fork the following projects:

 * https://github.com/civicrm/civicrm-drupal-project
 * https://github.com/civicrm/civicrm-core
 * https://github.com/civicrm/civicrm-drupal
 * https://github.com/civicrm/civicrm-packages

Then update your workstation to link with the new forks:

```bash
./civi-remotes https://github.com/MYUSER https://github.com/civicrm
```
