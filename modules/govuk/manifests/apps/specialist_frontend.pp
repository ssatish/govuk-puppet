# == Class: govuk::apps::specialist_frontend
#
# Specialist Frontend is an app to serve specialist documents created by the
# specialist publisher app and published to content-api.
#
# === Parameters
#
# [*vhost*]
#   Virtual host used by the application.
#
# [*port*]
#   What port should the app run on?
#
# [*enabled*]
#   Whether the app is enabled in this environment.
#
class govuk::apps::specialist_frontend(
  $vhost,
  $port = '3065',
  $enabled = false,
) {

  if $enabled {
    govuk::app { 'specialist-frontend':
      app_type              => 'rack',
      port                  => $port,
      vhost_aliases         => ['private-specialist-frontend'],
      log_format_is_json    => true,
      asset_pipeline        => true,
      asset_pipeline_prefix => 'specialist-frontend',
      vhost                 => $vhost,
    }
  }
}
