# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
class mywebserver::content {
  $vfqdn = $facts['fqdn']
  Notify{'Writing eBiz content files..':}
  file{'/var/www/html/ebiz':
    ensure => 'directory',
    owner => 'www-data',
    group => 'www-data',
    mode => '0774',
  }
  file{'servid.html':
    content => "This page is hosted in $vfqdn",
    path=>'/var/www/html/ebiz/servid.html',
    owner => 'www-data',
    group => 'www-data',
    mode => '0744',
  }
  file{'index.html':
   # content => "Welcome to Default E-Biz hosting page: please contact E-BIZ infrastructire group for next steps..",
    source => 'puppet:///modules/ebizapache/index.html',
    path=>'/var/www/html/ebiz/index.html',
    owner => 'www-data',
    group => 'www-data',
    mode => '0744',
  }
  
}
