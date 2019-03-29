include apache
class mywebserver::install {
  notify {'Installing apache software..':}

  class { '::apache':
    default_mods => true,
    mpm_module => 'worker',
    default_vhost => false,
    default_charset => 'utf-8',
    server_tokens => 'prod',
    server_signature => 'off',
    trace_enable => 'off',

  }
 # apache::mod { 'weblogic_module':
 #   path => '/etc/httpd/add_modules/mod_wl_24.so',
 #   id   => 'weblogic_module',
 # }

}
