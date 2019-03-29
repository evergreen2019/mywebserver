# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include mywebserver::vhosts
class mywebserver::vhosts(
$app_vhosts,)
{
class {apache::vhosts:
    vhosts  => $app_vhosts,
  }
}
