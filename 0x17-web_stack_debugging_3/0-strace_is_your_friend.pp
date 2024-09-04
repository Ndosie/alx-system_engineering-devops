# find why apache is returning 500 error and fix the issue

exec { 'Fix wordpress settings file':
  command => "sed -i 's/.phpp/.php/' /var/www/html/wp-settings.php",
  path    => '/bin'
}
