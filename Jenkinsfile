pipeline {
    agent any
    stages {
    stage ('Docker Login') {
        steps {
                sh 'whoami'
               sh 'sudo docker login -u horners -p humboldt77'
        }
    }
    stage ('Build Images') {
        steps { 
                sh './Docker-Script.sh'  
        }
    }
    stage ('Push Images') {
        steps {
            sh 'sudo docker push horners/backend:latest'
            sh 'sudo docker push horners/frontend:latest'
        }
    }
}
}
