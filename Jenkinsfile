pipeline {
    agent {
        docker {
            image 'node:12.11.0-alpine' 
            args '-p 3000:3000' 
        }
    }
    environment {
      CI = 'true'
    }
    stages {
        stage('Build') { 
            steps {
                sh 'yarn install' 
            }
        }
        stage('Test') {
          steps {
            sh './jenkins/scripts/test.sh'
          }
        }
    }
}