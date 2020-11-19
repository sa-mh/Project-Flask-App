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
                sh 'cd frontend'
                sh 'sudo docker build -t horners/frontend:latest .'
                sh 'cd ../backend'
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
