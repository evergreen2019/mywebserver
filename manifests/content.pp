# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
class mywebserver::content {
  $vfqdn = $facts['fqdn']
  Notify{'Writing mahendra content files..':}
  file{'/var/www/html/mahendra':
    ensure => 'directory',
    owner => 'www-data',
    group => 'www-data',
    mode => '0774',
  }
  file{'servid.html':
    content => "This page is hosted in mahendra`s server: $vfqdn",
    path=>'/var/www/html/mahendra/servid.html',
    owner => 'www-data',
    group => 'www-data',
    mode => '0744',
  }

  
}
