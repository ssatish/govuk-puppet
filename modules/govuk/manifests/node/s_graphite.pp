class govuk::node::s_graphite inherits govuk::node::s_base {
  govuk::mount { '/opt/graphite':
    nagios_warn  => 10,
    nagios_crit  => 5,
    mountoptions => 'defaults',
    disk         => '/dev/sdb1',
  }

  # FIXME: Remove tidyup resources.
  exec { 'stop-old_carbon_aggregator':
    command => 'stop carbon_aggregator && rm /etc/init/carbon_aggregator.conf',
    onlyif  => 'test -f /etc/init/carbon_aggregator.conf',
  } ->
  exec { 'stop-old-carbon_cache':
    command => 'stop carbon_cache && rm /etc/init/carbon_cache.conf',
    onlyif  => 'test -f /etc/init/carbon_cache.conf',
  } ->
  exec { 'stop_old_graphite':
    command => 'stop graphite && rm /etc/init/graphite.conf',
    onlyif  => 'test -f /etc/init/graphite.conf',
  } ->
  package { ['python-whisper', 'python-carbon', 'python-graphite']:
    ensure => absent,
  } ->

  class { 'graphite':
    port                       => '33333',
    carbon_aggregator          => true,
    aggregation_rules_source   => 'puppet:///modules/govuk/node/s_graphite/aggregation-rules.conf',
    storage_aggregation_source => 'puppet:///modules/govuk/node/s_graphite/storage-aggregation.conf',
    storage_schemas_source     => 'puppet:///modules/govuk/node/s_graphite/storage-schemas.conf',
    carbon_source              => 'puppet:///modules/govuk/node/s_graphite/carbon.conf',
    require                    => Govuk::Mount['/opt/graphite'],
  }

  @@nagios::check { "check_carbon_cache_running_on_${::hostname}":
    check_command       => 'check_nrpe!check_proc_running!carbon-cache',
    service_description => 'carbon-cache running',
    host_name           => $::fqdn,
  }

  @@nagios::check { "check_carbon_aggregator_running_on_${::hostname}":
    check_command       => 'check_nrpe!check_proc_running!carbon-aggregat',
    service_description => 'carbon-aggregator running',
    host_name           => $::fqdn,
  }

  @ufw::allow {
    'allow-graphite-2003-from-all':
      port => 2003;
    'allow-graphite-2004-from-all':
      port => 2004;
    'allow-graphite-7002-from-all':
      port => 7002;
  }

  include ::nginx

  nginx::config::vhost::proxy { 'graphite':
    to        => ['localhost:33333'],
    root      => '/opt/graphite/webapp',
    aliases   => ['graphite.*'],
    protected => str2bool(extlookup('monitoring_protected','yes')),
  }

  include collectd::server
}
