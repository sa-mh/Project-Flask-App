pipeline {
    agent any
    stages {
    stage ('Docker Login') {
        steps {
                sh 'whoami'
               sh 'sudo docker login -u horners -p ProjectPassword'
        }
    }
    stage ('Build Images') {
        steps { 
                sh 'bash ./Docker-Script.sh'  
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
