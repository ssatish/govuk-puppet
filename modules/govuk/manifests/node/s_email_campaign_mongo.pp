# == Class: govuk::node::s_email_campaign_mongo
#
# MongoDB node for email-campaign
#
class govuk::node::s_email_campaign_mongo inherits govuk::node::s_base {
  include mongodb::server

  collectd::plugin::tcpconn { 'mongo':
    incoming => 27017,
    outgoing => 27017,
  }

  Govuk::Mount['/var/lib/mongodb'] -> Class['mongodb::server']
  Govuk::Mount['/var/lib/automongodbbackup'] -> Class['mongodb::backup']
}
