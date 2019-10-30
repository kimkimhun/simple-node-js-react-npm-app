pipeline {
    agent none
    environment {
        CI = 'true'
    }
    stages {
        stage('Test') {
            agent {
                docker {
                    image 'node:12.11.0-alpine' 
                    args '-p 3000:3000' 
                }
            }
            steps {
                sh 'yarn install'
                sh './jenkins/scripts/test.sh'
            }
        }
        stage('Build&Push Image') {
            agent any
            steps {
                sh './build-image.sh'
            }
        }
    }
}