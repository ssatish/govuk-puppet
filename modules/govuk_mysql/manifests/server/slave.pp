# == Class: govuk_mysql::server::slave
#
# Set up a mysql slave
#
class govuk_mysql::server::slave {

  include ::govuk_mysql::server::monitoring::slave

  file { '/etc/mysql/conf.d/slave.cnf':
    source => 'puppet:///modules/govuk_mysql/etc/mysql/conf.d/slave.cnf',
    notify => Class['mysql::server::service'],
  }

}
