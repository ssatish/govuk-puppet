# = Class: router::assets_origin
#
# Configure vhost for serving external-facing assets (also known as static).
#
class router::assets_origin {
  $app_domain = extlookup('app_domain')
  $vhost_name = "assets-origin.${app_domain}"

  # suspect we want `protected => false` here
  # once appropriate firewalling is in place?
  nginx::config::site { $vhost_name:
    content => template('router/assets_origin.conf.erb'),
  }

  nginx::config::ssl { $vhost_name:
    certtype => 'wildcard_alphagov'
  }

  nginx::log {
    "${vhost_name}-json.event.access.log":
      json          => true,
      logstream     => true,
      statsd_metric => "${::fqdn_underscore}.nginx_logs.assets-origin.http_%{@fields.status}";
    "${vhost_name}-error.log":
      logstream => true;
  }
}