pipeline {
    agent any
    stages {
        stage ('Test the images'){
            steps {
                sh 'bash ./jenkins-ssh.sh'    
            }
        }
        stage ('Host on kubers'){
            steps {
                sh 'bash ./kubers-host.sh'
            }
        }
}
}
