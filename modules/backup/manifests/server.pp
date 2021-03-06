# == Class: backup::server
#
# Configures the on-site backup server.
#
# === Parameters
#
# [*backup_private_key*]
#   SSH RSA private key for use by client machines when pushing backups to the
#   on-site backup server.
#
#   Default: ''
#
class backup::server (
  $backup_private_key = '',
) {

  include backup::client

  file { '/etc/backup':
    ensure  => directory,
    owner   => 'govuk-backup',
    mode    => '0700',
    recurse => true,
    purge   => true,
    force   => true,
  }

  file { ['/data/backups',
          '/data/backups/archived']:
    ensure => directory,
    owner  => 'govuk-backup',
    mode   => '0700',
  }

  # Parent dir is provided by govuk::user in backup::client.
  file {'/home/govuk-backup/.ssh/id_rsa':
    ensure  => file,
    owner   => 'govuk-backup',
    mode    => '0600',
    content => $backup_private_key,
    require => Class['backup::client'],
  }

  cron { 'cron_govuk-backup_daily':
    command => 'run-parts /etc/backup',
    user    => 'govuk-backup',
    hour    => '7',
    minute  => '0',
  }

  Backup::Directory   <<||>> { }
}
