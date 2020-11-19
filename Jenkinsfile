pipeline {
    agent any
    stage ('Build Images') {
        steps {
                sh 'docker login'
        }
    }
    stage ('Build Images') {
        steps { 
                sh 'cd frontend'
                sh 'docker build -t horners/frontend:latest .'
                sh 'cd ../backend'
                sh 'docker build -t horners/backend:latest .'
                
        }
    }
    stage ('Push Images') {
        steps {
            sh 'docker push horners/backend:latest'
            sh 'docker push horners/frontend:latest'
        }
    }
}
