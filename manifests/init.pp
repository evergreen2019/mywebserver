# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include mywebserver
class mywebserver {
notify {"Initializing the mywebserver apache server automated configuration...":}
  class { 'mywebserver::install': }
  class { 'mywebserver::vhosts': }
#  class {'mywebserver::content':}
}
