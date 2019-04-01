
   node{  echo 'running puppet agent on puppet-server'
   sh 'hostname'
   sh 'id'
   sh '/var/lib/jenkins/customscripts/puppetjob.sh'
    }



node ('puppet-agent') {
   
    stage('Runagent') {
        try {
           echo 'running puppet agent on puppet-agent'
           sh 'hostname'
           sh 'id'
           sh 'sudo /opt/puppetlabs/bin/puppet agent -t'
            sh 'exit 1'
        }
        catch (exc) {
            echo 'Something failed, I should sound the klaxons!'
           
        }
    }
               
    }

