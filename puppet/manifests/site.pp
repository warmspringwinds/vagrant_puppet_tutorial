node 'test' {

  class { 'mysql::server':
    root_password => 'test'
  }

  class { '::mysql::bindings':
    php_enable => 1
  }

  # Configuring apache

  class { 'apache':
    mpm_module => 'prefork'
  }

  include apache::mod::php

  file { '/var/www':
    ensure => 'link',
    target => '/vagrant/site',
    force => true
  }
  
}
