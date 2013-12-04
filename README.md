# civicrm-drupal-project

This project is a template which you can use to prepare a useful CiviCRM
development environment.

## Installation: Quickstart (PHP 5.4+ built-in webserver)

```bash
git clone https://github.com/civicrm/civicrm-drupal-project.git -b 7.x-master
cd civicrm-drupal-project/bin
./civi-download
./civi-drupal-startup
```

The final command will print out URLs and credentials for accessing the
instance of CiviCRM/Drupal.

## Installation: Apache/nginx

Alternatively, if you have a proper web server, you can use it:

```bash
git clone https://github.com/civicrm/civicrm-drupal-project.git -b 7.x-master
cd civicrm-drupal-project/bin/
./civi-download
./civi-install drupal-demo http://localhost civid7
```
(Note: The last command should be adjusted to your local system. It takes the form: "civi-install drupal-demo [demo-site-url] [demo-db-name]"

Now update the Apache/nginx configuration and create a matching virtual host (e.g.
named "cividrupal.localhost" with a DocumentRoot "/absolute/path/to/civicrm-drupal-project/web").
Restart Apache/nginx.

## Installation: CLI Tools

The project bundles in several useful command-line tools (such as composer,
drush/wp-cli, and civix). It will be handy to add these to your PATH:

```bash
export PATH=/path/to/civicrm-drupal-project/bin:$PATH
```

(Note: Adjust as needed for your filesystem.) To automatically set this up
again each time you login, add the statement to ~/.bashrc or ~/.profile .

If you have already installed these tools or don't want them, then
simply skip this step.

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
