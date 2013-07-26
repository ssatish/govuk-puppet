# == Class: nagios::client::check_upstart_status
#
# Install a Nagios plugin that can alert when upstart is down
#
class nagios::client::check_upstart_status {

  ensure_packages(['dbus'])

  @nagios::plugin { 'check_upstart_status':
    source  => 'puppet:///modules/nagios/usr/lib/nagios/plugins/check_upstart_status',
  }

  @nagios::nrpe_config { 'check_upstart_status':
    source  => 'puppet:///modules/nagios/etc/nagios/nrpe.d/check_upstart_status.cfg',
  }
}