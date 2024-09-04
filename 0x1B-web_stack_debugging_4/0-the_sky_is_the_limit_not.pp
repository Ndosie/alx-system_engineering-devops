# Fix webstack to serve more requests

exec { 'increase_limit':
  provider => shell,
  command  => 'sudo sed -i "s/15/4096/" /etc/default/nginx',
  before   => Exec['restart']
}

exce { 'restart':
  provider => shell,
  command  => 'sudo service nginx restart'
}
