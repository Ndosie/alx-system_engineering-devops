# Fix webstack to serve more requests

exec { 'increase limit':
  provider => shell,
  command  => 'sudo sed -i "s/ULIMIT=\"-n 15\"/ULIMIT=\"-n 1000\"/" /etc/default/nginx',
  before   => Exec['restart']
}

exce { 'restart':
  provider => shell,
  command  => 'sudo service nginx restart'
}
