<?php
/**
 * @file
 * The router.php for clean-urls when use PHP 5.4.0 built in webserver.
 *
 * Usage:
 *
 * php -S localhost:8888 .htrouter.php
 *
 */
$url = parse_url($_SERVER["REQUEST_URI"]);
if (file_exists('.' . $url['path'])) {
  // Serve the requested resource as-is.
  return FALSE;
}
// Remove opener slash.
$_GET['q'] = substr($url['path'], 1);
include 'index.php';
