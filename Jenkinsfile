node {
   echo 'running puppet agent on puppet-server'
   sh '$hostname'
   sh 'id'
   sh 'cd /tmp/backups/'
   sh 'rm -rf /tmp/backups/mywebserver_bkp'
   sh 'mv /etc/puppetlabs/code/environments/production/modules/mywebserver ./mywebserver_bkp'
   sh 'cd /etc/puppetlabs/code/environments/production/modules'
   }

node ('puppet-agent') {
    echo 'running puppet agent on puppet-server'
    sh 'sudo /opt/puppetlabs/bin/puppet agent -t'
}
