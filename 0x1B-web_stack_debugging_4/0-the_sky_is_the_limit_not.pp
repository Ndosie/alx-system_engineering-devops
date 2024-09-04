# Fix webstack to serve more requests

exec { 'increase_limit':
  command => 'sudo sed -i "s/15/4096/" /etc/default/nginx',
  path    => '/bin'
}

exce { 'restart':
  command => 'sudo service nginx restart'
  path    => '/bin'
}
