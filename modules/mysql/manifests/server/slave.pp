class mysql::server::slave {

  file { '/etc/mysql/conf.d/slave.cnf':
    source => 'puppet:///modules/mysql/etc/mysql/conf.d/slave.cnf',
    notify => Class['mysql::server::service'],
  }

}
