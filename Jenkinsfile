pipeline {
    agent any
    stages {
    stage ('Docker Login') {
        steps {
               sudo sh 'docker login -u horners -p humboldt77'
        }
    }
    stage ('Build Images') {
        steps { 
                sudo sh 'cd frontend'
                sudo sh 'docker build -t horners/frontend:latest .'
                sudo sh 'cd ../backend'
                sudo sh 'docker build -t horners/backend:latest .'
                
        }
    }
    stage ('Push Images') {
        steps {
            sudo sh 'docker push horners/backend:latest'
            sudo sh 'docker push horners/frontend:latest'
        }
    }
}
}
