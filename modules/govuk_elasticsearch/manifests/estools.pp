# == Class: govuk_elasticsearch::estools
#
# Install the estools package (which we maintain, see
# https://github.com/alphagov/estools).
class govuk_elasticsearch::estools {
  package { 'estools':
    ensure   => '1.1.1',
    provider => 'pip',
  }
}
