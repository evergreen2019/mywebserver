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
    content => "<head>  <style>    div {      padding: 16px;      background-color: #00FF00;    }  </style></head><body>  <div>    <h1>This page is hosted in mahendra`s server: $vfqdn <b>This is new change</b></h1>  </div>
    <p>Today is good day and tomorrow will be better</p></body></html>",
    path=>'/var/www/html/mahendra/servid.html',
    owner => 'www-data',
    group => 'www-data',
    mode => '0744',
  }

  
}
