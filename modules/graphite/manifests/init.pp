class graphite {

  include pip
  include gunicorn
  include apache::remove

  anchor { 'graphite::begin':
    notify => Class['graphite::service'];
  }

  class { 'graphite::package':
    require => Anchor['graphite::begin'],
    notify  => Class['graphite::service'];
  }

  class { 'graphite::config':
    require   => Class['graphite::package'],
    notify    => Class['graphite::service'];
  }

  class { 'graphite::firewall':
    require => Class['graphite::config'],
  }

  class { 'graphite::service':
    notify => Anchor['graphite::end'],
  }

  class { 'graphite::nginx': }

  anchor { 'graphite::end':
    require => Class[
      'graphite::firewall',
      'graphite::nginx'
    ],
  }

}
