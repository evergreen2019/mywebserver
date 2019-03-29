# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include mywebserver
class mywebserver {
notify {"Initializing the mywebserver apache webserver configuration...":}
 # class { 'mywebserver::install': }
 # class { 'mywebserver::vhost': }
 # class {'mywebserver::content':}
}
