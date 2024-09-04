# Fix webstack to serve more requests

exec { 'increase_limit':
  command => 'sudo sed -i "s/15/1000/" /etc/default/nginx',
  path    => '/usr/local/bin/:/bin/'
}

-> exce { 'restart':
  command => 'sudo service nginx restart'
  path    => '/etc/init.d/'
}
