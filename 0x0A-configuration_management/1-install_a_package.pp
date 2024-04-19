# Ensure the package 'python3-pip' is installed
package { 'python3-pip':
  ensure => installed,
}

# Execute pip3 to install Flask version 2.1.0
exec { 'install_flask':
  command => '/usr/bin/pip3 install Flask==2.1.0',
  # Specify that the command should only run if Flask 2.1.0 is not already installed
  unless  => '/usr/bin/pip3 show Flask | grep -q "Version: 2.1.0"',
  require => Package['python3-pip'],  # Ensure python3-pip is installed first
}
