pipeline {
  agent {
    docker {
      image 'nodes:6-alpine'
      args '-p 3000:3000'
    }

    stages {
      stage('Build') {
        steps {
          sh 'npm install'
        }
      }
    }
  }
}