# == Class: govuk::node::s_api_mongo
#
# api-mongo node
#
class govuk::node::s_api_mongo inherits govuk::node::s_base {
  include mongodb::server

  collectd::plugin::tcpconn { 'mongo':
    incoming => 27017,
    outgoing => 27017,
  }

  Govuk::Mount['/var/lib/mongodb'] -> Class['mongodb::server']
  Govuk::Mount['/var/lib/automongodbbackup'] -> Class['mongodb::backup']
}
