class govuk::apps::specialist_publisher(
  $port = 3064,
  $vhost_protected = false,
  $enabled = false,
) {

  if str2bool($enabled) {
    govuk::app { 'specialist-publisher':
      app_type               => 'rack',
      port                   => $port,
      vhost_protected        => $vhost_protected,
      health_check_path      => '/',
      log_format_is_json     => true,
    }
  }
}