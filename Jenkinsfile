node{  echo 'running puppet agent on puppet-server'
   sh 'hostname'
   sh 'id'
   sh '/var/lib/jenkins/customscripts/puppetjob.sh'
    }

node ('puppet-agent') {
   stages {
        stage('run agent') {
            steps {
               echo 'running puppet agent on puppet-agent'
               sh 'hostname'
               sh 'id'
               sh 'sudo /opt/puppetlabs/bin/puppet agent -t'
            }
        }
    }
    post { 
        always { 
            echo 'completed'
        }
    }
   }
