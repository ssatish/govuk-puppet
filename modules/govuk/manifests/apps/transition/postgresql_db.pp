class govuk::apps::transition::postgresql_db ( $postgresql_password = '' ){
  govuk_postgresql::db { 'transition_production':
    user                    => 'transition',
    password                => $postgresql_password,
    extensions              => ['plpgsql', 'pgcrypto'],
    allow_auth_from_backend => true,
  }
}