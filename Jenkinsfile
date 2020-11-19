pipeline {
    agent any
    stages {
    stage ('Docker Login') {
        steps {
                sh 'whoami'
               sh 'sudo docker login'
        }
    }
    stage ('Build Images') {
        steps { 
                sh 'sudo cd frontend'
                sh 'sudo docker build -t horners/frontend:latest .'
                sh 'sudo cd ../backend'
                sh 'sudo docker build -t horners/backend:latest .'
                
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
